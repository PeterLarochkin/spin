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
;
		;
		;
		;
		
	case 12: // STATE 6
		;
		now.boat_free_space = trpt->bup.ovals[3];
		now.boat_direction = trpt->bup.ovals[2];
		now.boat_state = trpt->bup.ovals[1];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 13: // STATE 12
		;
		now.boat_free_space = trpt->bup.ovals[3];
		now.boat_state = trpt->bup.ovals[2];
		now.boat_direction = trpt->bup.ovals[1];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 15: // STATE 18
		;
		now.boat_free_space = trpt->bup.ovals[1];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 17: // STATE 22
		;
		now.boat_free_space = trpt->bup.ovals[1];
		now.wedding_team[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;
	}

