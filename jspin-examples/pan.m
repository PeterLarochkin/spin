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

		 /* CLAIM f2 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(!(((((((((wedding[0]==right_bank)&&(wedding[1]==right_bank))&&(wedding[2]==right_bank))&&(wedding[3]==right_bank))&&(wedding[4]==right_bank))&&(wedding[5]==right_bank))&&(count==10))&&final))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !( !(((((((((now.wedding[0]==1)&&(now.wedding[1]==1))&&(now.wedding[2]==1))&&(now.wedding[3]==1))&&(now.wedding[4]==1))&&(now.wedding[5]==1))&&(((int)now.count)==10))&&((int)now.final))))))
			continue;
		/* merge: assert(!(!(!(((((((((wedding[0]==right_bank)&&(wedding[1]==right_bank))&&(wedding[2]==right_bank))&&(wedding[3]==right_bank))&&(wedding[4]==right_bank))&&(wedding[5]==right_bank))&&(count==10))&&final)))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !( !(((((((((now.wedding[0]==1)&&(now.wedding[1]==1))&&(now.wedding[2]==1))&&(now.wedding[3]==1))&&(now.wedding[4]==1))&&(now.wedding[5]==1))&&(((int)now.count)==10))&&((int)now.final))))), " !( !( !(((((((((wedding[0]==1)&&(wedding[1]==1))&&(wedding[2]==1))&&(wedding[3]==1))&&(wedding[4]==1))&&(wedding[5]==1))&&(count==10))&&final))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P6 */
	case 5: // STATE 1 - wedding.pml:607 - [(run Chosed(4,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		if (!(addproc(II, 1, 0, 4, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - wedding.pml:607 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P5 */
	case 7: // STATE 1 - wedding.pml:606 - [(run Chosed(4,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		if (!(addproc(II, 1, 0, 4, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 2 - wedding.pml:606 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P4 */
	case 9: // STATE 1 - wedding.pml:605 - [(run Chosed(2,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 0, 2, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - wedding.pml:605 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P3 */
	case 11: // STATE 1 - wedding.pml:604 - [(run Chosed(2,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - wedding.pml:604 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P2 */
	case 13: // STATE 1 - wedding.pml:603 - [(run Chosed(0,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - wedding.pml:603 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P1 */
	case 15: // STATE 1 - wedding.pml:602 - [(run Chosed(0,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 2 - wedding.pml:602 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Chosed */
	case 17: // STATE 1 - wedding.pml:52 - [(((((((turn&&(wedding[0]==right_bank))&&(wedding[1]==right_bank))&&(wedding[2]==right_bank))&&(wedding[3]==right_bank))&&(wedding[4]==right_bank))&&(wedding[5]==right_bank)))] (4:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((((((int)now.turn)&&(now.wedding[0]==1))&&(now.wedding[1]==1))&&(now.wedding[2]==1))&&(now.wedding[3]==1))&&(now.wedding[4]==1))&&(now.wedding[5]==1))))
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
	case 18: // STATE 4 - wedding.pml:54 - [final = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.final);
		now.final = 1;
#ifdef VAR_RANGES
		logval("final", ((int)now.final));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 5 - wedding.pml:63 - [(((((turn&&isWoman)&&!(is_boat_in_center))&&(((wedding[(pair_index+1)]==left_bank)&&!(boat_state))||((wedding[(pair_index+1)]==right_bank)&&boat_state)))&&((boat_seats[0]==-(1))||(boat_seats[1]==-(1)))))] (23:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!(((((((int)now.turn)&&((int)((P0 *)_this)->isWoman))&& !(((int)now.is_boat_in_center)))&&(((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==3)&& !(((int)now.boat_state)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==1)&&((int)now.boat_state))))&&((now.boat_seats[0]== -(1))||(now.boat_seats[1]== -(1))))))
			continue;
		/* merge: turn = 0(0, 6, 23) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 20: // STATE 8 - wedding.pml:68 - [wedding[(pair_index+1)] = on_boat] (0:19:2 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = 2;
#ifdef VAR_RANGES
		logval("wedding[(Chosed:pair_index+1)]", now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]);
#endif
		;
		/* merge: local_turn = 1(19, 9, 19) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 10 - wedding.pml:71 - [((((boat_seats[0]==-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (300:0:4 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		/* merge: boat_seats[0] = (pair_index+1)(300, 11, 300) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boat_seats[0];
		now.boat_seats[0] = (((P0 *)_this)->pair_index+1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: local_turn = 0(300, 12, 300) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 20, 300) */
		reached[0][20] = 1;
		;
		/* merge: local_turn = 1(300, 21, 300) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 22, 300) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 22: // STATE 13 - wedding.pml:72 - [((((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (300:0:4 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		/* merge: boat_seats[1] = (pair_index+1)(300, 14, 300) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boat_seats[1];
		now.boat_seats[1] = (((P0 *)_this)->pair_index+1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: local_turn = 0(300, 15, 300) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 20, 300) */
		reached[0][20] = 1;
		;
		/* merge: local_turn = 1(300, 21, 300) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 22, 300) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 23: // STATE 16 - wedding.pml:73 - [((((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1)))&&local_turn))] (300:0:4 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))&&((int)now.local_turn))))
			continue;
		/* merge: boat_seats[0] = (pair_index+1)(300, 17, 300) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boat_seats[0];
		now.boat_seats[0] = (((P0 *)_this)->pair_index+1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: local_turn = 0(300, 18, 300) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 20, 300) */
		reached[0][20] = 1;
		;
		/* merge: local_turn = 1(300, 21, 300) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 22, 300) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 24: // STATE 21 - wedding.pml:75 - [local_turn = 1] (0:300:2 - 4)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 22, 300) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 24 - wedding.pml:87 - [(((((turn&&!(isWoman))&&!(is_boat_in_center))&&(((wedding[pair_index]==left_bank)&&!(boat_state))||((wedding[pair_index]==right_bank)&&boat_state)))&&((boat_seats[0]==-(1))||(boat_seats[1]==-(1)))))] (42:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((((int)now.turn)&& !(((int)((P0 *)_this)->isWoman)))&& !(((int)now.is_boat_in_center)))&&(((now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==3)&& !(((int)now.boat_state)))||((now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==1)&&((int)now.boat_state))))&&((now.boat_seats[0]== -(1))||(now.boat_seats[1]== -(1))))))
			continue;
		/* merge: turn = 0(0, 25, 42) */
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 26: // STATE 27 - wedding.pml:92 - [wedding[pair_index] = on_boat] (0:38:2 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(((P0 *)_this)->pair_index, 6) ];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = 2;
#ifdef VAR_RANGES
		logval("wedding[Chosed:pair_index]", now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]);
#endif
		;
		/* merge: local_turn = 1(38, 28, 38) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 29 - wedding.pml:95 - [((((boat_seats[0]==-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (300:0:4 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		/* merge: boat_seats[0] = pair_index(300, 30, 300) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->pair_index;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: local_turn = 0(300, 31, 300) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 39, 300) */
		reached[0][39] = 1;
		;
		/* merge: local_turn = 1(300, 40, 300) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 41, 300) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 28: // STATE 32 - wedding.pml:96 - [((((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1)))&&local_turn))] (300:0:4 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))&&((int)now.local_turn))))
			continue;
		/* merge: boat_seats[1] = pair_index(300, 33, 300) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boat_seats[1];
		now.boat_seats[1] = ((P0 *)_this)->pair_index;
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: local_turn = 0(300, 34, 300) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 39, 300) */
		reached[0][39] = 1;
		;
		/* merge: local_turn = 1(300, 40, 300) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 41, 300) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 29: // STATE 35 - wedding.pml:97 - [((((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1)))&&local_turn))] (300:0:4 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))&&((int)now.local_turn))))
			continue;
		/* merge: boat_seats[0] = pair_index(300, 36, 300) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->pair_index;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: local_turn = 0(300, 37, 300) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 39, 300) */
		reached[0][39] = 1;
		;
		/* merge: local_turn = 1(300, 40, 300) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 41, 300) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 30: // STATE 40 - wedding.pml:99 - [local_turn = 1] (0:300:2 - 4)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 41, 300) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 43 - wedding.pml:107 - [((((turn&&isWoman)&&!(is_boat_in_center))&&(wedding[(pair_index+1)]==on_boat)))] (64:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!((((((int)now.turn)&&((int)((P0 *)_this)->isWoman))&& !(((int)now.is_boat_in_center)))&&(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 44, 64) */
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 32: // STATE 46 - wedding.pml:117 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 47 - wedding.pml:142 - [((local_turn&&(((((wedding[0]!=on_boat)&&(wedding[2]!=on_boat))&&(wedding[4]!=on_boat))||(wedding[pair_index]==on_boat))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))))))] (300:0:3 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((int)now.local_turn)&&(((((now.wedding[0]!=2)&&(now.wedding[2]!=2))&&(now.wedding[4]!=2))||(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1))))))))))
			continue;
		/* merge: is_boat_in_center = 1(300, 48, 300) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 1;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: local_turn = 1(300, 49, 300) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 50, 300) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 63, 300) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 34: // STATE 63 - wedding.pml:177 - [.(goto)] (0:300:0 - 2)
		IfNotBlocked
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 51 - wedding.pml:170 - [((!(local_turn)&&(((((wedding[0]!=on_boat)&&(wedding[2]!=on_boat))&&(wedding[4]!=on_boat))||(wedding[pair_index]==on_boat))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(( !(((int)now.local_turn))&&(((((now.wedding[0]!=2)&&(now.wedding[2]!=2))&&(now.wedding[4]!=2))||(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 52 - wedding.pml:174 - [((local_turn&&!(boat_state)))] (300:0:3 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((((int)now.local_turn)&& !(((int)now.boat_state)))))
			continue;
		/* merge: wedding[(pair_index+1)] = left_bank(300, 53, 300) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[(Chosed:pair_index+1)]", now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 54, 300) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 55, 300) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 61, 300) */
		reached[0][61] = 1;
		;
		/* merge: .(goto)(300, 63, 300) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 37: // STATE 61 - wedding.pml:177 - [.(goto)] (0:300:0 - 2)
		IfNotBlocked
		reached[0][61] = 1;
		;
		/* merge: .(goto)(300, 63, 300) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 38: // STATE 56 - wedding.pml:175 - [((local_turn&&boat_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (!((((int)now.local_turn)&&((int)now.boat_state))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 57 - wedding.pml:175 - [(local_turn)] (300:0:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!(((int)now.local_turn)))
			continue;
		/* merge: wedding[(pair_index+1)] = right_bank(300, 58, 300) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[(Chosed:pair_index+1)]", now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]);
#endif
		;
		/* merge: turn = 1(300, 59, 300) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 61, 300) */
		reached[0][61] = 1;
		;
		/* merge: .(goto)(300, 63, 300) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 40: // STATE 65 - wedding.pml:183 - [((((turn&&!(isWoman))&&!(is_boat_in_center))&&(wedding[pair_index]==on_boat)))] (85:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!((((((int)now.turn)&& !(((int)((P0 *)_this)->isWoman)))&& !(((int)now.is_boat_in_center)))&&(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 66, 85) */
		reached[0][66] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 68 - wedding.pml:193 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 69 - wedding.pml:216 - [(((local_turn&&((((wedding[1]!=on_boat)&&(wedding[3]!=on_boat))&&(wedding[5]!=on_boat))||(wedding[(pair_index+1)]==on_boat)))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank))))))))] (300:0:3 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!(((((int)now.local_turn)&&((((now.wedding[1]!=2)&&(now.wedding[3]!=2))&&(now.wedding[5]!=2))||(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2)))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))))))
			continue;
		/* merge: is_boat_in_center = 1(300, 70, 300) */
		reached[0][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 1;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: local_turn = 1(300, 71, 300) */
		reached[0][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 72, 300) */
		reached[0][72] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 84, 300) */
		reached[0][84] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 43: // STATE 84 - wedding.pml:250 - [.(goto)] (0:300:0 - 2)
		IfNotBlocked
		reached[0][84] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 44: // STATE 73 - wedding.pml:243 - [(((!(local_turn)&&((((wedding[1]!=on_boat)&&(wedding[3]!=on_boat))&&(wedding[5]!=on_boat))||(wedding[(pair_index+1)]==on_boat)))&&((!(boat_state)&&(((!(((wedding[1]==left_bank)&&(wedding[0]!=left_bank)))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!(((wedding[3]==left_bank)&&(wedding[2]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!(((wedding[5]==left_bank)&&(wedding[4]!=left_bank)))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))||(boat_state&&(((!(((wedding[1]==right_bank)&&(wedding[0]!=right_bank)))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!(((wedding[3]==right_bank)&&(wedding[2]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!(((wedding[5]==right_bank)&&(wedding[4]!=right_bank)))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!((( !(((int)now.local_turn))&&((((now.wedding[1]!=2)&&(now.wedding[3]!=2))&&(now.wedding[5]!=2))||(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2)))&&(( !(((int)now.boat_state))&&((( !(((now.wedding[1]==3)&&(now.wedding[0]!=3)))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !(((now.wedding[3]==3)&&(now.wedding[2]!=3)))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !(((now.wedding[5]==3)&&(now.wedding[4]!=3)))||((now.wedding[0]!=3)&&(now.wedding[2]!=3)))))||(((int)now.boat_state)&&((( !(((now.wedding[1]==1)&&(now.wedding[0]!=1)))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !(((now.wedding[3]==1)&&(now.wedding[2]!=1)))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !(((now.wedding[5]==1)&&(now.wedding[4]!=1)))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 74 - wedding.pml:247 - [((local_turn&&!(boat_state)))] (300:0:3 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!((((int)now.local_turn)&& !(((int)now.boat_state)))))
			continue;
		/* merge: wedding[pair_index] = left_bank(300, 75, 300) */
		reached[0][75] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(((P0 *)_this)->pair_index, 6) ];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[Chosed:pair_index]", now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]);
#endif
		;
		/* merge: local_turn = 1(300, 76, 300) */
		reached[0][76] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 77, 300) */
		reached[0][77] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 82, 300) */
		reached[0][82] = 1;
		;
		/* merge: .(goto)(300, 84, 300) */
		reached[0][84] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 46: // STATE 82 - wedding.pml:250 - [.(goto)] (0:300:0 - 2)
		IfNotBlocked
		reached[0][82] = 1;
		;
		/* merge: .(goto)(300, 84, 300) */
		reached[0][84] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 47: // STATE 78 - wedding.pml:248 - [((local_turn&&boat_state))] (300:0:2 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		if (!((((int)now.local_turn)&&((int)now.boat_state))))
			continue;
		/* merge: wedding[pair_index] = right_bank(300, 79, 300) */
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(((P0 *)_this)->pair_index, 6) ];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[Chosed:pair_index]", now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]);
#endif
		;
		/* merge: turn = 1(300, 80, 300) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 82, 300) */
		reached[0][82] = 1;
		;
		/* merge: .(goto)(300, 84, 300) */
		reached[0][84] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 48: // STATE 86 - wedding.pml:255 - [((((turn&&!(isWoman))&&is_boat_in_center)&&(wedding[pair_index]==on_boat)))] (192:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		if (!((((((int)now.turn)&& !(((int)((P0 *)_this)->isWoman)))&&((int)now.is_boat_in_center))&&(now.wedding[ Index(((P0 *)_this)->pair_index, 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 87, 192) */
		reached[0][87] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 89 - wedding.pml:263 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 90 - wedding.pml:287 - [((local_turn&&((!(boat_state)&&((((!((wedding[1]==right_bank))||(wedding[0]==right_bank))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||((wedding[(pair_index+1)]==right_bank)&&1)))||(boat_state&&((((!((wedding[1]==left_bank))||(wedding[0]==left_bank))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank)))||((wedding[(pair_index+1)]==left_bank)&&1))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!((((int)now.local_turn)&&(( !(((int)now.boat_state))&&(((( !((now.wedding[1]==1))||(now.wedding[0]==1))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==1)&&1)))||(((int)now.boat_state)&&(((( !((now.wedding[1]==3))||(now.wedding[0]==3))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==3)&&1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 91 - wedding.pml:291 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (101:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 92, 101) */
		reached[0][92] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 52: // STATE 93 - wedding.pml:294 - [((!(boat_state)&&local_turn))] (300:0:11 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 94, 300) */
		reached[0][94] = 1;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 95, 300) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 96, 300) */
		reached[0][96] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 102, 300) */
		reached[0][102] = 1;
		;
		/* merge: local_turn = 1(300, 103, 300) */
		reached[0][103] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 104, 300) */
		reached[0][104] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 105, 300) */
		reached[0][105] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 106, 300) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 107, 300) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 108, 300) */
		reached[0][108] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[9] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[10] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 15 */
	case 53: // STATE 97 - wedding.pml:298 - [((boat_state&&local_turn))] (300:0:11 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 98, 300) */
		reached[0][98] = 1;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 99, 300) */
		reached[0][99] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 100, 300) */
		reached[0][100] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 102, 300) */
		reached[0][102] = 1;
		;
		/* merge: local_turn = 1(300, 103, 300) */
		reached[0][103] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 104, 300) */
		reached[0][104] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 105, 300) */
		reached[0][105] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 106, 300) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 107, 300) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 108, 300) */
		reached[0][108] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[9] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[10] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 15 */
	case 54: // STATE 103 - wedding.pml:303 - [local_turn = 1] (0:300:8 - 3)
		IfNotBlocked
		reached[0][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 104, 300) */
		reached[0][104] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 105, 300) */
		reached[0][105] = 1;
		(trpt+1)->bup.ovals[2] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 106, 300) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 107, 300) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 108, 300) */
		reached[0][108] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 55: // STATE 109 - wedding.pml:309 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (117:0:1 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		/* merge: local_turn = 1(0, 110, 117) */
		reached[0][110] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 56: // STATE 111 - wedding.pml:312 - [((!(boat_state)&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 112, 300) */
		reached[0][112] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 113, 300) */
		reached[0][113] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 118, 300) */
		reached[0][118] = 1;
		;
		/* merge: local_turn = 1(300, 119, 300) */
		reached[0][119] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 120, 300) */
		reached[0][120] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 121, 300) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 122, 300) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 123, 300) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 57: // STATE 114 - wedding.pml:315 - [((boat_state&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 115, 300) */
		reached[0][115] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 116, 300) */
		reached[0][116] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 118, 300) */
		reached[0][118] = 1;
		;
		/* merge: local_turn = 1(300, 119, 300) */
		reached[0][119] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 120, 300) */
		reached[0][120] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 121, 300) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 122, 300) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 123, 300) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 58: // STATE 119 - wedding.pml:319 - [local_turn = 1] (0:300:7 - 3)
		IfNotBlocked
		reached[0][119] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 120, 300) */
		reached[0][120] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 121, 300) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 122, 300) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 123, 300) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 59: // STATE 124 - wedding.pml:324 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (132:0:1 - 1)
		IfNotBlocked
		reached[0][124] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 125, 132) */
		reached[0][125] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 60: // STATE 126 - wedding.pml:327 - [((!(boat_state)&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 127, 300) */
		reached[0][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 128, 300) */
		reached[0][128] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 133, 300) */
		reached[0][133] = 1;
		;
		/* merge: local_turn = 1(300, 134, 300) */
		reached[0][134] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 135, 300) */
		reached[0][135] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 136, 300) */
		reached[0][136] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 137, 300) */
		reached[0][137] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 138, 300) */
		reached[0][138] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 61: // STATE 129 - wedding.pml:330 - [((boat_state&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 130, 300) */
		reached[0][130] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 131, 300) */
		reached[0][131] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 133, 300) */
		reached[0][133] = 1;
		;
		/* merge: local_turn = 1(300, 134, 300) */
		reached[0][134] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 135, 300) */
		reached[0][135] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 136, 300) */
		reached[0][136] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 137, 300) */
		reached[0][137] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 138, 300) */
		reached[0][138] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 62: // STATE 134 - wedding.pml:334 - [local_turn = 1] (0:300:7 - 3)
		IfNotBlocked
		reached[0][134] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 135, 300) */
		reached[0][135] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 136, 300) */
		reached[0][136] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 137, 300) */
		reached[0][137] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 138, 300) */
		reached[0][138] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 140, 300) */
		reached[0][140] = 1;
		;
		/* merge: local_turn = 1(300, 141, 300) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 63: // STATE 141 - wedding.pml:340 - [local_turn = 1] (0:300:2 - 4)
		IfNotBlocked
		reached[0][141] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 142, 300) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 64: // STATE 191 - wedding.pml:415 - [.(goto)] (0:300:0 - 2)
		IfNotBlocked
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 65: // STATE 143 - wedding.pml:365 - [((!(local_turn)&&((!(boat_state)&&((((!((wedding[1]==right_bank))||(wedding[0]==right_bank))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||((wedding[(pair_index+1)]==right_bank)&&1)))||(boat_state&&((((!((wedding[1]==left_bank))||(wedding[0]==left_bank))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank)))||((wedding[(pair_index+1)]==left_bank)&&1))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][143] = 1;
		if (!(( !(((int)now.local_turn))&&(( !(((int)now.boat_state))&&(((( !((now.wedding[1]==1))||(now.wedding[0]==1))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==1)&&1)))||(((int)now.boat_state)&&(((( !((now.wedding[1]==3))||(now.wedding[0]==3))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3)))||((now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==3)&&1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 144 - wedding.pml:369 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (154:0:1 - 1)
		IfNotBlocked
		reached[0][144] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 145, 154) */
		reached[0][145] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 146 - wedding.pml:372 - [((!(boat_state)&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][146] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 147, 300) */
		reached[0][147] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 148, 300) */
		reached[0][148] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 149, 300) */
		reached[0][149] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 155, 300) */
		reached[0][155] = 1;
		;
		/* merge: local_turn = 1(300, 156, 300) */
		reached[0][156] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 157, 300) */
		reached[0][157] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 158, 300) */
		reached[0][158] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 159, 300) */
		reached[0][159] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 68: // STATE 150 - wedding.pml:376 - [((boat_state&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 151, 300) */
		reached[0][151] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 152, 300) */
		reached[0][152] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 153, 300) */
		reached[0][153] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 155, 300) */
		reached[0][155] = 1;
		;
		/* merge: local_turn = 1(300, 156, 300) */
		reached[0][156] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 157, 300) */
		reached[0][157] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 158, 300) */
		reached[0][158] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 159, 300) */
		reached[0][159] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 69: // STATE 156 - wedding.pml:381 - [local_turn = 1] (0:300:6 - 3)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 157, 300) */
		reached[0][157] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 158, 300) */
		reached[0][158] = 1;
		(trpt+1)->bup.ovals[2] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 159, 300) */
		reached[0][159] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 70: // STATE 160 - wedding.pml:385 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (168:0:1 - 1)
		IfNotBlocked
		reached[0][160] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		/* merge: local_turn = 1(0, 161, 168) */
		reached[0][161] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 162 - wedding.pml:388 - [((!(boat_state)&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][162] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 163, 300) */
		reached[0][163] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 164, 300) */
		reached[0][164] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 169, 300) */
		reached[0][169] = 1;
		;
		/* merge: local_turn = 1(300, 170, 300) */
		reached[0][170] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 171, 300) */
		reached[0][171] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 172, 300) */
		reached[0][172] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 72: // STATE 165 - wedding.pml:391 - [((boat_state&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][165] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 166, 300) */
		reached[0][166] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 167, 300) */
		reached[0][167] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 169, 300) */
		reached[0][169] = 1;
		;
		/* merge: local_turn = 1(300, 170, 300) */
		reached[0][170] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 171, 300) */
		reached[0][171] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 172, 300) */
		reached[0][172] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 73: // STATE 170 - wedding.pml:395 - [local_turn = 1] (0:300:5 - 3)
		IfNotBlocked
		reached[0][170] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 171, 300) */
		reached[0][171] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 172, 300) */
		reached[0][172] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 74: // STATE 173 - wedding.pml:398 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (181:0:1 - 1)
		IfNotBlocked
		reached[0][173] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 174, 181) */
		reached[0][174] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 175 - wedding.pml:401 - [((!(boat_state)&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][175] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 176, 300) */
		reached[0][176] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 177, 300) */
		reached[0][177] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 182, 300) */
		reached[0][182] = 1;
		;
		/* merge: local_turn = 1(300, 183, 300) */
		reached[0][183] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 184, 300) */
		reached[0][184] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 185, 300) */
		reached[0][185] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 76: // STATE 178 - wedding.pml:404 - [((boat_state&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][178] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 179, 300) */
		reached[0][179] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 180, 300) */
		reached[0][180] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 182, 300) */
		reached[0][182] = 1;
		;
		/* merge: local_turn = 1(300, 183, 300) */
		reached[0][183] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 184, 300) */
		reached[0][184] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 185, 300) */
		reached[0][185] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 77: // STATE 183 - wedding.pml:408 - [local_turn = 1] (0:300:5 - 3)
		IfNotBlocked
		reached[0][183] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 184, 300) */
		reached[0][184] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 185, 300) */
		reached[0][185] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 187, 300) */
		reached[0][187] = 1;
		;
		/* merge: local_turn = 0(300, 188, 300) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 78: // STATE 188 - wedding.pml:412 - [local_turn = 0] (0:300:2 - 4)
		IfNotBlocked
		reached[0][188] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 189, 300) */
		reached[0][189] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 191, 300) */
		reached[0][191] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 79: // STATE 193 - wedding.pml:420 - [((((turn&&isWoman)&&is_boat_in_center)&&(wedding[(pair_index+1)]==on_boat)))] (299:0:1 - 1)
		IfNotBlocked
		reached[0][193] = 1;
		if (!((((((int)now.turn)&&((int)((P0 *)_this)->isWoman))&&((int)now.is_boat_in_center))&&(now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ]==2))))
			continue;
		/* merge: turn = 0(0, 194, 299) */
		reached[0][194] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 80: // STATE 196 - wedding.pml:429 - [local_turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 197 - wedding.pml:461 - [(((local_turn&&(!((((wedding[0]==on_boat)||(wedding[2]==on_boat))||(wedding[4]==on_boat)))||((((!(boat_state)&&(!((wedding[1]==right_bank))||(wedding[0]==right_bank)))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||(((boat_state&&(!((wedding[1]==left_bank))||(wedding[0]==left_bank)))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank))))))&&(!(((((wedding[1]==on_boat)&&((pair_index+1)!=1))||((wedding[3]==on_boat)&&((pair_index+1)!=3)))||((wedding[5]==on_boat)&&((pair_index+1)!=5))))||((!(boat_state)&&(((!((wedding[1]==on_boat))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))||(boat_state&&(((!((wedding[1]==on_boat))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][197] = 1;
		if (!(((((int)now.local_turn)&&( !((((now.wedding[0]==2)||(now.wedding[2]==2))||(now.wedding[4]==2)))||(((( !(((int)now.boat_state))&&( !((now.wedding[1]==1))||(now.wedding[0]==1)))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||(((((int)now.boat_state)&&( !((now.wedding[1]==3))||(now.wedding[0]==3)))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3))))))&&( !(((((now.wedding[1]==2)&&((((P0 *)_this)->pair_index+1)!=1))||((now.wedding[3]==2)&&((((P0 *)_this)->pair_index+1)!=3)))||((now.wedding[5]==2)&&((((P0 *)_this)->pair_index+1)!=5))))||(( !(((int)now.boat_state))&&((( !((now.wedding[1]==2))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))||(((int)now.boat_state)&&((( !((now.wedding[1]==2))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=3)&&(now.wedding[2]!=3))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 198 - wedding.pml:466 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (208:0:1 - 1)
		IfNotBlocked
		reached[0][198] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 199, 208) */
		reached[0][199] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 200 - wedding.pml:469 - [((!(boat_state)&&local_turn))] (300:0:11 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 201, 300) */
		reached[0][201] = 1;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 202, 300) */
		reached[0][202] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 203, 300) */
		reached[0][203] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 209, 300) */
		reached[0][209] = 1;
		;
		/* merge: local_turn = 1(300, 210, 300) */
		reached[0][210] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 211, 300) */
		reached[0][211] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 212, 300) */
		reached[0][212] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 213, 300) */
		reached[0][213] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 214, 300) */
		reached[0][214] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 215, 300) */
		reached[0][215] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[9] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[10] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 15 */
	case 84: // STATE 204 - wedding.pml:473 - [((boat_state&&local_turn))] (300:0:11 - 1)
		IfNotBlocked
		reached[0][204] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 205, 300) */
		reached[0][205] = 1;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 206, 300) */
		reached[0][206] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 207, 300) */
		reached[0][207] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 209, 300) */
		reached[0][209] = 1;
		;
		/* merge: local_turn = 1(300, 210, 300) */
		reached[0][210] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 211, 300) */
		reached[0][211] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 212, 300) */
		reached[0][212] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 213, 300) */
		reached[0][213] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 214, 300) */
		reached[0][214] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 215, 300) */
		reached[0][215] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[9] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[10] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 15 */
	case 85: // STATE 210 - wedding.pml:478 - [local_turn = 1] (0:300:8 - 3)
		IfNotBlocked
		reached[0][210] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 211, 300) */
		reached[0][211] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 212, 300) */
		reached[0][212] = 1;
		(trpt+1)->bup.ovals[2] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 213, 300) */
		reached[0][213] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 214, 300) */
		reached[0][214] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 215, 300) */
		reached[0][215] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 86: // STATE 216 - wedding.pml:484 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (224:0:1 - 1)
		IfNotBlocked
		reached[0][216] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		/* merge: local_turn = 1(0, 217, 224) */
		reached[0][217] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 87: // STATE 218 - wedding.pml:487 - [((!(boat_state)&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 219, 300) */
		reached[0][219] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 220, 300) */
		reached[0][220] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 225, 300) */
		reached[0][225] = 1;
		;
		/* merge: local_turn = 1(300, 226, 300) */
		reached[0][226] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 227, 300) */
		reached[0][227] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 228, 300) */
		reached[0][228] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 229, 300) */
		reached[0][229] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 230, 300) */
		reached[0][230] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 88: // STATE 221 - wedding.pml:490 - [((boat_state&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][221] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 222, 300) */
		reached[0][222] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 223, 300) */
		reached[0][223] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 225, 300) */
		reached[0][225] = 1;
		;
		/* merge: local_turn = 1(300, 226, 300) */
		reached[0][226] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 227, 300) */
		reached[0][227] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 228, 300) */
		reached[0][228] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 229, 300) */
		reached[0][229] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 230, 300) */
		reached[0][230] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 89: // STATE 226 - wedding.pml:494 - [local_turn = 1] (0:300:7 - 3)
		IfNotBlocked
		reached[0][226] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 227, 300) */
		reached[0][227] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 228, 300) */
		reached[0][228] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 229, 300) */
		reached[0][229] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 230, 300) */
		reached[0][230] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 90: // STATE 231 - wedding.pml:499 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (239:0:1 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 232, 239) */
		reached[0][232] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 91: // STATE 233 - wedding.pml:502 - [((!(boat_state)&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 234, 300) */
		reached[0][234] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 235, 300) */
		reached[0][235] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 240, 300) */
		reached[0][240] = 1;
		;
		/* merge: local_turn = 1(300, 241, 300) */
		reached[0][241] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 242, 300) */
		reached[0][242] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 243, 300) */
		reached[0][243] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 244, 300) */
		reached[0][244] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 245, 300) */
		reached[0][245] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 92: // STATE 236 - wedding.pml:505 - [((boat_state&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 237, 300) */
		reached[0][237] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 238, 300) */
		reached[0][238] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 240, 300) */
		reached[0][240] = 1;
		;
		/* merge: local_turn = 1(300, 241, 300) */
		reached[0][241] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 242, 300) */
		reached[0][242] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 243, 300) */
		reached[0][243] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 244, 300) */
		reached[0][244] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 245, 300) */
		reached[0][245] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 93: // STATE 241 - wedding.pml:509 - [local_turn = 1] (0:300:7 - 3)
		IfNotBlocked
		reached[0][241] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 242, 300) */
		reached[0][242] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 243, 300) */
		reached[0][243] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: boat_state = !(boat_state)(300, 244, 300) */
		reached[0][244] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_state);
		now.boat_state =  !(((int)now.boat_state));
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: count = (count+1)(300, 245, 300) */
		reached[0][245] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.count);
		now.count = (((int)now.count)+1);
#ifdef VAR_RANGES
		logval("count", ((int)now.count));
#endif
		;
		/* merge: .(goto)(300, 247, 300) */
		reached[0][247] = 1;
		;
		/* merge: local_turn = 1(300, 248, 300) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 94: // STATE 248 - wedding.pml:515 - [local_turn = 1] (0:300:2 - 4)
		IfNotBlocked
		reached[0][248] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 249, 300) */
		reached[0][249] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 95: // STATE 298 - wedding.pml:598 - [.(goto)] (0:300:0 - 2)
		IfNotBlocked
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 96: // STATE 250 - wedding.pml:548 - [(((!(local_turn)&&(!((((wedding[0]==on_boat)||(wedding[2]==on_boat))||(wedding[4]==on_boat)))||((((!(boat_state)&&(!((wedding[1]==right_bank))||(wedding[0]==right_bank)))&&(!((wedding[3]==right_bank))||(wedding[2]==right_bank)))&&(!((wedding[5]==right_bank))||(wedding[4]==right_bank)))||(((boat_state&&(!((wedding[1]==left_bank))||(wedding[0]==left_bank)))&&(!((wedding[3]==left_bank))||(wedding[2]==left_bank)))&&(!((wedding[5]==left_bank))||(wedding[4]==left_bank))))))&&(!(((((wedding[1]==on_boat)&&((pair_index+1)!=1))||((wedding[3]==on_boat)&&((pair_index+1)!=3)))||((wedding[5]==on_boat)&&((pair_index+1)!=5))))||((!(boat_state)&&(((!((wedding[1]==on_boat))||((wedding[2]!=right_bank)&&(wedding[4]!=right_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=right_bank)&&(wedding[4]!=right_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=right_bank)&&(wedding[2]!=right_bank)))))||(boat_state&&(((!((wedding[1]==on_boat))||((wedding[2]!=left_bank)&&(wedding[4]!=left_bank)))&&(!((wedding[3]==on_boat))||((wedding[0]!=left_bank)&&(wedding[4]!=left_bank))))&&(!((wedding[5]==on_boat))||((wedding[0]!=left_bank)&&(wedding[2]!=left_bank)))))))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][250] = 1;
		if (!((( !(((int)now.local_turn))&&( !((((now.wedding[0]==2)||(now.wedding[2]==2))||(now.wedding[4]==2)))||(((( !(((int)now.boat_state))&&( !((now.wedding[1]==1))||(now.wedding[0]==1)))&&( !((now.wedding[3]==1))||(now.wedding[2]==1)))&&( !((now.wedding[5]==1))||(now.wedding[4]==1)))||(((((int)now.boat_state)&&( !((now.wedding[1]==3))||(now.wedding[0]==3)))&&( !((now.wedding[3]==3))||(now.wedding[2]==3)))&&( !((now.wedding[5]==3))||(now.wedding[4]==3))))))&&( !(((((now.wedding[1]==2)&&((((P0 *)_this)->pair_index+1)!=1))||((now.wedding[3]==2)&&((((P0 *)_this)->pair_index+1)!=3)))||((now.wedding[5]==2)&&((((P0 *)_this)->pair_index+1)!=5))))||(( !(((int)now.boat_state))&&((( !((now.wedding[1]==2))||((now.wedding[2]!=1)&&(now.wedding[4]!=1)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=1)&&(now.wedding[4]!=1))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=1)&&(now.wedding[2]!=1)))))||(((int)now.boat_state)&&((( !((now.wedding[1]==2))||((now.wedding[2]!=3)&&(now.wedding[4]!=3)))&&( !((now.wedding[3]==2))||((now.wedding[0]!=3)&&(now.wedding[4]!=3))))&&( !((now.wedding[5]==2))||((now.wedding[0]!=3)&&(now.wedding[2]!=3))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 251 - wedding.pml:553 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]!=-(1))))] (261:0:1 - 1)
		IfNotBlocked
		reached[0][251] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 252, 261) */
		reached[0][252] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 98: // STATE 253 - wedding.pml:556 - [((!(boat_state)&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][253] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 254, 300) */
		reached[0][254] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 255, 300) */
		reached[0][255] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 256, 300) */
		reached[0][256] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 262, 300) */
		reached[0][262] = 1;
		;
		/* merge: local_turn = 1(300, 263, 300) */
		reached[0][263] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 264, 300) */
		reached[0][264] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 265, 300) */
		reached[0][265] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 266, 300) */
		reached[0][266] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 99: // STATE 257 - wedding.pml:560 - [((boat_state&&local_turn))] (300:0:9 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 258, 300) */
		reached[0][258] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 259, 300) */
		reached[0][259] = 1;
		(trpt+1)->bup.ovals[1] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 260, 300) */
		reached[0][260] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 262, 300) */
		reached[0][262] = 1;
		;
		/* merge: local_turn = 1(300, 263, 300) */
		reached[0][263] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 264, 300) */
		reached[0][264] = 1;
		(trpt+1)->bup.ovals[4] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 265, 300) */
		reached[0][265] = 1;
		(trpt+1)->bup.ovals[5] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 266, 300) */
		reached[0][266] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 13 */
	case 100: // STATE 263 - wedding.pml:565 - [local_turn = 1] (0:300:6 - 3)
		IfNotBlocked
		reached[0][263] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 264, 300) */
		reached[0][264] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 265, 300) */
		reached[0][265] = 1;
		(trpt+1)->bup.ovals[2] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 266, 300) */
		reached[0][266] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 101: // STATE 267 - wedding.pml:569 - [(((boat_seats[0]!=-(1))&&(boat_seats[1]==-(1))))] (275:0:1 - 1)
		IfNotBlocked
		reached[0][267] = 1;
		if (!(((now.boat_seats[0]!= -(1))&&(now.boat_seats[1]== -(1)))))
			continue;
		/* merge: local_turn = 1(0, 268, 275) */
		reached[0][268] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 102: // STATE 269 - wedding.pml:572 - [((!(boat_state)&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][269] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = left_bank(300, 270, 300) */
		reached[0][270] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 271, 300) */
		reached[0][271] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 276, 300) */
		reached[0][276] = 1;
		;
		/* merge: local_turn = 1(300, 277, 300) */
		reached[0][277] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 278, 300) */
		reached[0][278] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 279, 300) */
		reached[0][279] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 103: // STATE 272 - wedding.pml:575 - [((boat_state&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][272] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[0]] = right_bank(300, 273, 300) */
		reached[0][273] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[0], 6) ];
		now.wedding[ Index(now.boat_seats[0], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[0]]", now.wedding[ Index(now.boat_seats[0], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 274, 300) */
		reached[0][274] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 276, 300) */
		reached[0][276] = 1;
		;
		/* merge: local_turn = 1(300, 277, 300) */
		reached[0][277] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 278, 300) */
		reached[0][278] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 279, 300) */
		reached[0][279] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 104: // STATE 277 - wedding.pml:579 - [local_turn = 1] (0:300:5 - 3)
		IfNotBlocked
		reached[0][277] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[0] = -(1)(300, 278, 300) */
		reached[0][278] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 279, 300) */
		reached[0][279] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 105: // STATE 280 - wedding.pml:582 - [(((boat_seats[0]==-(1))&&(boat_seats[1]!=-(1))))] (288:0:1 - 1)
		IfNotBlocked
		reached[0][280] = 1;
		if (!(((now.boat_seats[0]== -(1))&&(now.boat_seats[1]!= -(1)))))
			continue;
		/* merge: local_turn = 1(0, 281, 288) */
		reached[0][281] = 1;
		(trpt+1)->bup.oval = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 106: // STATE 282 - wedding.pml:585 - [((!(boat_state)&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][282] = 1;
		if (!(( !(((int)now.boat_state))&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = left_bank(300, 283, 300) */
		reached[0][283] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 3;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 284, 300) */
		reached[0][284] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 289, 300) */
		reached[0][289] = 1;
		;
		/* merge: local_turn = 1(300, 290, 300) */
		reached[0][290] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 291, 300) */
		reached[0][291] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 292, 300) */
		reached[0][292] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 107: // STATE 285 - wedding.pml:588 - [((boat_state&&local_turn))] (300:0:7 - 1)
		IfNotBlocked
		reached[0][285] = 1;
		if (!((((int)now.boat_state)&&((int)now.local_turn))))
			continue;
		/* merge: wedding[boat_seats[1]] = right_bank(300, 286, 300) */
		reached[0][286] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.wedding[ Index(now.boat_seats[1], 6) ];
		now.wedding[ Index(now.boat_seats[1], 6) ] = 1;
#ifdef VAR_RANGES
		logval("wedding[boat_seats[1]]", now.wedding[ Index(now.boat_seats[1], 6) ]);
#endif
		;
		/* merge: local_turn = 0(300, 287, 300) */
		reached[0][287] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: .(goto)(300, 289, 300) */
		reached[0][289] = 1;
		;
		/* merge: local_turn = 1(300, 290, 300) */
		reached[0][290] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 291, 300) */
		reached[0][291] = 1;
		(trpt+1)->bup.ovals[3] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 292, 300) */
		reached[0][292] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 108: // STATE 290 - wedding.pml:592 - [local_turn = 1] (0:300:5 - 3)
		IfNotBlocked
		reached[0][290] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 1;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: boat_seats[1] = -(1)(300, 291, 300) */
		reached[0][291] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: is_boat_in_center = 0(300, 292, 300) */
		reached[0][292] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.is_boat_in_center);
		now.is_boat_in_center = 0;
#ifdef VAR_RANGES
		logval("is_boat_in_center", ((int)now.is_boat_in_center));
#endif
		;
		/* merge: .(goto)(300, 294, 300) */
		reached[0][294] = 1;
		;
		/* merge: local_turn = 0(300, 295, 300) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 109: // STATE 295 - wedding.pml:596 - [local_turn = 0] (0:300:2 - 4)
		IfNotBlocked
		reached[0][295] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.local_turn);
		now.local_turn = 0;
#ifdef VAR_RANGES
		logval("local_turn", ((int)now.local_turn));
#endif
		;
		/* merge: turn = 1(300, 296, 300) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(300, 298, 300) */
		reached[0][298] = 1;
		;
		/* merge: .(goto)(0, 301, 300) */
		reached[0][301] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 110: // STATE 303 - wedding.pml:600 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][303] = 1;
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

