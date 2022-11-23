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

# define SUCCESS (wedding[0] == right_bank) && (wedding[1] == right_bank) && (wedding[2] == right_bank) && (wedding[3] == right_bank)

mtype {left_bank, on_boat, right_bank}
// bool turn = false;
mtype wedding[4] = left_bank;
bool turn = true;

proctype Chosed(int i) {
	
	do
	:: atomic { (wedding[i] == left_bank)  && turn -> turn = false} ; wedding[i] = on_boat    ; turn = true
	// :: atomic { (wedding[i] == right_bank) && turn -> turn = false} ; wedding[i] = on_boat    ; turn = true
	:: atomic { (wedding[i] == on_boat)    && turn -> turn = false} ; wedding[i] = right_bank ; turn = true
	// :: atomic { (wedding[i] == on_boat)    && turn -> turn = false} ; wedding[i] = left_bank  ; turn = true
	od
}

active proctype P() { 

	run Chosed(0);
	run Chosed(1);
	run Chosed(2);
	run Chosed(3);

}



ltl { !(always (!SUCCESS)) }



// Spin/Src/spin -a ref/wedding.pml 
// gcc pan.c -o pan
// ./pan -a -N

// rm pan* || Spin/Src/spin -a ref/wedding.pml && gcc pan.c -o pan && gcc pan.c -o pan && ./pan -a -N f1 
// cat wedding.pml.trail 