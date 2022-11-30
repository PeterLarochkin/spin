/* 
Переправа: женихи и невесты.
= Система =

На левом берегу реки стоят три пары, 
в каждой паре - жених и невеста. 
Все они хотят переправиться на правый берег, 
имея на всех одну лодку, вмещающую двоих.

A находится рядом с B, если
* они оба стоят на одном берегу;
* они оба находятся в лодке;
* один из них стоит на берегу, 
	а второй - в лодке у того же берега.
Во всех остальных случаях они далеко друг от друга.

Женихи ужасно ревнивы: невесте категорически запрещено быть рядом с чужим женихом, если её жених далеко.

= Свойства =

1. Можно переправить всех на правый берег.
2. Можно переправить всех на правый берег за 11 плаваний.
3. Можно переправить всех на правый берег за 10 плаваний.
4. Чтобы всем переправиться на правый берег, обязательно нужно в некоторый момент времени расположить всех женихов рядом, и всех невест - далеко от них.

*/

#define SUCCESS ((wedding[0]==true) && (wedding[1]==true) && (wedding[2]==true) && (wedding[3]==true) && (wedding[4]==true) && (wedding[5]==true))
#define isWoman ((pair_index == 1) || (pair_index == 3)|| (pair_index == 5))
#define violation (!( ( !(!wedding[1]) /* impl */ ||(wedding[2]&&wedding[4]||!wedding[0]))&& \
					(  !(!wedding[3]) /* impl */ ||(wedding[0]&&wedding[4]||!wedding[2]))&& \
					(  !(!wedding[5]) /* impl */ ||(wedding[0]&&wedding[2]||!wedding[4]))&& \
					(  (!wedding[1]) /* impl */ ||(!wedding[2]&&!wedding[4]||wedding[0]))&& \
					(  (!wedding[3]) /* impl */ ||(!wedding[0]&&!wedding[4]||wedding[2]))&& \
					(  (!wedding[5]) /* impl */ ||(!wedding[0]&&!wedding[2]||wedding[4])))) 




bool boat_state = false; // false -- left, true -- right
bool boat_free_space = true; // false -> 1, true -> 2
bool wedding[6] = false; // false -> левый берег, true -> правый
bool turn = true;
bool local_turn = true;
bool final = false;
int index_last_boater = -1; // индекс соседа в лодке
byte count = 0; // количество плаваний


proctype Chosed(int pair_index) {

	do
	:: 	atomic {turn && !final && SUCCESS ->
		turn = false;}
		final = true;

	/* на берегу */	
	:: 	atomic {
		!final && 
		turn && 
		boat_free_space && 
		wedding[pair_index] == boat_state &&
		(
			/* если я девушка, нужно убедиться, что нет чужих женихов на другом берегу или есть мой */
			isWoman &&
			   ( 
				(wedding[0]!=!boat_state)&&
				(wedding[2]!=!boat_state)&&
				(wedding[4]!=!boat_state) ||
				(wedding[pair_index - 1]==!boat_state)) ||
			/* если я парень, нужно убедиться, что все "тамошние" девушки с женихами или там есть только моя невеста // и моя не остается с чужими женихами*/
			!isWoman && (
				(!(wedding[1]==!boat_state) /*impl*/ ||(wedding[0]==!boat_state))&&
				(!(wedding[3]==!boat_state) /*impl*/ ||(wedding[2]==!boat_state))&&
				(!(wedding[5]==!boat_state) /*impl*/ ||(wedding[4]==!boat_state))||

				(wedding[pair_index + 1]==!boat_state)&&
				(
					(!((pair_index + 1)!=1) /*impl*/ ||(wedding[1]!= !boat_state))&&
					(!((pair_index + 1)!=3) /*impl*/ ||(wedding[3]!= !boat_state))&&
					(!((pair_index + 1)!=5) /*impl*/ ||(wedding[5]!= !boat_state))
				)
				
				 //&&
				// (
				// 	/* добавлена импликация потому что "я" могу занулить */
				// 	(!(0!=!pair_index) || (wedding[0]!=boat_state))&&
				// 	(!(2!=!pair_index) || (wedding[2]!=boat_state))&&
				// 	(!(4!=!pair_index) || (wedding[4]!=boat_state))
				// )
			)
		) -> 
			turn = false; }
			local_turn = true;
			index_last_boater = pair_index;
			wedding[pair_index] = !boat_state;
			boat_free_space = false;
			turn = true;
	/* принято решение уехать с этого берега в одиночку, если правила не нарушаются*/
	::  atomic {
		!final &&
		turn &&
		index_last_boater == pair_index &&
		!violation &&
		!boat_free_space ->
		turn = false; }
		boat_free_space = true;
		index_last_boater = -1;
		boat_state = !boat_state;
		count++;
		turn = true;
	/* принято решение отправить (если можно, еще кого-то) */
	:: 	atomic {
		wedding[pair_index] == boat_state &&
		!final && 
		turn &&
		!boat_free_space && 
		(
			/* если я девушка, нужно убедиться, что нет чужих женихов на другом берегу или есть мой*/
			isWoman &&
			   ( 
				(wedding[0]!=!boat_state)&&
				(wedding[2]!=!boat_state)&&
				(wedding[4]!=!boat_state) ||
				(wedding[pair_index - 1]==!boat_state))&&
				/* к тому же еще нужно убедиться что сосед по лодке не чужой жених */
			   (
				(index_last_boater!=0)&&
				(index_last_boater!=2)&&
				(index_last_boater!=4) ||
				index_last_boater == (pair_index - 1)
			   )&& !violation ||

			/* если жених меня оставил с чужими женихами мне нужно быть на другом берегу!*/
			isWoman && (index_last_boater == (pair_index - 1)) &&
			(wedding[pair_index] == wedding[0] || wedding[pair_index] == wedding[2] || wedding[pair_index] == wedding[4])||

			/* если я парень, нужно убедиться, что (все "тамошние" девушки с женихами или только моя там) и моя не остается с чужими женихами если она осталась*/
			!isWoman && (
				(
					(!(wedding[1]==!boat_state) /*impl*/ ||(wedding[0]==!boat_state))&&
					(!(wedding[3]==!boat_state) /*impl*/ ||(wedding[2]==!boat_state))&&
					(!(wedding[5]==!boat_state) /*impl*/ ||(wedding[4]==!boat_state))||

					(wedding[pair_index + 1]==!boat_state)&&
					(
						(!((pair_index + 1)!=1) /*impl*/ ||(wedding[1]!= !boat_state))&&
						(!((pair_index + 1)!=3) /*impl*/ ||(wedding[3]!= !boat_state))&&
						(!((pair_index + 1)!=5) /*impl*/ ||(wedding[5]!= !boat_state))
					)
				)&&
				(
					
					( !(wedding[pair_index + 1]== boat_state) /*impl*/ || !(0!=!pair_index) /*impl*/ ||(wedding[0]!=boat_state))&&
					( !(wedding[pair_index + 1]== boat_state) /*impl*/ || !(2!=!pair_index) /*impl*/ ||(wedding[2]!=boat_state))&&
					( !(wedding[pair_index + 1]== boat_state) /*impl*/ || !(4!=!pair_index) /*impl*/ ||(wedding[4]!=boat_state))
				)&&
				/* к тому же еще нужно убедиться что сосед по лодке не чужая невеста или моя невеста */
				((index_last_boater!=1)&&
				(index_last_boater!=3)&&
				(index_last_boater!=5) ||
				(index_last_boater == (pair_index + 1)))
			)
		) ->
		turn = false; }
		boat_free_space = true;
		index_last_boater = -1;
		wedding[pair_index] = !boat_state;
		boat_state = !boat_state;
		count++;
		turn = true;
	// for debug	
	// :: !final &&
	// 	turn 
	od
}

active proctype P() { 
	run Chosed(0);
	run Chosed(1); 
	run Chosed(2);
	run Chosed(3);
	run Chosed(4);
	run Chosed(5);  
}



// 1. Можно переправить всех на правый берег.
ltl f0 { always (!SUCCESS) } 

// 2. Можно переправить всех на правый берег за 11 плаваний.
ltl f1 { always (!(SUCCESS && count == 11 && final)) } 

// 3. Можно переправить всех на правый берег за 10 плаваний.
ltl f2 { always (!(SUCCESS && count == 10 && final) ) }

// 4. Чтобы всем переправиться на правый берег, 
// обязательно нужно в некоторый момент времени расположить всех женихов рядом, 
/// и всех невест - далеко от них.

ltl f3 { 
!(
	!(
		/* 
		1. женихи рядом на левом берегу, а все невесты на правом
		или
		2. невесты рядом на левом берегу, а все женихи на правом
		*/
		wedding[0]&&wedding[1]&&wedding[2]&&!wedding[3]&&!wedding[4]&&!wedding[5]||
		!wedding[0]&&!wedding[1]&&!wedding[2]&&wedding[3]&&wedding[4]&&wedding[5]
	) 
	until SUCCESS) 
}

