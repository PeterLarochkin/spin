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
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [(!((1==334)))] (4:0:0 - 1)
		
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
		if (!( !((1==334))))
			continue;
		/* merge: assert(!(!((1==334))))(0, 2, 4) */
		reached[2][2] = 1;
		spin_assert( !( !((1==334))), " !( !((1==334)))", II, tt, t);
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
	case 5: // STATE 1 - wedding.pml:80 - [(run Chosed(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - wedding.pml:81 - [(run Chosed(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - wedding.pml:82 - [(run Chosed(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - wedding.pml:83 - [(run Chosed(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - wedding.pml:85 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Chosed */
	case 10: // STATE 1 - wedding.pml:40 - [((wedding_team[i]==on_boat))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 2 - wedding.pml:42 - [((boat_direction==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.boat_direction)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - wedding.pml:44 - [wedding_team[i] = left_bank] (0:26:4 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 3;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		/* merge: boat_state = 0(26, 4, 26) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boat_state);
		now.boat_state = 0;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: boat_direction = 1(26, 5, 26) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.boat_direction);
		now.boat_direction = 1;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		/* merge: boat_free_space = (boat_free_space+1)(26, 6, 26) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_free_space);
		now.boat_free_space = (((int)now.boat_free_space)+1);
#ifdef VAR_RANGES
		logval("boat_free_space", ((int)now.boat_free_space));
#endif
		;
		/* merge: .(goto)(0, 15, 26) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 25, 26) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 13: // STATE 9 - wedding.pml:52 - [wedding_team[i] = right_bank] (0:26:4 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 1;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		/* merge: boat_direction = 0(26, 10, 26) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boat_direction);
		now.boat_direction = 0;
#ifdef VAR_RANGES
		logval("boat_direction", ((int)now.boat_direction));
#endif
		;
		/* merge: boat_state = 1(26, 11, 26) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.boat_state);
		now.boat_state = 1;
#ifdef VAR_RANGES
		logval("boat_state", ((int)now.boat_state));
#endif
		;
		/* merge: boat_free_space = (boat_free_space+1)(26, 12, 26) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.boat_free_space);
		now.boat_free_space = (((int)now.boat_free_space)+1);
#ifdef VAR_RANGES
		logval("boat_free_space", ((int)now.boat_free_space));
#endif
		;
		/* merge: .(goto)(0, 15, 26) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 25, 26) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 14: // STATE 16 - wedding.pml:61 - [(((((wedding_team[i]==left_bank)&&(boat_free_space>0))&&(boat_state==0))&&(boat_direction==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!(((((now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==3)&&(((int)now.boat_free_space)>0))&&(((int)now.boat_state)==0))&&(((int)now.boat_direction)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 17 - wedding.pml:63 - [wedding_team[i] = on_boat] (0:26:2 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 2;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		/* merge: boat_free_space = (boat_free_space-1)(26, 18, 26) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boat_free_space);
		now.boat_free_space = (((int)now.boat_free_space)-1);
#ifdef VAR_RANGES
		logval("boat_free_space", ((int)now.boat_free_space));
#endif
		;
		/* merge: .(goto)(0, 25, 26) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 20 - wedding.pml:70 - [(((((wedding_team[i]==right_bank)&&(boat_free_space>0))&&(boat_state==1))&&(boat_direction==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((((now.wedding_team[ Index(((P0 *)_this)->i, 4) ]==1)&&(((int)now.boat_free_space)>0))&&(((int)now.boat_state)==1))&&(((int)now.boat_direction)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 21 - wedding.pml:72 - [wedding_team[i] = on_boat] (0:26:2 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.wedding_team[ Index(((P0 *)_this)->i, 4) ];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = 2;
#ifdef VAR_RANGES
		logval("wedding_team[Chosed:i]", now.wedding_team[ Index(((P0 *)_this)->i, 4) ]);
#endif
		;
		/* merge: boat_free_space = (boat_free_space-1)(26, 22, 26) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boat_free_space);
		now.boat_free_space = (((int)now.boat_free_space)-1);
#ifdef VAR_RANGES
		logval("boat_free_space", ((int)now.boat_free_space));
#endif
		;
		/* merge: .(goto)(0, 25, 26) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 26 - wedding.pml:76 - [-end-] (0:0:0 - 6)
		IfNotBlocked
		reached[0][26] = 1;
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

