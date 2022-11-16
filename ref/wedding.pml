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
mtype {left_bank, on_boat, right_bank}
#define N 2
mtype wedding_team[2*N] = left_bank; // first half — boys, second half - ladies
bit boat_state = 0; // 0 - left_bank, 1 - right_bank
bit boat_direction = 1;
int boat_seats[2] = -1; // -1 — nobody is here
byte boat_free_space = 2;

proctype Chosed(int i) {
	if 
	:: 	(wedding_team[i]==on_boat) -> 
		if 
		::	(boat_direction == 0) ->
			atomic {
				wedding_team[i] = left_bank;
				boat_state = 0;
				boat_direction = 1;
				boat_free_space = boat_free_space + 1;
			}
			
		:: else  ->
			atomic {
				wedding_team[i] = right_bank;
				boat_direction = 0;
				boat_state = 1;
				boat_free_space = boat_free_space + 1;
			}
		fi;
		
	:: 	(wedding_team[i] == left_bank) && 
		(boat_free_space > 0) && 
		(boat_state == 0) &&
		(boat_direction == 1) -> 
			atomic {
				wedding_team[i] = on_boat;
				boat_free_space = boat_free_space - 1;

			}
	:: 	(wedding_team[i] == right_bank) && 
		(boat_free_space > 0) && 
		(boat_state == 1) &&
		(boat_direction == 0) -> 
			atomic {
				wedding_team[i] = on_boat;
				boat_free_space = boat_free_space - 1;
			}
	fi
}

active proctype P() { 
	do
	:: run Chosed(0);
	:: run Chosed(1);
	:: run Chosed(2);
	:: run Chosed(3);
	od
}



ltl f0 { ([](boat_free_space <= 2) ) }



// Spin/Src/spin -a ref/wedding.pml 
// gcc pan.c -o pan
// ./pan -a -N

// rm pan* || Spin/Src/spin -a ref/wedding.pml && gcc pan.c -o pan && gcc pan.c -o pan && ./pan -a -N f1 
// cat wedding.pml.trail 