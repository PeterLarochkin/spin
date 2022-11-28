	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f2 */
;
		;
		
	case 4: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P6 */

	case 5: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P5 */

	case 7: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P4 */

	case 9: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P3 */

	case 11: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P2 */

	case 13: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P1 */

	case 15: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 16: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Chosed */

	case 17: // STATE 2
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 4
		;
		now.final = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 6
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 9
		;
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 21: // STATE 22
		;
		now.turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.boat_seats[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 22: // STATE 22
		;
		now.turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.boat_seats[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 23: // STATE 22
		;
		now.turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.boat_seats[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 24: // STATE 22
		;
		now.turn = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: // STATE 25
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 28
		;
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 41
		;
		now.turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.boat_seats[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 28: // STATE 41
		;
		now.turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.boat_seats[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 29: // STATE 41
		;
		now.turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.boat_seats[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 30: // STATE 41
		;
		now.turn = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 31: // STATE 44
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 46
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 50
		;
		now.turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.is_boat_in_center = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 34: // STATE 63
		goto R999;
;
		;
		
	case 36: // STATE 55
		;
		now.turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 37: // STATE 61
		goto R999;
;
		;
		
	case 39: // STATE 59
		;
		now.turn = trpt->bup.ovals[1];
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 40: // STATE 66
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 68
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 72
		;
		now.turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.is_boat_in_center = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 43: // STATE 84
		goto R999;
;
		;
		
	case 45: // STATE 77
		;
		now.turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 46: // STATE 82
		goto R999;

	case 47: // STATE 80
		;
		now.turn = trpt->bup.ovals[1];
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 48: // STATE 87
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 89
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 51: // STATE 92
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 142
		;
		now.turn = trpt->bup.ovals[10];
		now.local_turn = trpt->bup.ovals[9];
		now.count = trpt->bup.ovals[8];
		now.boat_state = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 11);
		goto R999;

	case 53: // STATE 142
		;
		now.turn = trpt->bup.ovals[10];
		now.local_turn = trpt->bup.ovals[9];
		now.count = trpt->bup.ovals[8];
		now.boat_state = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 11);
		goto R999;

	case 54: // STATE 142
		;
		now.turn = trpt->bup.ovals[7];
		now.local_turn = trpt->bup.ovals[6];
		now.count = trpt->bup.ovals[5];
		now.boat_state = trpt->bup.ovals[4];
		now.is_boat_in_center = trpt->bup.ovals[3];
		now.boat_seats[1] = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 55: // STATE 110
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 142
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 57: // STATE 142
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 58: // STATE 142
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.count = trpt->bup.ovals[4];
		now.boat_state = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 59: // STATE 125
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 142
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 61: // STATE 142
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 62: // STATE 142
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.count = trpt->bup.ovals[4];
		now.boat_state = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[1] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 63: // STATE 142
		;
		now.turn = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 64: // STATE 191
		goto R999;
;
		;
		
	case 66: // STATE 145
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 189
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 68: // STATE 189
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 69: // STATE 189
		;
		now.turn = trpt->bup.ovals[5];
		now.local_turn = trpt->bup.ovals[4];
		now.is_boat_in_center = trpt->bup.ovals[3];
		now.boat_seats[1] = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 70: // STATE 161
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 189
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 72: // STATE 189
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 73: // STATE 189
		;
		now.turn = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 74: // STATE 174
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 189
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 76: // STATE 189
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 77: // STATE 189
		;
		now.turn = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[1] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 78: // STATE 189
		;
		now.turn = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 79: // STATE 194
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 196
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 82: // STATE 199
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 249
		;
		now.turn = trpt->bup.ovals[10];
		now.local_turn = trpt->bup.ovals[9];
		now.count = trpt->bup.ovals[8];
		now.boat_state = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 11);
		goto R999;

	case 84: // STATE 249
		;
		now.turn = trpt->bup.ovals[10];
		now.local_turn = trpt->bup.ovals[9];
		now.count = trpt->bup.ovals[8];
		now.boat_state = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 11);
		goto R999;

	case 85: // STATE 249
		;
		now.turn = trpt->bup.ovals[7];
		now.local_turn = trpt->bup.ovals[6];
		now.count = trpt->bup.ovals[5];
		now.boat_state = trpt->bup.ovals[4];
		now.is_boat_in_center = trpt->bup.ovals[3];
		now.boat_seats[1] = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 86: // STATE 217
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 249
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 88: // STATE 249
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 89: // STATE 249
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.count = trpt->bup.ovals[4];
		now.boat_state = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 90: // STATE 232
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 249
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 92: // STATE 249
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.count = trpt->bup.ovals[6];
		now.boat_state = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 93: // STATE 249
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.count = trpt->bup.ovals[4];
		now.boat_state = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[1] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 94: // STATE 249
		;
		now.turn = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 95: // STATE 298
		goto R999;
;
		;
		
	case 97: // STATE 252
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 296
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 99: // STATE 296
		;
		now.turn = trpt->bup.ovals[8];
		now.local_turn = trpt->bup.ovals[7];
		now.is_boat_in_center = trpt->bup.ovals[6];
		now.boat_seats[1] = trpt->bup.ovals[5];
		now.boat_seats[0] = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 100: // STATE 296
		;
		now.turn = trpt->bup.ovals[5];
		now.local_turn = trpt->bup.ovals[4];
		now.is_boat_in_center = trpt->bup.ovals[3];
		now.boat_seats[1] = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 101: // STATE 268
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 296
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 103: // STATE 296
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[0] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 104: // STATE 296
		;
		now.turn = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[0] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 105: // STATE 281
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 296
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 107: // STATE 296
		;
		now.turn = trpt->bup.ovals[6];
		now.local_turn = trpt->bup.ovals[5];
		now.is_boat_in_center = trpt->bup.ovals[4];
		now.boat_seats[1] = trpt->bup.ovals[3];
		now.local_turn = trpt->bup.ovals[2];
		now.local_turn = trpt->bup.ovals[1];
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 108: // STATE 296
		;
		now.turn = trpt->bup.ovals[4];
		now.local_turn = trpt->bup.ovals[3];
		now.is_boat_in_center = trpt->bup.ovals[2];
		now.boat_seats[1] = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 109: // STATE 296
		;
		now.turn = trpt->bup.ovals[1];
		now.local_turn = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 110: // STATE 303
		;
		p_restor(II);
		;
		;
		goto R999;
	}

