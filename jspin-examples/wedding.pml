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
	:: 	atomic { 	
			turn && isWoman &&  // если никто ничего не делает и являюсь невестой
			(wedding[pair_index+1] == left_bank)  &&  // если я на левом берегу
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
			(wedding[pair_index] == left_bank)  &&  // если я на левом берегу
			(boat_seats[0] == -1 || boat_seats[1] == -1)  // если есть место в лодке
			// && (wedding[pair_index+1] == left_bank || wedding[pair_index + 1] == on_boat) // если моя невеста на берегу или в лодке
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
}

active proctype P1() { run Chosed(0, false) }
active proctype P2() { run Chosed(0, true)  }
active proctype P3() { run Chosed(2, false) }
active proctype P4() { run Chosed(2, true)  }
active proctype P5() { run Chosed(4, false) }
active proctype P6() { run Chosed(4, true)  }





ltl f0 { !always (!SUCCESS) }

