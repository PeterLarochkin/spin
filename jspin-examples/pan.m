#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC P6 */
	case 3: // STATE 1 - wedding.pml:598 - [(run Chosed(4,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		if (!(addproc(II, 1, 0, 4, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - wedding.pml:598 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P5 */
	case 5: // STATE 1 - wedding.pml:597 - [(run Chosed(4,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		if (!(addproc(II, 1, 0, 4, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - wedding.pml:597 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P4 */
	case 7: // STATE 1 - wedding.pml:596 - [(run Chosed(2,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 0, 2, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 2 - wedding.pml:596 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P3 */
	case 9: // STATE 1 - wedding.pml:595 - [(run Chosed(2,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - wedding.pml:595 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P2 */
	case 11: // STATE 1 - wedding.pml:594 - [(run Chosed(0,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - wedding.pml:594 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P1 */
	case 13: // STATE 1 - wedding.pml:593 - [(run Chosed(0,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - wedding.pml:593 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Chosed */
	case 15: // STATE 1 - wedding.pml:58 - [(((((turn&&isWoman)&&!(is_boat_in_center))&&(((wedding[(pair_index+1)]==left_bank)&&!(boat_state))||((wedding[(pair_index+1)]==right_bank)&&boat_state)))&&((boat_seats[0]==-(1))||(boat_seats[1]==-(1)))))] (4:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((((int)now.turn)&&((int)((P0 *)_this)->isWoman))&& !(((int)now.is_boat_in_center)))&&(((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==3)&& !(((int)now.boat_state)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==1)&&((int)now.boat_state))))&&((now.boat_seats[0]== -(1))||(now.boat_seats[1]== -(1))))))
			continue;
		/* merge: turn = 0(0, 2, 4) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 4 - wedding.pml:62 - [wedding[(pair_index+1)] = on_boat] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = 2;
#ifdef VAR_RANGES
		logval("wedding[(Chosed:pair_index+1)]", now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 5 - wedding.pml:63 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 6 - wedding.pml:65 - [((((boat_seats[0]==-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 7 - wedding.pml:65 - [boat_seats[0] = (pair_index+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] = (((P0 *)_this)->pair_index+1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - wedding.pml:65 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 9 - wedding.pml:66 - [((((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 10 - wedding.pml:66 - [boat_seats[1] = (pair_index+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] = (((P0 *)_this)->pair_index+1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 11 - wedding.pml:66 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 12 - wedding.pml:67 - [((((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1)))&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 13 - wedding.pml:67 - [boat_seats[0] = (pair_index+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] = (((P0 *)_this)->pair_index+1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 14 - wedding.pml:67 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 17 - wedding.pml:69 - [local_turn = 1] (0:0:1 - 4)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 18 - wedding.pml:70 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 19 - wedding.pml:80 - [(((((turn&&!(isWoman))&&!(is_boat_in_center))&&(((wedding[pair_index]==left_bank)&&!(boat_state))||((wedding[pair_index]==right_bank)&&boat_state)))&&((boat_seats[0]==-(1))||(boat_seats[1]==-(1)))))] (22:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((((((int)now.turn)&& !(((int)((P0 *)_this)->isWoman)))&& !(((int)now.is_boat_in_center)))&&(((now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==3)&& !(((int)now.boat_state)))||((now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==1)&&((int)now.boat_state))))&&((now.boat_seats[0]== -(1))||(now.boat_seats[1]== -(1))))))
			continue;
		/* merge: turn = 0(0, 20, 22) */
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 30: // STATE 22 - wedding.pml:84 - [wedding[pair_index] = on_boat] (0:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(((P0 *)_this)->pair_index, 6) ];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = 2;
#ifdef VAR_RANGES
		logval("wedding[Chosed:pair_index]", now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 23 - wedding.pml:85 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 24 - wedding.pml:87 - [((((boat_seats[0]==-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 25 - wedding.pml:87 - [boat_seats[0] = pair_index] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->pair_index;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 26 - wedding.pml:87 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 27 - wedding.pml:88 - [((((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 28 - wedding.pml:88 - [boat_seats[1] = pair_index] (0:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] = ((P0 *)_this)->pair_index;
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 29 - wedding.pml:88 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 30 - wedding.pml:89 - [((((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1)))&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 31 - wedding.pml:89 - [boat_seats[0] = pair_index] (0:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->pair_index;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 32 - wedding.pml:89 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 35 - wedding.pml:91 - [local_turn = 1] (0:0:1 - 4)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 36 - wedding.pml:92 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 37 - wedding.pml:98 - [((((turn&&isWoman)&&!(is_boat_in_center))&&(wedding[(pair_index+1)]==on_boat)))] (40:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((((int)now.turn)&&((int)((P0 *)_this)->isWoman))&& !(((int)now.is_boat_in_center)))&&(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 38, 40) */
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 44: // STATE 40 - wedding.pml:108 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 41 - wedding.pml:133 - [((local_turn&&(((((wedding[0]!=on_boat)&&(wedding[2]!=on_boat))&&(wedding[4]!=on_boat))||(wedding[pair_index]==on_boat))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((int)now.local_turn)&&(((((now.wedding[0]!=2)&&(now.wedding[2]!=2))&&(now.wedding[4]!=2))||(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 42 - wedding.pml:136 - [is_boat_in_center = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 1;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 43 - wedding.pml:137 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 44 - wedding.pml:138 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 45 - wedding.pml:161 - [((!(local_turn)&&(((((wedding[0]!=on_boat)&&(wedding[2]!=on_boat))&&(wedding[4]!=on_boat))||(wedding[pair_index]==on_boat))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(( !(((int)now.local_turn))&&(((((now.wedding[0]!=2)&&(now.wedding[2]!=2))&&(now.wedding[4]!=2))||(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 46 - wedding.pml:165 - [((local_turn&&!(boat_state)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((((int)now.local_turn)&& !(((int)now.boat_state)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 47 - wedding.pml:165 - [wedding[(pair_index+1)] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[(Chosed:pair_index+1)]", now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 48 - wedding.pml:165 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 49 - wedding.pml:165 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 50 - wedding.pml:166 - [((local_turn&&boat_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((int)now.local_turn)&&((int)now.boat_state))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 51 - wedding.pml:166 - [(local_turn)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(((int)now.local_turn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 52 - wedding.pml:166 - [wedding[(pair_index+1)] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[(Chosed:pair_index+1)]", now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 53 - wedding.pml:166 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 58 - wedding.pml:174 - [((((turn&&!(isWoman))&&!(is_boat_in_center))&&(wedding[pair_index]==on_boat)))] (61:0:1 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!((((((int)now.turn)&& !(((int)((P0 *)_this)->isWoman)))&& !(((int)now.is_boat_in_center)))&&(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 59, 61) */
		reached[0][59] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 59: // STATE 61 - wedding.pml:184 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 62 - wedding.pml:207 - [(((local_turn&&((((wedding[1]!=on_boat)&&(wedding[3]!=on_boat))&&(wedding[5]!=on_boat))||(wedding[(pair_index+1)]==on_boat)))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		if (!(((((int)now.local_turn)&&((((now.wedding[1]!=2)&&(now.wedding[3]!=2))&&(now.wedding[5]!=2))||(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2)))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 63 - wedding.pml:210 - [is_boat_in_center = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 1;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 64 - wedding.pml:211 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 65 - wedding.pml:212 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 66 - wedding.pml:234 - [(((!(local_turn)&&((((wedding[1]!=on_boat)&&(wedding[3]!=on_boat))&&(wedding[5]!=on_boat))||(wedding[(pair_index+1)]==on_boat)))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (!((( !(((int)now.local_turn))&&((((now.wedding[1]!=2)&&(now.wedding[3]!=2))&&(now.wedding[5]!=2))||(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2)))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 67 - wedding.pml:238 - [((local_turn&&!(boat_state)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!((((int)now.local_turn)&& !(((int)now.boat_state)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 68 - wedding.pml:238 - [wedding[pair_index] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(((P0 *)_this)->pair_index, 6) ];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[Chosed:pair_index]", now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 69 - wedding.pml:238 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 70 - wedding.pml:238 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 71 - wedding.pml:239 - [((local_turn&&boat_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!((((int)now.local_turn)&&((int)now.boat_state))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 72 - wedding.pml:239 - [wedding[pair_index] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(((P0 *)_this)->pair_index, 6) ];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[Chosed:pair_index]", now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 73 - wedding.pml:239 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 78 - wedding.pml:246 - [((((turn&&!(isWoman))&&is_boat_in_center)&&(wedding[pair_index]==on_boat)))] (81:0:1 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		if (!((((((int)now.turn)&& !(((int)((P0 *)_this)->isWoman)))&&((int)now.is_boat_in_center))&&(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 79, 81) */
		reached[0][79] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 73: // STATE 81 - wedding.pml:254 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 82 - wedding.pml:278 - [((local_turn&&((!(boat_state)&&((((!((wedding[1]==right_bank))||(wedding[0]==right_bank))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||((wedding[(pair_index+1)]==right_bank)&&1)))||(boat_state&&((((!((wedding[1]==left_bank))||(wedding[0]==left_bank))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank)))||((wedding[(pair_index+1)]==left_bank)&&1))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((int)now.local_turn)&&(( !(((int)now.boat_state))&&(((( !((now.wedding[1]==1))||(now.wedding[0]==1))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==1)&&1)))||(((int)now.boat_state)&&(((( !((now.wedding[1]==3))||(now.wedding[0]==3))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==3)&&1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 83 - wedding.pml:282 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 84 - wedding.pml:283 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 85 - wedding.pml:285 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 86 - wedding.pml:286 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 87 - wedding.pml:287 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 88 - wedding.pml:288 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 89 - wedding.pml:289 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 90 - wedding.pml:290 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 91 - wedding.pml:291 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 92 - wedding.pml:292 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 95 - wedding.pml:294 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][95] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 96 - wedding.pml:295 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 97 - wedding.pml:296 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 98 - wedding.pml:297 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 99 - wedding.pml:298 - [boat_state = !(boat_state)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 100 - wedding.pml:299 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][100] = 1;
		(trpt+1)->bup.oval = ((int)count);
		count = (((int)count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 101 - wedding.pml:300 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 102 - wedding.pml:301 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][102] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 103 - wedding.pml:303 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 104 - wedding.pml:304 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 105 - wedding.pml:305 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 106 - wedding.pml:306 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 107 - wedding.pml:307 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 108 - wedding.pml:308 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 111 - wedding.pml:310 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][111] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 112 - wedding.pml:311 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 113 - wedding.pml:312 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 114 - wedding.pml:313 - [boat_state = !(boat_state)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 115 - wedding.pml:314 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][115] = 1;
		(trpt+1)->bup.oval = ((int)count);
		count = (((int)count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 116 - wedding.pml:315 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][116] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 117 - wedding.pml:316 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 118 - wedding.pml:318 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 119 - wedding.pml:319 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 120 - wedding.pml:320 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 121 - wedding.pml:321 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 122 - wedding.pml:322 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][122] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 123 - wedding.pml:323 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 126 - wedding.pml:325 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][126] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 127 - wedding.pml:326 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][127] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 128 - wedding.pml:327 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][128] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 129 - wedding.pml:328 - [boat_state = !(boat_state)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 130 - wedding.pml:329 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][130] = 1;
		(trpt+1)->bup.oval = ((int)count);
		count = (((int)count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 133 - wedding.pml:331 - [local_turn = 1] (0:0:1 - 4)
		IfNotBlocked
		reached[0][133] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 134 - wedding.pml:332 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 135 - wedding.pml:356 - [((!(local_turn)&&((!(boat_state)&&((((!((wedding[1]==right_bank))||(wedding[0]==right_bank))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||((wedding[(pair_index+1)]==right_bank)&&1)))||(boat_state&&((((!((wedding[1]==left_bank))||(wedding[0]==left_bank))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank)))||((wedding[(pair_index+1)]==left_bank)&&1))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][135] = 1;
		if (!(( !(((int)now.local_turn))&&(( !(((int)now.boat_state))&&(((( !((now.wedding[1]==1))||(now.wedding[0]==1))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==1)&&1)))||(((int)now.boat_state)&&(((( !((now.wedding[1]==3))||(now.wedding[0]==3))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==3)&&1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 136 - wedding.pml:360 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][136] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 137 - wedding.pml:361 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][137] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 138 - wedding.pml:363 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][138] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 139 - wedding.pml:364 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][139] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 140 - wedding.pml:365 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][140] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 141 - wedding.pml:366 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][141] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 142 - wedding.pml:367 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][142] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 143 - wedding.pml:368 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][143] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 144 - wedding.pml:369 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][144] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 145 - wedding.pml:370 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][145] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 148 - wedding.pml:372 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][148] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 149 - wedding.pml:373 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][149] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 150 - wedding.pml:374 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 151 - wedding.pml:375 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][151] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 152 - wedding.pml:376 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 153 - wedding.pml:377 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 154 - wedding.pml:379 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][154] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 155 - wedding.pml:380 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][155] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 156 - wedding.pml:381 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 157 - wedding.pml:382 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][157] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 158 - wedding.pml:383 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][158] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 159 - wedding.pml:384 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][159] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 162 - wedding.pml:386 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][162] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 163 - wedding.pml:387 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][163] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 164 - wedding.pml:388 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][164] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 165 - wedding.pml:389 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][165] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 166 - wedding.pml:390 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][166] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 167 - wedding.pml:392 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][167] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 168 - wedding.pml:393 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][168] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 169 - wedding.pml:394 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][169] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 170 - wedding.pml:395 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][170] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 171 - wedding.pml:396 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][171] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 172 - wedding.pml:397 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][172] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 175 - wedding.pml:399 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][175] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 176 - wedding.pml:400 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][176] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 177 - wedding.pml:401 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][177] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 180 - wedding.pml:403 - [local_turn = 0] (0:0:1 - 4)
		IfNotBlocked
		reached[0][180] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 181 - wedding.pml:404 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][181] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 184 - wedding.pml:411 - [((((turn&&isWoman)&&is_boat_in_center)&&(wedding[(pair_index+1)]==on_boat)))] (187:0:1 - 1)
		IfNotBlocked
		reached[0][184] = 1;
		if (!((((((int)now.turn)&&((int)((P0 *)_this)->isWoman))&&((int)now.is_boat_in_center))&&(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 185, 187) */
		reached[0][185] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 159: // STATE 187 - wedding.pml:420 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][187] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 188 - wedding.pml:452 - [(((local_turn&&(!((((wedding[0]==on_boat)||(wedding[2]==on_boat))||(wedding[4]==on_boat)))||((((!(boat_state)&&(!((wedding[1]==right_bank))||(wedding[0]==right_bank)))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||(((boat_state&&(!((wedding[1]==left_bank))||(wedding[0]==left_bank)))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank))))))&&(!(((((wedding[1]==on_boat)&&((pair_index+1)!=1))||((wedding[3]==on_boat)&&((pair_index+1)!=3)))||((wedding[5]==on_boat)&&((pair_index+1)!=5))))||((!(boat_state)&&(((!((wedding[1]==on_boat))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))||(boat_state&&(((!((wedding[1]==on_boat))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][188] = 1;
		if (!(((((int)now.local_turn)&&( !((((now.wedding[0]==2)||(now.wedding[2]==2))||(now.wedding[4]==2)))||(((( !(((int)now.boat_state))&&( !((now.wedding[1]==1))||(now.wedding[0]==1)))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||(((((int)now.boat_state)&&( !((now.wedding[1]==3))||(now.wedding[0]==3)))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3))))))&&( !(((((now.wedding[1]==2)&&((((P0 *)_this)->pair_index+1)!=1))||((now.wedding[3]==2)&&((((P0 *)_this)->pair_index+1)!=3)))||((now.wedding[5]==2)&&((((P0 *)_this)->pair_index+1)!=5))))||(( !(((int)now.boat_state))&&((( !((now.wedding[1]==2))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))||(((int)now.boat_state)&&((( !((now.wedding[1]==2))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=3)&&(now.wedding[2]!=3))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 189 - wedding.pml:457 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][189] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 190 - wedding.pml:458 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][190] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 191 - wedding.pml:460 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 192 - wedding.pml:461 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 193 - wedding.pml:462 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][193] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 194 - wedding.pml:463 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][194] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 195 - wedding.pml:464 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][195] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 196 - wedding.pml:465 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 197 - wedding.pml:466 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][197] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 198 - wedding.pml:467 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][198] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 201 - wedding.pml:469 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][201] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 202 - wedding.pml:470 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][202] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 203 - wedding.pml:471 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][203] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 204 - wedding.pml:472 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][204] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 205 - wedding.pml:473 - [boat_state = !(boat_state)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][205] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 206 - wedding.pml:474 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][206] = 1;
		(trpt+1)->bup.oval = ((int)count);
		count = (((int)count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 207 - wedding.pml:475 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][207] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 208 - wedding.pml:476 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][208] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 209 - wedding.pml:478 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 210 - wedding.pml:479 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 211 - wedding.pml:480 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][211] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 212 - wedding.pml:481 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][212] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 213 - wedding.pml:482 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 214 - wedding.pml:483 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][214] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 217 - wedding.pml:485 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][217] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 218 - wedding.pml:486 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 219 - wedding.pml:487 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][219] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 220 - wedding.pml:488 - [boat_state = !(boat_state)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][220] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 221 - wedding.pml:489 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][221] = 1;
		(trpt+1)->bup.oval = ((int)count);
		count = (((int)count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 222 - wedding.pml:490 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][222] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 223 - wedding.pml:491 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][223] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 224 - wedding.pml:493 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][224] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 225 - wedding.pml:494 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][225] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 226 - wedding.pml:495 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][226] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 227 - wedding.pml:496 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][227] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 228 - wedding.pml:497 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][228] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 229 - wedding.pml:498 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][229] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 232 - wedding.pml:500 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][232] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 233 - wedding.pml:501 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 234 - wedding.pml:502 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][234] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 235 - wedding.pml:503 - [boat_state = !(boat_state)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][235] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 236 - wedding.pml:504 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		(trpt+1)->bup.oval = ((int)count);
		count = (((int)count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 239 - wedding.pml:506 - [local_turn = 1] (0:0:1 - 4)
		IfNotBlocked
		reached[0][239] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 240 - wedding.pml:507 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][240] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 241 - wedding.pml:539 - [(((!(local_turn)&&(!((((wedding[0]==on_boat)||(wedding[2]==on_boat))||(wedding[4]==on_boat)))||((((!(boat_state)&&(!((wedding[1]==right_bank))||(wedding[0]==right_bank)))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||(((boat_state&&(!((wedding[1]==left_bank))||(wedding[0]==left_bank)))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank))))))&&(!(((((wedding[1]==on_boat)&&((pair_index+1)!=1))||((wedding[3]==on_boat)&&((pair_index+1)!=3)))||((wedding[5]==on_boat)&&((pair_index+1)!=5))))||((!(boat_state)&&(((!((wedding[1]==on_boat))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))||(boat_state&&(((!((wedding[1]==on_boat))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][241] = 1;
		if (!((( !(((int)now.local_turn))&&( !((((now.wedding[0]==2)||(now.wedding[2]==2))||(now.wedding[4]==2)))||(((( !(((int)now.boat_state))&&( !((now.wedding[1]==1))||(now.wedding[0]==1)))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||(((((int)now.boat_state)&&( !((now.wedding[1]==3))||(now.wedding[0]==3)))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3))))))&&( !(((((now.wedding[1]==2)&&((((P0 *)_this)->pair_index+1)!=1))||((now.wedding[3]==2)&&((((P0 *)_this)->pair_index+1)!=3)))||((now.wedding[5]==2)&&((((P0 *)_this)->pair_index+1)!=5))))||(( !(((int)now.boat_state))&&((( !((now.wedding[1]==2))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))||(((int)now.boat_state)&&((( !((now.wedding[1]==2))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=3)&&(now.wedding[2]!=3))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 242 - wedding.pml:544 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][242] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 243 - wedding.pml:545 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][243] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 244 - wedding.pml:547 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][244] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 245 - wedding.pml:548 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 246 - wedding.pml:549 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][246] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 247 - wedding.pml:550 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][247] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 248 - wedding.pml:551 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][248] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 249 - wedding.pml:552 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][249] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 250 - wedding.pml:553 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][250] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 251 - wedding.pml:554 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][251] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 254 - wedding.pml:556 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][254] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 255 - wedding.pml:557 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 256 - wedding.pml:558 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][256] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 257 - wedding.pml:559 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 258 - wedding.pml:560 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][258] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 259 - wedding.pml:561 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][259] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 260 - wedding.pml:563 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][260] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 261 - wedding.pml:564 - [wedding[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][261] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 262 - wedding.pml:565 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][262] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 263 - wedding.pml:566 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][263] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 264 - wedding.pml:567 - [wedding[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][264] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 265 - wedding.pml:568 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][265] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 268 - wedding.pml:570 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][268] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 269 - wedding.pml:571 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][269] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 270 - wedding.pml:572 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][270] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 271 - wedding.pml:573 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][271] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 272 - wedding.pml:574 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][272] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 273 - wedding.pml:576 - [((!(boat_state)&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][273] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 274 - wedding.pml:577 - [wedding[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][274] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 275 - wedding.pml:578 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][275] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 276 - wedding.pml:579 - [((boat_state&&local_turn))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][276] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 277 - wedding.pml:580 - [wedding[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][277] = 1;
		(trpt+1)->bup.oval = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 278 - wedding.pml:581 - [local_turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][278] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 281 - wedding.pml:583 - [local_turn = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][281] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 282 - wedding.pml:584 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][282] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 283 - wedding.pml:585 - [is_boat_in_center = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][283] = 1;
		(trpt+1)->bup.oval = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 286 - wedding.pml:587 - [local_turn = 0] (0:0:1 - 4)
		IfNotBlocked
		reached[0][286] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 287 - wedding.pml:588 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][287] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 293 - wedding.pml:591 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

