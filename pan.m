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

		 /* CLAIM f0 */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [(!((0==334)))] (4:0:0 - 1)
		
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
		reached[2][1] = 1;
		if (!( !((0==334))))
			continue;
		/* merge: assert(!(!((0==334))))(0, 2, 4) */
		reached[2][2] = 1;
		spin_assert( !( !((0==334))), " !( !((0==334)))", II, tt, t);
		/* merge: .(goto)(0, 5, 4) */
		reached[2][5] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 5: // STATE 1 - ref/wedding.pml:104 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - ref/wedding.pml:104 - [(run Chosed(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - ref/wedding.pml:105 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - ref/wedding.pml:105 - [(run Chosed(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - ref/wedding.pml:106 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - ref/wedding.pml:106 - [(run Chosed(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - ref/wedding.pml:107 - [turn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - ref/wedding.pml:107 - [(run Chosed(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 12 - ref/wedding.pml:109 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Chosed */
	case 14: // STATE 1 - ref/wedding.pml:43 - [((turn&&(wedding_team[i]==on_boat)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.turn)&&(now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P0 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - ref/wedding.pml:45 - [((boat_direction==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.boat_direction)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - ref/wedding.pml:48 - [((boat_seats[0]!=-(1)))] (11:0:2 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		/* merge: wedding_team[boat_seats[0]] = left_bank(11, 4, 11) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(now.boat_seats[0], 4) ];
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = 3;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[0]]", now.wedding_team[ Index(now.boat_seats[0], 4) ]);
#endif
		;
		/* merge: boat_seats[0] = -(1)(11, 5, 11) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: .(goto)(0, 7, 11) */
		reached[0][7] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 8 - ref/wedding.pml:51 - [((boat_seats[1]!=-(1)))] (58:0:6 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.boat_seats[1]!= -(1))))
			continue;
		/* merge: wedding_team[boat_seats[1]] = left_bank(58, 9, 58) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(now.boat_seats[1], 4) ];
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = 3;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[1]]", now.wedding_team[ Index(now.boat_seats[1], 4) ]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(58, 10, 58) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: .(goto)(58, 12, 58) */
		reached[0][12] = 1;
		;
		/* merge: boat_state = 0(58, 13, 58) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.boat_state);
		now.boat_state = 0;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: boat_direction = 1(58, 14, 58) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_direction);
		now.boat_direction = 1;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		/* merge: turn = 0(58, 15, 58) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: count = (count+1)(58, 16, 58) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[5] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 35, 58) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 18: // STATE 13 - ref/wedding.pml:54 - [boat_state = 0] (0:58:4 - 2)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.boat_state);
		now.boat_state = 0;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: boat_direction = 1(58, 14, 58) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boat_direction);
		now.boat_direction = 1;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		/* merge: turn = 0(58, 15, 58) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: count = (count+1)(58, 16, 58) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[3] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 35, 58) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 19: // STATE 19 - ref/wedding.pml:63 - [((boat_seats[0]!=-(1)))] (27:0:2 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		/* merge: wedding_team[boat_seats[0]] = right_bank(27, 20, 27) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(now.boat_seats[0], 4) ];
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = 1;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[0]]", now.wedding_team[ Index(now.boat_seats[0], 4) ]);
#endif
		;
		/* merge: boat_seats[0] = -(1)(27, 21, 27) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: .(goto)(0, 23, 27) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 20: // STATE 24 - ref/wedding.pml:66 - [((boat_seats[1]!=-(1)))] (58:0:6 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.boat_seats[1]!= -(1))))
			continue;
		/* merge: wedding_team[boat_seats[1]] = right_bank(58, 25, 58) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(now.boat_seats[1], 4) ];
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = 1;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[1]]", now.wedding_team[ Index(now.boat_seats[1], 4) ]);
#endif
		;
		/* merge: boat_seats[1] = -(1)(58, 26, 58) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: .(goto)(58, 28, 58) */
		reached[0][28] = 1;
		;
		/* merge: boat_direction = 0(58, 29, 58) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.boat_direction);
		now.boat_direction = 0;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		/* merge: boat_state = 1(58, 30, 58) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_state);
		now.boat_state = 1;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: turn = 0(58, 31, 58) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: count = (count+1)(58, 32, 58) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[5] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 35, 58) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 21: // STATE 29 - ref/wedding.pml:68 - [boat_direction = 0] (0:58:4 - 2)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.boat_direction);
		now.boat_direction = 0;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		/* merge: boat_state = 1(58, 30, 58) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boat_state);
		now.boat_state = 1;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: turn = 0(58, 31, 58) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: count = (count+1)(58, 32, 58) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[3] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 35, 58) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 22: // STATE 36 - ref/wedding.pml:78 - [(((((turn&&(wedding_team[i]==left_bank))&&((boat_seats[0]!=-(1))||(boat_seats[1]!=-(1))))&&(boat_state==0))&&(boat_direction==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((((((int)now.turn)&&(now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==3))&&((now.boat_seats[0]!= -(1))||(now.boat_seats[1]!= -(1))))&&(((int)now.boat_state)==0))&&(((int)now.boat_direction)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 37 - ref/wedding.pml:80 - [wedding_team[i] = on_boat] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 2;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 38 - ref/wedding.pml:82 - [((boat_seats[0]!=-(1)))] (58:0:2 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		/* merge: boat_seats[0] = i(58, 39, 58) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: .(goto)(58, 43, 58) */
		reached[0][43] = 1;
		;
		/* merge: turn = 0(58, 44, 58) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 25: // STATE 43 - ref/wedding.pml:85 - [.(goto)] (0:58:1 - 2)
		IfNotBlocked
		reached[0][43] = 1;
		;
		/* merge: turn = 0(58, 44, 58) */
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 41 - ref/wedding.pml:83 - [boat_seats[1] = i] (0:58:2 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.boat_seats[1];
		now.boat_seats[1] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: .(goto)(58, 43, 58) */
		reached[0][43] = 1;
		;
		/* merge: turn = 0(58, 44, 58) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 27: // STATE 46 - ref/wedding.pml:90 - [(((((turn&&(wedding_team[i]==right_bank))&&((boat_seats[0]!=-(1))||(boat_seats[1]!=-(1))))&&(boat_state==1))&&(boat_direction==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!(((((((int)now.turn)&&(now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==1))&&((now.boat_seats[0]!= -(1))||(now.boat_seats[1]!= -(1))))&&(((int)now.boat_state)==1))&&(((int)now.boat_direction)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 47 - ref/wedding.pml:92 - [wedding_team[i] = on_boat] (0:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 2;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 48 - ref/wedding.pml:94 - [((boat_seats[0]!=-(1)))] (58:0:2 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		/* merge: boat_seats[0] = i(58, 49, 58) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		/* merge: .(goto)(58, 53, 58) */
		reached[0][53] = 1;
		;
		/* merge: turn = 0(58, 54, 58) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 30: // STATE 53 - ref/wedding.pml:97 - [.(goto)] (0:58:1 - 2)
		IfNotBlocked
		reached[0][53] = 1;
		;
		/* merge: turn = 0(58, 54, 58) */
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 51 - ref/wedding.pml:95 - [boat_seats[1] = i] (0:58:2 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.boat_seats[1];
		now.boat_seats[1] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		/* merge: .(goto)(58, 53, 58) */
		reached[0][53] = 1;
		;
		/* merge: turn = 0(58, 54, 58) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		/* merge: .(goto)(0, 57, 58) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 58 - ref/wedding.pml:100 - [-end-] (0:0:0 - 6)
		IfNotBlocked
		reached[0][58] = 1;
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

