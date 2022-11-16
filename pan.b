	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f0 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 5: // STATE 1
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 3
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 5
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 7
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Chosed */

	case 14: // STATE 1
		;
	/* 0 */	((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 16: // STATE 5
		;
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 16
		;
		now.count = trpt->bup.ovals[5];
		now.turn = trpt->bup.ovals[4];
		now.boat_direction = trpt->bup.ovals[3];
		now.boat_state = trpt->bup.ovals[2];
		now.boat_seats[1] = trpt->bup.ovals[1];
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 18: // STATE 16
		;
		now.count = trpt->bup.ovals[3];
		now.turn = trpt->bup.ovals[2];
		now.boat_direction = trpt->bup.ovals[1];
		now.boat_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 19: // STATE 21
		;
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 20: // STATE 32
		;
		now.count = trpt->bup.ovals[5];
		now.turn = trpt->bup.ovals[4];
		now.boat_state = trpt->bup.ovals[3];
		now.boat_direction = trpt->bup.ovals[2];
		now.boat_seats[1] = trpt->bup.ovals[1];
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 21: // STATE 32
		;
		now.count = trpt->bup.ovals[3];
		now.turn = trpt->bup.ovals[2];
		now.boat_state = trpt->bup.ovals[1];
		now.boat_direction = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 23: // STATE 37
		;
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 44
		;
		now.turn = trpt->bup.ovals[1];
		now.boat_seats[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: // STATE 44
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 44
		;
		now.turn = trpt->bup.ovals[1];
		now.boat_seats[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 28: // STATE 47
		;
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 54
		;
		now.turn = trpt->bup.ovals[1];
		now.boat_seats[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 30: // STATE 54
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 54
		;
		now.turn = trpt->bup.ovals[1];
		now.boat_seats[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 58
		;
		p_restor(II);
		;
		;
		goto R999;
	}

