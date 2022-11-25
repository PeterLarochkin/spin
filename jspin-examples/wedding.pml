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

// поставить acceptance

#define SUCCESS (wedding[0] == right_bank) && \
				(wedding[1] == right_bank) && \
				(wedding[2] == right_bank) && \
				(wedding[3] == right_bank) && \
				(wedding[4] == right_bank) && \
				(wedding[5] == right_bank)



mtype {left_bank, on_boat, right_bank}

int boat_seats[2] = -1;
bool boat_state = false; // false -- left, true -- right
bool is_boat_in_center = false;
mtype wedding[6] = left_bank;
bool turn = true;
bool local_turn = true;
byte count = 0;

proctype Chosed(int pair_index; bool isWoman) {

	do 
	/* кейс посадки */
	:: 	atomic { 
			turn && 
			isWoman && 
			!is_boat_in_center &&
			(
				(wedding[pair_index+1] == left_bank && !boat_state) || (wedding[pair_index+1] == right_bank && boat_state)
				) && 
			(boat_seats[0] == -1 || boat_seats[1] == -1) 
			->
			turn = false
		};
			wedding[pair_index+1] = on_boat;
			local_turn = true;
			if 
			:: boat_seats[0] == -1 && boat_seats[1] == -1 && local_turn -> boat_seats[0] = pair_index+1; local_turn = false
			:: boat_seats[0] != -1 && boat_seats[1] == -1 && local_turn -> boat_seats[1] = pair_index+1; local_turn = false
			:: boat_seats[0] == -1 && boat_seats[1] != -1 && local_turn -> boat_seats[0] = pair_index+1; local_turn = false
			fi;
			local_turn = true;
			turn = true
	
	/* кейс посадки */
	:: 	atomic { 
			turn && 
			!isWoman && 
			!is_boat_in_center &&
			(
				(wedding[pair_index] == left_bank && !boat_state) || (wedding[pair_index] == right_bank && boat_state)
				) && 
			(boat_seats[0] == -1 || boat_seats[1] == -1) 
			->
			turn = false
		};
			wedding[pair_index] = on_boat;
			local_turn = true;
			if 
			:: boat_seats[0] == -1 && boat_seats[1] == -1 && local_turn -> boat_seats[0] = pair_index; local_turn = false
			:: boat_seats[0] != -1 && boat_seats[1] == -1 && local_turn -> boat_seats[1] = pair_index; local_turn = false
			:: boat_seats[0] == -1 && boat_seats[1] != -1 && local_turn -> boat_seats[0] = pair_index; local_turn = false
			fi;
			local_turn = true;
			turn = true
	
	/* кейс выхода в открытую реку */
	:: 	atomic { 	
			turn && isWoman &&  
			!is_boat_in_center &&
			(wedding[pair_index + 1] == on_boat) 
			-> turn = false 
		};
		
		/* нужно выйти в открытую часть */
		/* 
		Нужно проверить перед выходом в открытую часть
		1. В лодке нет чужих женихов или есть мой жених
		2. На берегу выполняются условия (невесты одни 2.1 или каждая невеста не видит другого жениха на том же берегу 2.2)
		*/
		local_turn = true;
		if 
			/* 1 */
		:: local_turn && (wedding[0] != on_boat && 
			wedding[2] != on_boat && 
			wedding[4] != on_boat ||
			wedding[pair_index] == on_boat) && 
		    (
				/* 2.1 */
				!boat_state && 
				(wedding[0] != left_bank && 
				wedding[2] != left_bank && 
				wedding[4] != left_bank) ||

				boat_state && 
				(wedding[0] != right_bank && 
				wedding[2] != right_bank && 
				wedding[4] != right_bank) ||

				/* 2.2 */
				!boat_state && 
				/* ladies here  then boy needed too*/
				(
					(!(wedding[1] == left_bank) /*->*/ || (wedding[2] != left_bank)&&(wedding[4] != left_bank)) && 
				 	(!(wedding[3] == left_bank) /*->*/ || (wedding[0] != left_bank)&&(wedding[4] != left_bank)) && 
				 	(!(wedding[5] == left_bank) /*->*/ || (wedding[0] != left_bank)&&(wedding[2] != left_bank))
				) ||

				 boat_state && 
				/* ladies here  then boy needed too*/
				(
					(!(wedding[1] == right_bank) /*->*/ || (wedding[2] != right_bank)&&(wedding[4] != right_bank)) && 
				 	(!(wedding[3] == right_bank) /*->*/ || (wedding[0] != right_bank)&&(wedding[4] != right_bank)) && 
				 	(!(wedding[5] == right_bank) /*->*/ || (wedding[0] != right_bank)&&(wedding[2] != right_bank))
				) 
			) -> 
				is_boat_in_center = true;
				local_turn = false;
				turn = true;
		
		/*высаживаем обратно на нужный берег*/
		else -> local_turn -> 
			if 
			:: local_turn && !boat_state -> wedding[pair_index + 1] = left_bank; local_turn = false; turn = true
			:: else -> local_turn -> wedding[pair_index + 1] = right_bank; turn = true
			fi
		fi
	/* кейс выхода в открытую реку */
	:: 	atomic { 	
			turn && !isWoman &&  
			!is_boat_in_center &&
			(wedding[pair_index] == on_boat) 
			-> turn = false 
		};
		
		/* нужно выйти в открытую часть */
		/* 
		Нужно проверить перед выходом в открытую часть
		1. В лодке нет чужих невест или есть мой невеста 
		2. На берегу выполняются условия (невесты одни 2.1 или каждая невеста не видит другого жениха на том же берегу 2.2)
		*/
		local_turn = true;
		if 
			/* 1 */
		:: local_turn && (wedding[1] != on_boat && 
			wedding[3] != on_boat && 
			wedding[5] != on_boat ||
			wedding[pair_index + 1] == on_boat) && 
		    (
				/* 2.1 */
				!boat_state && 
				(wedding[0] != left_bank && 
				wedding[2] != left_bank && 
				wedding[4] != left_bank) ||

				boat_state && 
				(wedding[0] != right_bank && 
				wedding[2] != right_bank && 
				wedding[4] != right_bank) ||

				/* 2.2 */
				!boat_state && 
				/* ladies here  then boy needed too*/
				(
					(!(wedding[1] == left_bank) /*->*/ || (wedding[2] != left_bank)&&(wedding[4] != left_bank)) && 
				 	(!(wedding[3] == left_bank) /*->*/ || (wedding[0] != left_bank)&&(wedding[4] != left_bank)) && 
				 	(!(wedding[5] == left_bank) /*->*/ || (wedding[0] != left_bank)&&(wedding[2] != left_bank))
				) ||

				 boat_state && 
				/* ladies here  then boy needed too*/
				(
					(!(wedding[1] == right_bank) /*->*/ || (wedding[2] != right_bank)&&(wedding[4] != right_bank)) && 
				 	(!(wedding[3] == right_bank) /*->*/ || (wedding[0] != right_bank)&&(wedding[4] != right_bank)) && 
				 	(!(wedding[5] == right_bank) /*->*/ || (wedding[0] != right_bank)&&(wedding[2] != right_bank))
				) 
			) -> 
				is_boat_in_center = true;
				local_turn = false;
				turn = true;
		
		/*высаживаем обратно на нужный берег*/
		else -> local_turn -> 
			if 
			:: local_turn && !boat_state -> wedding[pair_index] = left_bank; local_turn = false; turn = true
			:: else -> local_turn -> wedding[pair_index] = right_bank; turn = true
			fi
		fi
	/* кейс приплытия на берег */
	:: 	atomic { 	
			turn && !isWoman &&  
			is_boat_in_center &&
			(wedding[pair_index] == on_boat) 
			-> turn = false 
		};
		/* я парень и может быть везу кого-то в лодке*/
		/*
		Нужно проверить перед приплытием
		1. 1.1(если есть невесты то их женихи с ними) или 1.2(есть только моя невеста и 1.3 партнер соседа)
		*/
		local_turn = true;
		if
		:: local_turn &&
			(
				!boat_state &&
		   		(
					/*1.1*/
					(!(wedding[1]==right_bank) /*->*/ || (wedding[0]==right_bank))&&
					(!(wedding[3]==right_bank) /*->*/ || (wedding[2]==right_bank))&&
					(!(wedding[5]==right_bank) /*->*/ || (wedding[4]==right_bank))||
					/*1.2*/
					(wedding[pair_index + 1] == right_bank)&&
					(/*1.3*/ true)
				)||

				boat_state &&
		   		(
					/*1.1*/
					(!(wedding[1]==left_bank) /*->*/ || (wedding[0]==left_bank))&&
					(!(wedding[3]==left_bank) /*->*/ || (wedding[2]==left_bank))&&
					(!(wedding[5]==left_bank) /*->*/ || (wedding[4]==left_bank))||

					/*1.2*/
					(wedding[pair_index + 1] == left_bank)&&
					(/*1.3*/ true)
				)
			) ->
				if 
				:: boat_seats[0] != -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						wedding[boat_seats[1]] = right_bank;
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						wedding[boat_seats[1]] = left_bank;
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					boat_seats[1] = -1;
					is_boat_in_center = false;
					boat_state = !boat_state;
					count++
				:: boat_seats[0] != -1 && boat_seats[1] == -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					is_boat_in_center = false;
					boat_state = !boat_state;
					count++
				:: boat_seats[0] == -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[1]] = right_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[1]] = left_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[1] = -1;
					is_boat_in_center = false;
					boat_state = !boat_state;
					count++
				fi;
				local_turn = false;
		/*вернуть всех на место как будто ничего не было */
		else -> local_turn ->
				if 
				:: boat_seats[0] != -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						wedding[boat_seats[1]] = left_bank;
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						wedding[boat_seats[1]] = right_bank;
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					boat_seats[1] = -1;
					is_boat_in_center = false;
				:: boat_seats[0] != -1 && boat_seats[1] == -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					is_boat_in_center = false;
				:: boat_seats[0] == -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[1]] = left_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[1]] = right_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[1] = -1;
					is_boat_in_center = false;
				fi;
				local_turn = false;
		fi

	/* кейс приплытия на берег */
	:: 	atomic { 	
			turn && isWoman &&  
			is_boat_in_center &&
			(wedding[pair_index + 1] == on_boat) 
			-> turn = false 
		};
		/* я девушка и может быть везу кого-то в лодке*/
		/*
		Нужно проверить перед приплытием
		1. если мой сосед мой жених, нужно проверить нет ли одиноких невест
		2. если соседка, то нет чужих женихов кроме наших
		*/
		local_turn = true;
		if
		:: local_turn && (!((wedding[0]==on_boat) || (wedding[2]==on_boat) || (wedding[4]==on_boat)) /*->*/ ||
		   	(
				(!boat_state && 
					(!(wedding[1]==right_bank) /*->*/ || (wedding[0]==right_bank))&&
					(!(wedding[3]==right_bank) /*->*/ || (wedding[2]==right_bank))&&
					(!(wedding[5]==right_bank) /*->*/ || (wedding[4]==right_bank)) ||

				boat_state && 
					(!(wedding[1]==left_bank) /*->*/ || (wedding[0]==left_bank))&&
					(!(wedding[3]==left_bank) /*->*/ || (wedding[2]==left_bank))&&
					(!(wedding[5]==left_bank) /*->*/ || (wedding[4]==left_bank))
				)
		   	)
		   )&&
		   (!((wedding[1]==on_boat)&&((pair_index + 1)!=1) || (wedding[3]==on_boat)&&((pair_index + 1)!=3) || (wedding[5]==on_boat)&&((pair_index + 1)!=5)) /* -> */ || 
		   	(
				/* 2.2 */
				!boat_state && 
				/* ladies here  then boy needed too*/
				(
					(!(wedding[1] == on_boat) /*->*/ || (wedding[2] != right_bank)&&(wedding[4] != right_bank)) && 
				 	(!(wedding[3] == on_boat) /*->*/ || (wedding[0] != right_bank)&&(wedding[4] != right_bank)) && 
				 	(!(wedding[5] == on_boat) /*->*/ || (wedding[0] != right_bank)&&(wedding[2] != right_bank))
				) ||

				 boat_state && 
				/* ladies here  then boy needed too*/
				(
					(!(wedding[1] == on_boat) /*->*/ || (wedding[2] != left_bank)&&(wedding[4] != left_bank)) && 
				 	(!(wedding[3] == on_boat) /*->*/ || (wedding[0] != left_bank)&&(wedding[4] != left_bank)) && 
				 	(!(wedding[5] == on_boat) /*->*/ || (wedding[0] != left_bank)&&(wedding[2] != left_bank))
				) 
			)
		   ) ->
		   if 
				:: boat_seats[0] != -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						wedding[boat_seats[1]] = right_bank;
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						wedding[boat_seats[1]] = left_bank;
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					boat_seats[1] = -1;
					is_boat_in_center = false;
					boat_state = !boat_state;
					count++
				:: boat_seats[0] != -1 && boat_seats[1] == -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					is_boat_in_center = false;
					boat_state = !boat_state;
					count++
				:: boat_seats[0] == -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[1]] = right_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[1]] = left_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[1] = -1;
					is_boat_in_center = false;
					boat_state = !boat_state;
					count++
				fi;
				local_turn = false;
		/*вернуть всех на место как будто ничего не было */
		:: else -> local_turn ->
			if 
				:: boat_seats[0] != -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						wedding[boat_seats[1]] = left_bank;
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						wedding[boat_seats[1]] = right_bank;
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					boat_seats[1] = -1;
					is_boat_in_center = false;
				:: boat_seats[0] != -1 && boat_seats[1] == -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[0]] = left_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[0]] = right_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[0] = -1;
					is_boat_in_center = false;
				:: boat_seats[0] == -1 && boat_seats[1] != -1 -> 
					local_turn = true;
					if 
					:: !boat_state && local_turn ->
						wedding[boat_seats[1]] = left_bank; 
						local_turn = false;
					:: boat_state && local_turn ->
						wedding[boat_seats[1]] = right_bank; 
						local_turn = false;
					fi;
					local_turn = true;
					boat_seats[1] = -1;
					is_boat_in_center = false;
				fi;
				local_turn = false;
		fi
	od
	






/*	do
	:: 	atomic { 	
			turn && isWoman &&  // если никто ничего не делает и являюсь невестой
			(wedding[pair_index+1] == left_bank)  &&  // если я на левом берегу
			(boat_seats[0] == -1 || boat_seats[1] == -1)  // если есть место в лодке
			
			-> turn = false 
		}; 
		wedding[pair_index+1] = on_boat;
		local_turn = true;
		if 
		:: boat_seats[0] == -1 && boat_seats[1] == -1 && local_turn -> boat_seats[0] = pair_index+1; local_turn = false
		:: boat_seats[0] != -1 && boat_seats[1] == -1 && local_turn -> boat_seats[1] = pair_index+1; local_turn = false
		:: boat_seats[0] == -1 && boat_seats[1] != -1 && local_turn -> boat_seats[0] = pair_index+1; local_turn = false
		fi;
		local_turn = true;
		turn = true 

	:: 	atomic { 	
			turn && !isWoman &&  // если никто ничего не делает и являюсь женихом
			(wedding[pair_index] == left_bank)  &&  // если я на левом берегу
			(boat_seats[0] == -1 || boat_seats[1] == -1)  // если есть место в лодке
			-> turn = false 
		}; 
		wedding[pair_index] = on_boat;
		local_turn = true;
		if 
		:: boat_seats[0] == -1 && boat_seats[1] == -1 && local_turn -> boat_seats[0] = pair_index; local_turn = false
		:: boat_seats[0] != -1 && boat_seats[1] == -1 && local_turn -> boat_seats[1] = pair_index; local_turn = false
		:: boat_seats[0] == -1 && boat_seats[1] != -1 && local_turn-> boat_seats[0] = pair_index; local_turn = false
		fi;
		local_turn = true; 
		turn = true	
	:: 	atomic { 	
			turn && isWoman &&  // если никто ничего не делает и являюсь женихом
			is_boat_in_center &&
			(wedding[pair_index] == on_boat) // если я в лодке (на берегу)
			-> turn = false 
		};

	:: 	atomic { 	
			turn && isWoman &&  // если никто ничего не делает и являюсь невестой
			(wedding[pair_index+1] == on_boat) // если я в лодке 
			-> turn = false 
		}; 
		// поехала на другой берег и взяла другого человека
		// присваивание boat_state внутри if чтобы быть уверенным, что лодка поехала с людьми
			// atomic { 	
				if 
			:: boat_seats[0] != -1 && boat_seats[1] != -1 -> 
				local_turn = true;
				if 
				:: !boat_state && local_turn ->
					wedding[boat_seats[0]] = right_bank; 
					wedding[boat_seats[1]] = right_bank;
					local_turn = false;
				:: boat_state && local_turn ->
					wedding[boat_seats[0]] = left_bank; 
					wedding[boat_seats[1]] = left_bank;
					local_turn = false;
				fi;
				local_turn = true;
				boat_seats[0] = -1;
				boat_seats[1] = -1;
				boat_state = !boat_state;
				count++
			:: boat_seats[0] != -1 && boat_seats[1] == -1 -> 
				local_turn = true;
				if 
				:: !boat_state && local_turn ->
					wedding[boat_seats[0]] = right_bank; 
					local_turn = false;
				:: boat_state && local_turn ->
					wedding[boat_seats[0]] = left_bank; 
					local_turn = false;
				fi;
				local_turn = true;
				boat_seats[0] = -1;
				boat_state = !boat_state;
				count++
			:: boat_seats[0] == -1 && boat_seats[1] != -1 -> 
				local_turn = true;
				if 
				:: !boat_state && local_turn ->
					wedding[boat_seats[1]] = right_bank; 
					local_turn = false;
				:: boat_state && local_turn ->
					wedding[boat_seats[1]] = left_bank; 
					local_turn = false;
				fi;
				local_turn = true;
				boat_seats[1] = -1;
				boat_state = !boat_state;
				count++
			fi
		// };
		turn = true

	:: 	atomic { 	
			turn && !isWoman &&  // если никто ничего не делает и являюсь женихом
			is_boat_in_center &&
			(wedding[pair_index] == on_boat) // если я в лодке (на берегу)
			-> turn = false 
		}; 


	:: 	atomic { 	
			turn && !isWoman &&  // если никто ничего не делает и являюсь женихом
			!is_boat_in_center &&
			(wedding[pair_index] == on_boat) // если я в лодке (на берегу)
			-> turn = false 
		}; 
		
		if 
		:: boat_seats[0] != -1 && boat_seats[1] != -1 -> 
			local_turn = true;
			if 
			:: !boat_state && local_turn ->
				wedding[boat_seats[0]] = right_bank; 
				wedding[boat_seats[1]] = right_bank;
				local_turn = false;
			:: boat_state && local_turn ->
				wedding[boat_seats[0]] = left_bank; 
				wedding[boat_seats[1]] = left_bank;
				local_turn = false;
			fi;
			local_turn = true;
			boat_seats[0] = -1;
			boat_seats[1] = -1;
			boat_state = !boat_state;
			count++
		:: boat_seats[0] != -1 && boat_seats[1] == -1 -> 
			local_turn = true;
			if 
			:: !boat_state && local_turn ->
				wedding[boat_seats[0]] = right_bank; 
				local_turn = false;
			:: boat_state && local_turn ->
				wedding[boat_seats[0]] = left_bank; 
				local_turn = false;
			fi;
			local_turn = true;
			boat_seats[0] = -1;
			boat_state = !boat_state;
			count++
		:: boat_seats[0] == -1 && boat_seats[1] != -1 -> 
			local_turn = true;
			if 
			:: !boat_state && local_turn ->
				wedding[boat_seats[1]] = right_bank;
				local_turn = false;
			:: boat_state && local_turn ->
				wedding[boat_seats[1]] = left_bank;
				local_turn = false;
			fi;
			local_turn = true;
			boat_seats[1] = -1;
			boat_state = !boat_state;
			count++
		fi;
		turn = true 

	:: 	atomic { 	
			turn && isWoman &&  // если никто ничего не делает и являюсь невестой
			(wedding[pair_index+1] == right_bank)  &&  // если я на правом берегу
			(boat_seats[0] == -1 || boat_seats[1] == -1)  // если есть место в лодке
			// && (wedding[pair_index] == left_bank || wedding[pair_index] == on_boat) // если мой жених на берегу или в лодке
			-> turn = false 
		}; 
		wedding[pair_index+1] = on_boat;
		local_turn = true;
		if 
		:: boat_seats[0] == -1 && boat_seats[1] == -1 && local_turn -> boat_seats[0] = pair_index+1; local_turn = false
		:: boat_seats[0] != -1 && boat_seats[1] == -1 && local_turn -> boat_seats[1] = pair_index+1; local_turn = false
		:: boat_seats[0] == -1 && boat_seats[1] != -1 && local_turn -> boat_seats[0] = pair_index+1; local_turn = false
		fi;
		local_turn = true;
		turn = true 
	:: 	atomic { 	
			turn && !isWoman &&  // если никто ничего не делает и являюсь женихом
			(wedding[pair_index] == right_bank)  &&  // если я на правом берегу
			(boat_seats[0] == -1 || boat_seats[1] == -1)  // если есть место в лодке
			// && (wedding[pair_index+1] == left_bank || wedding[pair_index + 1] == on_boat) // если моя невеста на берегу или в лодке
			-> turn = false 
		}; 
		wedding[pair_index] = on_boat;
		local_turn = true;
		if 
		:: boat_seats[0] == -1 && boat_seats[1] == -1 && local_turn -> boat_seats[0] = pair_index; local_turn = false
		:: boat_seats[0] != -1 && boat_seats[1] == -1 && local_turn -> boat_seats[1] = pair_index; local_turn = false
		:: boat_seats[0] == -1 && boat_seats[1] != -1 && local_turn -> boat_seats[0] = pair_index; local_turn = false
		fi;
		local_turn = true;
		turn = true	

	od
	*/
}

active proctype P1() { run Chosed(0, false) }
active proctype P2() { run Chosed(0, true)  }
active proctype P3() { run Chosed(2, false) }
active proctype P4() { run Chosed(2, true)  }
active proctype P5() { run Chosed(4, false) }
active proctype P6() { run Chosed(4, true)  }





ltl f0 { !always (!SUCCESS) }

