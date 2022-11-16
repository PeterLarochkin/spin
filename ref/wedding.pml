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
# define SUCCESS (wedding_team[0] == right_bank) && (wedding_team[1] == right_bank) && (wedding_team[2] == right_bank) && (wedding_team[3] == right_bank)
bit boat_state = 0; // 0 - left_bank, 1 - right_bank
bit boat_direction = 1; // 0 - to left_bank, 1 - to right_bank
int boat_seats[2] = -1; // -1 — nobody is here

int count;
bool turn = false;

proctype Chosed(int i) {
	if 
	:: 	turn && (wedding_team[i]==on_boat) -> 
		if 
		::	(boat_direction == 0) ->
			atomic {
				if 
				:: boat_seats[0] != -1 -> wedding_team[boat_seats[0]] = left_bank; boat_seats[0] = -1;
				fi;
				if 
				:: boat_seats[1] != -1 -> wedding_team[boat_seats[1]] = left_bank; boat_seats[1] = -1;
				fi;
				
				boat_state = 0;
				boat_direction = 1;
				turn = false;
				count = count + 1;
			}
			
		:: else  ->
			atomic {
				if 
				:: boat_seats[0] != -1 -> wedding_team[boat_seats[0]] = right_bank; boat_seats[0] = -1;
				fi;
				if 
				:: boat_seats[1] != -1 -> wedding_team[boat_seats[1]] = right_bank; boat_seats[1] = -1;
				fi;
				boat_direction = 0;
				boat_state = 1;
				turn = false;
				count = count + 1;
			}
		fi;
		
	:: 	turn && (wedding_team[i] == left_bank) && 
		(boat_seats[0] != -1 || boat_seats[1] != -1) &&  
		(boat_state == 0) &&
		(boat_direction == 1) -> 
			atomic {
				wedding_team[i] = on_boat;
				if 
				:: boat_seats[0] != -1 -> boat_seats[0] = i;
				:: else -> boat_seats[1] = i;
				fi;
				turn = false;
			}
	:: 	turn && (wedding_team[i] == right_bank) && 
		(boat_seats[0] != -1 || boat_seats[1] != -1) && 
		(boat_state == 1) &&
		(boat_direction == 0) -> 
			atomic {
				wedding_team[i] = on_boat;
				if 
				:: boat_seats[0] != -1 -> boat_seats[0] = i;
				:: else -> boat_seats[1] = i;
				fi;
				turn = false;
			}
	fi
}

active proctype P() { 
	do
	:: turn = true; run Chosed(0);
	:: turn = true; run Chosed(1);
	:: turn = true; run Chosed(2);
	:: turn = true; run Chosed(3);
	od
}



ltl f0 { false == (always (!SUCCESS)) }



// Spin/Src/spin -a ref/wedding.pml 
// gcc pan.c -o pan
// ./pan -a -N

// rm pan* || Spin/Src/spin -a ref/wedding.pml && gcc pan.c -o pan && gcc pan.c -o pan && ./pan -a -N f1 
// cat wedding.pml.trail 