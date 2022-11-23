	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM ltl_0 */
;
		;
		
	case 4: // STATE 6
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

	case 9: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Chosed */

	case 10: // STATE 2
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 4
		;
		now.wedding[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 5
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 7
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 9
		;
		now.wedding[ Index(((P0 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 10
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;
	}

