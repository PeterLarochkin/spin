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
		;
		delproc(0, now._nr_pr-1);
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
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Chosed */

	case 10: // STATE 1
		;
	/* 0 */	((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 13: // STATE 4
		;
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 5
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 9
		;
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 10
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 13
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 14
		;
		now.boat_direction = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 15
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 16
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 19
		;
		now.wedding_team[ Index(now.boat_seats[0], 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 20
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 24
		;
		now.wedding_team[ Index(now.boat_seats[1], 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 25
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 28
		;
		now.boat_direction = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 29
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 30
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 31
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 35
		;
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 37
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 39
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 42
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 44
		;
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 46
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 48
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 51
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 54
		;
		p_restor(II);
		;
		;
		goto R999;
	}

