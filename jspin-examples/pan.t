#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(9*sizeof(Trans **));

	/* proctype 7: f2 */

	trans[7] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[7][7]	= settr(321,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[7][6] = settr(320,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(320,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(320,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 7][3] = settr(317,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(317,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[7][1]	= settr(315,0,6,3,3,"(!(!(((((((((wedding[0]==right_bank)&&(wedding[1]==right_bank))&&(wedding[2]==right_bank))&&(wedding[3]==right_bank))&&(wedding[4]==right_bank))&&(wedding[5]==right_bank))&&(count==10))&&final))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached7[2] = 1;
	trans[7][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((((((wedding[0]==right_bank)&&(wedding[1]==right_bank))&&(wedding[2]==right_bank))&&(wedding[3]==right_bank))&&(wedding[4]==right_bank))&&(wedding[5]==right_bank))&&(count==10))&&final)))))",0,0,0);
	trans[7][4]	= settr(318,0,6,1,0,"(1)", 0, 2, 0);
	trans[7][5]	= settr(319,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[7][8]	= settr(322,0,9,1,0,"break", 0, 2, 0);
	trans[7][9]	= settr(323,0,10,1,0,"(1)", 0, 2, 0);
	trans[7][10]	= settr(324,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 6: P6 */

	trans[6] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[6][1]	= settr(313,0,2,5,5,"(run Chosed(4,1))", 0, 2, 0);
	trans[6][2]	= settr(314,0,0,6,6,"-end-", 0, 3500, 0);

	/* proctype 5: P5 */

	trans[5] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[5][1]	= settr(311,0,2,7,7,"(run Chosed(4,0))", 0, 2, 0);
	trans[5][2]	= settr(312,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 4: P4 */

	trans[4] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[4][1]	= settr(309,0,2,9,9,"(run Chosed(2,1))", 0, 2, 0);
	trans[4][2]	= settr(310,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 3: P3 */

	trans[3] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[3][1]	= settr(307,0,2,11,11,"(run Chosed(2,0))", 0, 2, 0);
	trans[3][2]	= settr(308,0,0,12,12,"-end-", 0, 3500, 0);

	/* proctype 2: P2 */

	trans[2] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[2][1]	= settr(305,0,2,13,13,"(run Chosed(0,1))", 0, 2, 0);
	trans[2][2]	= settr(306,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 1: P1 */

	trans[1] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[1][1]	= settr(303,0,2,15,15,"(run Chosed(0,0))", 0, 2, 0);
	trans[1][2]	= settr(304,0,0,16,16,"-end-", 0, 3500, 0);

	/* proctype 0: Chosed */

	trans[0] = (Trans **) emalloc(304*sizeof(Trans *));

	trans[0][301]	= settr(300,0,300,1,0,".(goto)", 0, 2, 0);
	T = trans[0][300] = settr(299,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(299,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(299,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(299,0,26,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(299,0,45,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(299,0,67,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(299,0,88,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(299,0,195,0,0,"DO", 0, 2, 0);
	T = trans[ 0][3] = settr(2,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[0][1]	= settr(0,4,4,17,17,"(((((((turn&&(wedding[0]==right_bank))&&(wedding[1]==right_bank))&&(wedding[2]==right_bank))&&(wedding[3]==right_bank))&&(wedding[4]==right_bank))&&(wedding[5]==right_bank)))", 1, 2, 0); /* m: 2 -> 4,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	trans[0][4]	= settr(3,0,300,18,18,"final = 1", 1, 2, 0);
	T = trans[ 0][7] = settr(6,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(6,2,5,0,0,"ATOMIC", 1, 2, 0);
	trans[0][5]	= settr(4,4,23,19,19,"(((((turn&&isWoman)&&!(is_boat_in_center))&&(((wedding[(pair_index+1)]==left_bank)&&!(boat_state))||((wedding[(pair_index+1)]==right_bank)&&boat_state)))&&((boat_seats[0]==-(1))||(boat_seats[1]==-(1)))))", 1, 2, 0); /* m: 6 -> 23,0 */
	reached0[6] = 1;
	trans[0][6]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	T = trans[ 0][23] = settr(22,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(22,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,2,19,20,20,"wedding[(pair_index+1)] = on_boat", 1, 2, 0); /* m: 9 -> 0,19 */
	reached0[9] = 1;
	trans[0][9]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][19] = settr(18,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(18,2,10,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(18,2,13,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(18,2,16,0,0,"IF", 1, 2, 0);
	trans[0][10]	= settr(9,0,300,21,21,"((((boat_seats[0]==-(1))&&(boat_seats[1]==-(1)))&&local_turn))", 1, 2, 0); /* m: 11 -> 300,0 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"boat_seats[0] = (pair_index+1)",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][20]	= settr(19,2,21,1,0,".(goto)", 1, 2, 0); /* m: 21 -> 0,300 */
	reached0[21] = 1;
	trans[0][13]	= settr(12,0,300,22,22,"((((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1)))&&local_turn))", 1, 2, 0); /* m: 14 -> 300,0 */
	reached0[14] = 1;
	trans[0][14]	= settr(0,0,0,0,0,"boat_seats[1] = (pair_index+1)",0,0,0);
	trans[0][15]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][16]	= settr(15,0,300,23,23,"((((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1)))&&local_turn))", 1, 2, 0); /* m: 17 -> 300,0 */
	reached0[17] = 1;
	trans[0][17]	= settr(0,0,0,0,0,"boat_seats[0] = (pair_index+1)",0,0,0);
	trans[0][18]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][21]	= settr(20,0,300,24,24,"local_turn = 1", 1, 2, 0); /* m: 22 -> 0,300 */
	reached0[22] = 1;
	trans[0][22]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	T = trans[ 0][26] = settr(25,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(25,2,24,0,0,"ATOMIC", 1, 2, 0);
	trans[0][24]	= settr(23,4,42,25,25,"(((((turn&&!(isWoman))&&!(is_boat_in_center))&&(((wedding[pair_index]==left_bank)&&!(boat_state))||((wedding[pair_index]==right_bank)&&boat_state)))&&((boat_seats[0]==-(1))||(boat_seats[1]==-(1)))))", 1, 2, 0); /* m: 25 -> 42,0 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	T = trans[ 0][42] = settr(41,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(41,2,27,0,0,"ATOMIC", 1, 2, 0);
	trans[0][27]	= settr(26,2,38,26,26,"wedding[pair_index] = on_boat", 1, 2, 0); /* m: 28 -> 0,38 */
	reached0[28] = 1;
	trans[0][28]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][38] = settr(37,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(37,2,29,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(37,2,32,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(37,2,35,0,0,"IF", 1, 2, 0);
	trans[0][29]	= settr(28,0,300,27,27,"((((boat_seats[0]==-(1))&&(boat_seats[1]==-(1)))&&local_turn))", 1, 2, 0); /* m: 30 -> 300,0 */
	reached0[30] = 1;
	trans[0][30]	= settr(0,0,0,0,0,"boat_seats[0] = pair_index",0,0,0);
	trans[0][31]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][39]	= settr(38,2,40,1,0,".(goto)", 1, 2, 0); /* m: 40 -> 0,300 */
	reached0[40] = 1;
	trans[0][32]	= settr(31,0,300,28,28,"((((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1)))&&local_turn))", 1, 2, 0); /* m: 33 -> 300,0 */
	reached0[33] = 1;
	trans[0][33]	= settr(0,0,0,0,0,"boat_seats[1] = pair_index",0,0,0);
	trans[0][34]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][35]	= settr(34,0,300,29,29,"((((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1)))&&local_turn))", 1, 2, 0); /* m: 36 -> 300,0 */
	reached0[36] = 1;
	trans[0][36]	= settr(0,0,0,0,0,"boat_seats[0] = pair_index",0,0,0);
	trans[0][37]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][40]	= settr(39,0,300,30,30,"local_turn = 1", 1, 2, 0); /* m: 41 -> 0,300 */
	reached0[41] = 1;
	trans[0][41]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	T = trans[ 0][45] = settr(44,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(44,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[0][43]	= settr(42,4,64,31,31,"((((turn&&isWoman)&&!(is_boat_in_center))&&(wedding[(pair_index+1)]==on_boat)))", 1, 2, 0); /* m: 44 -> 64,0 */
	reached0[44] = 1;
	trans[0][44]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	T = trans[ 0][64] = settr(63,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(63,2,46,0,0,"ATOMIC", 1, 2, 0);
	trans[0][46]	= settr(45,2,62,32,32,"local_turn = 1", 1, 2, 0);
	T = trans[0][62] = settr(61,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(61,2,47,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(61,2,51,0,0,"IF", 1, 2, 0);
	trans[0][47]	= settr(46,0,300,33,33,"((local_turn&&(((((wedding[0]!=on_boat)&&(wedding[2]!=on_boat))&&(wedding[4]!=on_boat))||(wedding[pair_index]==on_boat))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))))))", 1, 2, 0); /* m: 48 -> 300,0 */
	reached0[48] = 1;
	trans[0][48]	= settr(0,0,0,0,0,"is_boat_in_center = 1",0,0,0);
	trans[0][49]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	trans[0][50]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][63]	= settr(62,0,300,34,34,".(goto)", 1, 2, 0);
	trans[0][51]	= settr(50,2,60,35,0,"((!(local_turn)&&(((((wedding[0]!=on_boat)&&(wedding[2]!=on_boat))&&(wedding[4]!=on_boat))||(wedding[pair_index]==on_boat))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))))))", 1, 2, 0);
	T = trans[0][60] = settr(59,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(59,2,52,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(59,2,56,0,0,"IF", 1, 2, 0);
	trans[0][52]	= settr(51,0,300,36,36,"((local_turn&&!(boat_state)))", 1, 2, 0); /* m: 53 -> 300,0 */
	reached0[53] = 1;
	trans[0][53]	= settr(0,0,0,0,0,"wedding[(pair_index+1)] = left_bank",0,0,0);
	trans[0][54]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][55]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][61]	= settr(60,0,300,37,37,".(goto)", 1, 2, 0); /* m: 63 -> 0,300 */
	reached0[63] = 1;
	trans[0][56]	= settr(55,2,57,38,0,"((local_turn&&boat_state))", 1, 2, 0);
	trans[0][57]	= settr(56,0,300,39,39,"(local_turn)", 1, 2, 0); /* m: 58 -> 300,0 */
	reached0[58] = 1;
	trans[0][58]	= settr(0,0,0,0,0,"wedding[(pair_index+1)] = right_bank",0,0,0);
	trans[0][59]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	T = trans[ 0][67] = settr(66,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(66,2,65,0,0,"ATOMIC", 1, 2, 0);
	trans[0][65]	= settr(64,4,85,40,40,"((((turn&&!(isWoman))&&!(is_boat_in_center))&&(wedding[pair_index]==on_boat)))", 1, 2, 0); /* m: 66 -> 85,0 */
	reached0[66] = 1;
	trans[0][66]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	T = trans[ 0][85] = settr(84,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(84,2,68,0,0,"ATOMIC", 1, 2, 0);
	trans[0][68]	= settr(67,2,83,41,41,"local_turn = 1", 1, 2, 0);
	T = trans[0][83] = settr(82,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(82,2,69,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(82,2,73,0,0,"IF", 1, 2, 0);
	trans[0][69]	= settr(68,0,300,42,42,"(((local_turn&&((((wedding[1]!=on_boat)&&(wedding[3]!=on_boat))&&(wedding[5]!=on_boat))||(wedding[(pair_index+1)]==on_boat)))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank))))))))", 1, 2, 0); /* m: 70 -> 300,0 */
	reached0[70] = 1;
	trans[0][70]	= settr(0,0,0,0,0,"is_boat_in_center = 1",0,0,0);
	trans[0][71]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	trans[0][72]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][84]	= settr(83,0,300,43,43,".(goto)", 1, 2, 0);
	trans[0][73]	= settr(72,2,81,44,0,"(((!(local_turn)&&((((wedding[1]!=on_boat)&&(wedding[3]!=on_boat))&&(wedding[5]!=on_boat))||(wedding[(pair_index+1)]==on_boat)))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank))))))))", 1, 2, 0);
	T = trans[0][81] = settr(80,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(80,2,74,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(80,2,78,0,0,"IF", 1, 2, 0);
	trans[0][74]	= settr(73,0,300,45,45,"((local_turn&&!(boat_state)))", 1, 2, 0); /* m: 75 -> 300,0 */
	reached0[75] = 1;
	trans[0][75]	= settr(0,0,0,0,0,"wedding[pair_index] = left_bank",0,0,0);
	trans[0][76]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	trans[0][77]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][82]	= settr(81,0,300,46,46,".(goto)", 1, 2, 0); /* m: 84 -> 0,300 */
	reached0[84] = 1;
	trans[0][78]	= settr(77,0,300,47,47,"((local_turn&&boat_state))", 1, 2, 0); /* m: 79 -> 300,0 */
	reached0[79] = 1;
	trans[0][79]	= settr(0,0,0,0,0,"wedding[pair_index] = right_bank",0,0,0);
	trans[0][80]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	T = trans[ 0][88] = settr(87,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(87,2,86,0,0,"ATOMIC", 1, 2, 0);
	trans[0][86]	= settr(85,4,192,48,48,"((((turn&&!(isWoman))&&is_boat_in_center)&&(wedding[pair_index]==on_boat)))", 1, 2, 0); /* m: 87 -> 192,0 */
	reached0[87] = 1;
	trans[0][87]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	T = trans[ 0][192] = settr(191,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(191,2,89,0,0,"ATOMIC", 1, 2, 0);
	trans[0][89]	= settr(88,2,190,49,49,"local_turn = 1", 1, 2, 0);
	T = trans[0][190] = settr(189,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(189,2,90,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(189,2,143,0,0,"IF", 1, 2, 0);
	trans[0][90]	= settr(89,2,139,50,0,"((local_turn&&((!(boat_state)&&((((!((wedding[1]==right_bank))||(wedding[0]==right_bank))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||((wedding[(pair_index+1)]==right_bank)&&1)))||(boat_state&&((((!((wedding[1]==left_bank))||(wedding[0]==left_bank))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank)))||((wedding[(pair_index+1)]==left_bank)&&1))))))", 1, 2, 0);
	T = trans[0][139] = settr(138,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(138,2,91,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(138,2,109,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(138,2,124,0,0,"IF", 1, 2, 0);
	trans[0][91]	= settr(90,2,101,51,51,"(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 92 -> 101,0 */
	reached0[92] = 1;
	trans[0][92]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][101] = settr(100,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(100,2,93,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(100,2,97,0,0,"IF", 1, 2, 0);
	trans[0][93]	= settr(92,0,300,52,52,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 94 -> 300,0 */
	reached0[94] = 1;
	trans[0][94]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][95]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][96]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][102]	= settr(101,2,103,1,0,".(goto)", 1, 2, 0); /* m: 103 -> 0,300 */
	reached0[103] = 1;
	trans[0][97]	= settr(96,0,300,53,53,"((boat_state&&local_turn))", 1, 2, 0); /* m: 98 -> 300,0 */
	reached0[98] = 1;
	trans[0][98]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][99]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][100]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][103]	= settr(102,0,300,54,54,"local_turn = 1", 1, 2, 0); /* m: 104 -> 0,300 */
	reached0[104] = 1;
	trans[0][104]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][105]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][106]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][107]	= settr(0,0,0,0,0,"boat_state = !(boat_state)",0,0,0);
	trans[0][108]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][140]	= settr(139,2,141,1,0,".(goto)", 1, 2, 0); /* m: 141 -> 0,300 */
	reached0[141] = 1;
	trans[0][109]	= settr(108,2,117,55,55,"(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))", 1, 2, 0); /* m: 110 -> 117,0 */
	reached0[110] = 1;
	trans[0][110]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][117] = settr(116,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(116,2,111,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(116,2,114,0,0,"IF", 1, 2, 0);
	trans[0][111]	= settr(110,0,300,56,56,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 112 -> 300,0 */
	reached0[112] = 1;
	trans[0][112]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][113]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][118]	= settr(117,2,119,1,0,".(goto)", 1, 2, 0); /* m: 119 -> 0,300 */
	reached0[119] = 1;
	trans[0][114]	= settr(113,0,300,57,57,"((boat_state&&local_turn))", 1, 2, 0); /* m: 115 -> 300,0 */
	reached0[115] = 1;
	trans[0][115]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][116]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][119]	= settr(118,0,300,58,58,"local_turn = 1", 1, 2, 0); /* m: 120 -> 0,300 */
	reached0[120] = 1;
	trans[0][120]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][121]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][122]	= settr(0,0,0,0,0,"boat_state = !(boat_state)",0,0,0);
	trans[0][123]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][124]	= settr(123,2,132,59,59,"(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 125 -> 132,0 */
	reached0[125] = 1;
	trans[0][125]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][132] = settr(131,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(131,2,126,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(131,2,129,0,0,"IF", 1, 2, 0);
	trans[0][126]	= settr(125,0,300,60,60,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 127 -> 300,0 */
	reached0[127] = 1;
	trans[0][127]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][128]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][133]	= settr(132,2,134,1,0,".(goto)", 1, 2, 0); /* m: 134 -> 0,300 */
	reached0[134] = 1;
	trans[0][129]	= settr(128,0,300,61,61,"((boat_state&&local_turn))", 1, 2, 0); /* m: 130 -> 300,0 */
	reached0[130] = 1;
	trans[0][130]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][131]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][134]	= settr(133,0,300,62,62,"local_turn = 1", 1, 2, 0); /* m: 135 -> 0,300 */
	reached0[135] = 1;
	trans[0][135]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][136]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][137]	= settr(0,0,0,0,0,"boat_state = !(boat_state)",0,0,0);
	trans[0][138]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][141]	= settr(140,0,300,63,63,"local_turn = 1", 1, 2, 0); /* m: 142 -> 0,300 */
	reached0[142] = 1;
	trans[0][142]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][191]	= settr(190,0,300,64,64,".(goto)", 1, 2, 0);
	trans[0][143]	= settr(142,2,186,65,0,"((!(local_turn)&&((!(boat_state)&&((((!((wedding[1]==right_bank))||(wedding[0]==right_bank))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||((wedding[(pair_index+1)]==right_bank)&&1)))||(boat_state&&((((!((wedding[1]==left_bank))||(wedding[0]==left_bank))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank)))||((wedding[(pair_index+1)]==left_bank)&&1))))))", 1, 2, 0);
	T = trans[0][186] = settr(185,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(185,2,144,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(185,2,160,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(185,2,173,0,0,"IF", 1, 2, 0);
	trans[0][144]	= settr(143,2,154,66,66,"(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 145 -> 154,0 */
	reached0[145] = 1;
	trans[0][145]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][154] = settr(153,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(153,2,146,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(153,2,150,0,0,"IF", 1, 2, 0);
	trans[0][146]	= settr(145,0,300,67,67,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 147 -> 300,0 */
	reached0[147] = 1;
	trans[0][147]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][148]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][149]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][155]	= settr(154,2,156,1,0,".(goto)", 1, 2, 0); /* m: 156 -> 0,300 */
	reached0[156] = 1;
	trans[0][150]	= settr(149,0,300,68,68,"((boat_state&&local_turn))", 1, 2, 0); /* m: 151 -> 300,0 */
	reached0[151] = 1;
	trans[0][151]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][152]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][153]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][156]	= settr(155,0,300,69,69,"local_turn = 1", 1, 2, 0); /* m: 157 -> 0,300 */
	reached0[157] = 1;
	trans[0][157]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][158]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][159]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][187]	= settr(186,2,188,1,0,".(goto)", 1, 2, 0); /* m: 188 -> 0,300 */
	reached0[188] = 1;
	trans[0][160]	= settr(159,2,168,70,70,"(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))", 1, 2, 0); /* m: 161 -> 168,0 */
	reached0[161] = 1;
	trans[0][161]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][168] = settr(167,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(167,2,162,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(167,2,165,0,0,"IF", 1, 2, 0);
	trans[0][162]	= settr(161,0,300,71,71,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 163 -> 300,0 */
	reached0[163] = 1;
	trans[0][163]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][164]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][169]	= settr(168,2,170,1,0,".(goto)", 1, 2, 0); /* m: 170 -> 0,300 */
	reached0[170] = 1;
	trans[0][165]	= settr(164,0,300,72,72,"((boat_state&&local_turn))", 1, 2, 0); /* m: 166 -> 300,0 */
	reached0[166] = 1;
	trans[0][166]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][167]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][170]	= settr(169,0,300,73,73,"local_turn = 1", 1, 2, 0); /* m: 171 -> 0,300 */
	reached0[171] = 1;
	trans[0][171]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][172]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][173]	= settr(172,2,181,74,74,"(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 174 -> 181,0 */
	reached0[174] = 1;
	trans[0][174]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][181] = settr(180,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(180,2,175,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(180,2,178,0,0,"IF", 1, 2, 0);
	trans[0][175]	= settr(174,0,300,75,75,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 176 -> 300,0 */
	reached0[176] = 1;
	trans[0][176]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][177]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][182]	= settr(181,2,183,1,0,".(goto)", 1, 2, 0); /* m: 183 -> 0,300 */
	reached0[183] = 1;
	trans[0][178]	= settr(177,0,300,76,76,"((boat_state&&local_turn))", 1, 2, 0); /* m: 179 -> 300,0 */
	reached0[179] = 1;
	trans[0][179]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][180]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][183]	= settr(182,0,300,77,77,"local_turn = 1", 1, 2, 0); /* m: 184 -> 0,300 */
	reached0[184] = 1;
	trans[0][184]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][185]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][188]	= settr(187,0,300,78,78,"local_turn = 0", 1, 2, 0); /* m: 189 -> 0,300 */
	reached0[189] = 1;
	trans[0][189]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	T = trans[ 0][195] = settr(194,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(194,2,193,0,0,"ATOMIC", 1, 2, 0);
	trans[0][193]	= settr(192,4,299,79,79,"((((turn&&isWoman)&&is_boat_in_center)&&(wedding[(pair_index+1)]==on_boat)))", 1, 2, 0); /* m: 194 -> 299,0 */
	reached0[194] = 1;
	trans[0][194]	= settr(0,0,0,0,0,"turn = 0",0,0,0);
	T = trans[ 0][299] = settr(298,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(298,2,196,0,0,"ATOMIC", 1, 2, 0);
	trans[0][196]	= settr(195,2,297,80,80,"local_turn = 1", 1, 2, 0);
	T = trans[0][297] = settr(296,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(296,2,197,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(296,2,250,0,0,"IF", 1, 2, 0);
	trans[0][197]	= settr(196,2,246,81,0,"(((local_turn&&(!((((wedding[0]==on_boat)||(wedding[2]==on_boat))||(wedding[4]==on_boat)))||((((!(boat_state)&&(!((wedding[1]==right_bank))||(wedding[0]==right_bank)))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||(((boat_state&&(!((wedding[1]==left_bank))||(wedding[0]==left_bank)))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank))))))&&(!(((((wedding[1]==on_boat)&&((pair_index+1)!=1))||((wedding[3]==on_boat)&&((pair_index+1)!=3)))||((wedding[5]==on_boat)&&((pair_index+1)!=5))))||((!(boat_state)&&(((!((wedding[1]==on_boat))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))||(boat_state&&(((!((wedding[1]==on_boat))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))))))", 1, 2, 0);
	T = trans[0][246] = settr(245,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(245,2,198,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(245,2,216,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(245,2,231,0,0,"IF", 1, 2, 0);
	trans[0][198]	= settr(197,2,208,82,82,"(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 199 -> 208,0 */
	reached0[199] = 1;
	trans[0][199]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][208] = settr(207,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(207,2,200,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(207,2,204,0,0,"IF", 1, 2, 0);
	trans[0][200]	= settr(199,0,300,83,83,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 201 -> 300,0 */
	reached0[201] = 1;
	trans[0][201]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][202]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][203]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][209]	= settr(208,2,210,1,0,".(goto)", 1, 2, 0); /* m: 210 -> 0,300 */
	reached0[210] = 1;
	trans[0][204]	= settr(203,0,300,84,84,"((boat_state&&local_turn))", 1, 2, 0); /* m: 205 -> 300,0 */
	reached0[205] = 1;
	trans[0][205]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][206]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][207]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][210]	= settr(209,0,300,85,85,"local_turn = 1", 1, 2, 0); /* m: 211 -> 0,300 */
	reached0[211] = 1;
	trans[0][211]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][212]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][213]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][214]	= settr(0,0,0,0,0,"boat_state = !(boat_state)",0,0,0);
	trans[0][215]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][247]	= settr(246,2,248,1,0,".(goto)", 1, 2, 0); /* m: 248 -> 0,300 */
	reached0[248] = 1;
	trans[0][216]	= settr(215,2,224,86,86,"(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))", 1, 2, 0); /* m: 217 -> 224,0 */
	reached0[217] = 1;
	trans[0][217]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][224] = settr(223,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(223,2,218,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(223,2,221,0,0,"IF", 1, 2, 0);
	trans[0][218]	= settr(217,0,300,87,87,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 219 -> 300,0 */
	reached0[219] = 1;
	trans[0][219]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][220]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][225]	= settr(224,2,226,1,0,".(goto)", 1, 2, 0); /* m: 226 -> 0,300 */
	reached0[226] = 1;
	trans[0][221]	= settr(220,0,300,88,88,"((boat_state&&local_turn))", 1, 2, 0); /* m: 222 -> 300,0 */
	reached0[222] = 1;
	trans[0][222]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][223]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][226]	= settr(225,0,300,89,89,"local_turn = 1", 1, 2, 0); /* m: 227 -> 0,300 */
	reached0[227] = 1;
	trans[0][227]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][228]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][229]	= settr(0,0,0,0,0,"boat_state = !(boat_state)",0,0,0);
	trans[0][230]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][231]	= settr(230,2,239,90,90,"(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 232 -> 239,0 */
	reached0[232] = 1;
	trans[0][232]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][239] = settr(238,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(238,2,233,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(238,2,236,0,0,"IF", 1, 2, 0);
	trans[0][233]	= settr(232,0,300,91,91,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 234 -> 300,0 */
	reached0[234] = 1;
	trans[0][234]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][235]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][240]	= settr(239,2,241,1,0,".(goto)", 1, 2, 0); /* m: 241 -> 0,300 */
	reached0[241] = 1;
	trans[0][236]	= settr(235,0,300,92,92,"((boat_state&&local_turn))", 1, 2, 0); /* m: 237 -> 300,0 */
	reached0[237] = 1;
	trans[0][237]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][238]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][241]	= settr(240,0,300,93,93,"local_turn = 1", 1, 2, 0); /* m: 242 -> 0,300 */
	reached0[242] = 1;
	trans[0][242]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][243]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][244]	= settr(0,0,0,0,0,"boat_state = !(boat_state)",0,0,0);
	trans[0][245]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][248]	= settr(247,0,300,94,94,"local_turn = 1", 1, 2, 0); /* m: 249 -> 0,300 */
	reached0[249] = 1;
	trans[0][249]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][298]	= settr(297,0,300,95,95,".(goto)", 1, 2, 0);
	trans[0][250]	= settr(249,2,293,96,0,"(((!(local_turn)&&(!((((wedding[0]==on_boat)||(wedding[2]==on_boat))||(wedding[4]==on_boat)))||((((!(boat_state)&&(!((wedding[1]==right_bank))||(wedding[0]==right_bank)))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||(((boat_state&&(!((wedding[1]==left_bank))||(wedding[0]==left_bank)))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank))))))&&(!(((((wedding[1]==on_boat)&&((pair_index+1)!=1))||((wedding[3]==on_boat)&&((pair_index+1)!=3)))||((wedding[5]==on_boat)&&((pair_index+1)!=5))))||((!(boat_state)&&(((!((wedding[1]==on_boat))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))||(boat_state&&(((!((wedding[1]==on_boat))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))))))", 1, 2, 0);
	T = trans[0][293] = settr(292,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(292,2,251,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(292,2,267,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(292,2,280,0,0,"IF", 1, 2, 0);
	trans[0][251]	= settr(250,2,261,97,97,"(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 252 -> 261,0 */
	reached0[252] = 1;
	trans[0][252]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][261] = settr(260,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(260,2,253,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(260,2,257,0,0,"IF", 1, 2, 0);
	trans[0][253]	= settr(252,0,300,98,98,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 254 -> 300,0 */
	reached0[254] = 1;
	trans[0][254]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][255]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][256]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][262]	= settr(261,2,263,1,0,".(goto)", 1, 2, 0); /* m: 263 -> 0,300 */
	reached0[263] = 1;
	trans[0][257]	= settr(256,0,300,99,99,"((boat_state&&local_turn))", 1, 2, 0); /* m: 258 -> 300,0 */
	reached0[258] = 1;
	trans[0][258]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][259]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][260]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][263]	= settr(262,0,300,100,100,"local_turn = 1", 1, 2, 0); /* m: 264 -> 0,300 */
	reached0[264] = 1;
	trans[0][264]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][265]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][266]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][294]	= settr(293,2,295,1,0,".(goto)", 1, 2, 0); /* m: 295 -> 0,300 */
	reached0[295] = 1;
	trans[0][267]	= settr(266,2,275,101,101,"(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))", 1, 2, 0); /* m: 268 -> 275,0 */
	reached0[268] = 1;
	trans[0][268]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][275] = settr(274,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(274,2,269,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(274,2,272,0,0,"IF", 1, 2, 0);
	trans[0][269]	= settr(268,0,300,102,102,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 270 -> 300,0 */
	reached0[270] = 1;
	trans[0][270]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = left_bank",0,0,0);
	trans[0][271]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][276]	= settr(275,2,277,1,0,".(goto)", 1, 2, 0); /* m: 277 -> 0,300 */
	reached0[277] = 1;
	trans[0][272]	= settr(271,0,300,103,103,"((boat_state&&local_turn))", 1, 2, 0); /* m: 273 -> 300,0 */
	reached0[273] = 1;
	trans[0][273]	= settr(0,0,0,0,0,"wedding[boat_seats[0]] = right_bank",0,0,0);
	trans[0][274]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][277]	= settr(276,0,300,104,104,"local_turn = 1", 1, 2, 0); /* m: 278 -> 0,300 */
	reached0[278] = 1;
	trans[0][278]	= settr(0,0,0,0,0,"boat_seats[0] = -(1)",0,0,0);
	trans[0][279]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][280]	= settr(279,2,288,105,105,"(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))", 1, 2, 0); /* m: 281 -> 288,0 */
	reached0[281] = 1;
	trans[0][281]	= settr(0,0,0,0,0,"local_turn = 1",0,0,0);
	T = trans[0][288] = settr(287,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(287,2,282,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(287,2,285,0,0,"IF", 1, 2, 0);
	trans[0][282]	= settr(281,0,300,106,106,"((!(boat_state)&&local_turn))", 1, 2, 0); /* m: 283 -> 300,0 */
	reached0[283] = 1;
	trans[0][283]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = left_bank",0,0,0);
	trans[0][284]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][289]	= settr(288,2,290,1,0,".(goto)", 1, 2, 0); /* m: 290 -> 0,300 */
	reached0[290] = 1;
	trans[0][285]	= settr(284,0,300,107,107,"((boat_state&&local_turn))", 1, 2, 0); /* m: 286 -> 300,0 */
	reached0[286] = 1;
	trans[0][286]	= settr(0,0,0,0,0,"wedding[boat_seats[1]] = right_bank",0,0,0);
	trans[0][287]	= settr(0,0,0,0,0,"local_turn = 0",0,0,0);
	trans[0][290]	= settr(289,0,300,108,108,"local_turn = 1", 1, 2, 0); /* m: 291 -> 0,300 */
	reached0[291] = 1;
	trans[0][291]	= settr(0,0,0,0,0,"boat_seats[1] = -(1)",0,0,0);
	trans[0][292]	= settr(0,0,0,0,0,"is_boat_in_center = 0",0,0,0);
	trans[0][295]	= settr(294,0,300,109,109,"local_turn = 0", 1, 2, 0); /* m: 296 -> 0,300 */
	reached0[296] = 1;
	trans[0][296]	= settr(0,0,0,0,0,"turn = 1",0,0,0);
	trans[0][302]	= settr(301,0,303,1,0,"break", 0, 2, 0);
	trans[0][303]	= settr(302,0,0,110,110,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
