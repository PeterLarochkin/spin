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
	case 5: // STATE 1 - wedding.pml:104 - [(run Chosed(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - wedding.pml:105 - [(run Chosed(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - wedding.pml:106 - [(run Chosed(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - wedding.pml:107 - [(run Chosed(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - wedding.pml:109 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Chosed */
	case 10: // STATE 1 - wedding.pml:43 - [((turn&&(wedding_team[i]==on_boat)))] (0:0:1 - 1)
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
	case 11: // STATE 2 - wedding.pml:45 - [((boat_direction==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.boat_direction)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - wedding.pml:48 - [((boat_seats[0]!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - wedding.pml:48 - [wedding_team[boat_seats[0]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(now.boat_seats[0], 4) ];
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = 3;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[0]]", now.wedding_team[ Index(now.boat_seats[0], 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 5 - wedding.pml:48 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 8 - wedding.pml:51 - [((boat_seats[1]!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.boat_seats[1]!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 9 - wedding.pml:51 - [wedding_team[boat_seats[1]] = left_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(now.boat_seats[1], 4) ];
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = 3;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[1]]", now.wedding_team[ Index(now.boat_seats[1], 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 10 - wedding.pml:51 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 13 - wedding.pml:54 - [boat_state = 0] (0:0:1 - 2)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state = 0;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 14 - wedding.pml:55 - [boat_direction = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_direction);
		now.boat_direction = 1;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 15 - wedding.pml:56 - [turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 16 - wedding.pml:57 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - wedding.pml:63 - [((boat_seats[0]!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - wedding.pml:63 - [wedding_team[boat_seats[0]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(now.boat_seats[0], 4) ];
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = 1;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[0]]", now.wedding_team[ Index(now.boat_seats[0], 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - wedding.pml:63 - [boat_seats[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 23 - wedding.pml:66 - [((boat_seats[1]!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((now.boat_seats[1]!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 24 - wedding.pml:66 - [wedding_team[boat_seats[1]] = right_bank] (0:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(now.boat_seats[1], 4) ];
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = 1;
#ifdef VAR_RANGES
		logval("wedding_team[boat_seats[1]]", now.wedding_team[ Index(now.boat_seats[1], 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 25 - wedding.pml:66 - [boat_seats[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] =  -(1);
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 28 - wedding.pml:68 - [boat_direction = 0] (0:0:1 - 2)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_direction);
		now.boat_direction = 0;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 29 - wedding.pml:69 - [boat_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = ((int)now.boat_state);
		now.boat_state = 1;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 30 - wedding.pml:70 - [turn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 31 - wedding.pml:71 - [count = (count+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 34 - wedding.pml:78 - [(((((turn&&(wedding_team[i]==left_bank))&&((boat_seats[0]!=-(1))||(boat_seats[1]!=-(1))))&&(boat_state==0))&&(boat_direction==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!(((((((int)now.turn)&&(now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==3))&&((now.boat_seats[0]!= -(1))||(now.boat_seats[1]!= -(1))))&&(((int)now.boat_state)==0))&&(((int)now.boat_direction)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 35 - wedding.pml:80 - [wedding_team[i] = on_boat] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 2;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 36 - wedding.pml:82 - [((boat_seats[0]!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 37 - wedding.pml:82 - [boat_seats[0] = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 39 - wedding.pml:83 - [boat_seats[1] = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 42 - wedding.pml:85 - [turn = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 43 - wedding.pml:90 - [(((((turn&&(wedding_team[i]==right_bank))&&((boat_seats[0]!=-(1))||(boat_seats[1]!=-(1))))&&(boat_state==1))&&(boat_direction==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!(((((((int)now.turn)&&(now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==1))&&((now.boat_seats[0]!= -(1))||(now.boat_seats[1]!= -(1))))&&(((int)now.boat_state)==1))&&(((int)now.boat_direction)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 44 - wedding.pml:92 - [wedding_team[i] = on_boat] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 2;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 45 - wedding.pml:94 - [((boat_seats[0]!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.boat_seats[0]!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 46 - wedding.pml:94 - [boat_seats[0] = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.boat_seats[0];
		now.boat_seats[0] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[0]", now.boat_seats[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 48 - wedding.pml:95 - [boat_seats[1] = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = now.boat_seats[1];
		now.boat_seats[1] = ((P0 *)_this)->i;
#ifdef VAR_RANGES
		logval("boat_seats[1]", now.boat_seats[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 51 - wedding.pml:97 - [turn = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 54 - wedding.pml:100 - [-end-] (0:0:0 - 6)
		IfNotBlocked
		reached[0][54] = 1;
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

