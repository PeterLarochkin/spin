	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f1 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 8
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
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 5
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 7
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 8
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 10
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 11
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 13
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 14
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 17
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 18
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 20
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 22
		;
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 23
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 25
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 26
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 38: // STATE 28
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 29
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 31
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 32
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 35
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 36
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 38
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 40
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 42
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 43
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 44
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 53: // STATE 48
		;
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 49
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 50
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 57: // STATE 53
		;
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 54
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 60
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 62
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 62: // STATE 64
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 65
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 66
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 67: // STATE 70
		;
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 71
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 72
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 75
		;
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 76
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 82
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 84
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 77: // STATE 87
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 79: // STATE 89
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 90
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 91
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 83: // STATE 93
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 94
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 95
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 98
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 99
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 100
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 101
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 102
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 103
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 93: // STATE 105
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 95: // STATE 107
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 108
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 98: // STATE 110
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 111
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 114
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 115
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 116
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 117
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 118
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 106: // STATE 120
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 108: // STATE 122
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 123
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 111: // STATE 125
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 126
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 129
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 130
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 131
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 132
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 133
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 136
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 121: // STATE 140
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 123: // STATE 142
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 143
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 144
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 127: // STATE 146
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 147
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 148
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 130: // STATE 151
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 152
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 153
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 133: // STATE 154
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 135: // STATE 156
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 137: // STATE 158
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 159
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 140: // STATE 161
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 162
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 165
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 143: // STATE 166
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 167
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 146: // STATE 169
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 148: // STATE 171
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 149: // STATE 172
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 151: // STATE 174
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 175
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 178
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 179
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 155: // STATE 180
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 183
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 157: // STATE 187
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 158: // STATE 189
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 161: // STATE 192
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 163: // STATE 194
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 164: // STATE 195
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 165: // STATE 196
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 167: // STATE 198
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 168: // STATE 199
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 169: // STATE 200
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 203
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 171: // STATE 204
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 172: // STATE 205
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 173: // STATE 206
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 174: // STATE 207
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 175: // STATE 208
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 177: // STATE 210
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 179: // STATE 212
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 180: // STATE 213
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 182: // STATE 215
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 183: // STATE 216
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 184: // STATE 219
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 185: // STATE 220
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 186: // STATE 221
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 187: // STATE 222
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 188: // STATE 223
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 190: // STATE 225
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 192: // STATE 227
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 193: // STATE 228
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 195: // STATE 230
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 196: // STATE 231
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 197: // STATE 234
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 198: // STATE 235
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 199: // STATE 236
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 200: // STATE 237
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 201: // STATE 238
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 202: // STATE 241
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 205: // STATE 245
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 207: // STATE 247
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 208: // STATE 248
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 209: // STATE 249
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 211: // STATE 251
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 212: // STATE 252
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 213: // STATE 253
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 214: // STATE 256
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 215: // STATE 257
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 216: // STATE 258
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 217: // STATE 259
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 219: // STATE 261
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 221: // STATE 263
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 222: // STATE 264
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 224: // STATE 266
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 225: // STATE 267
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 226: // STATE 270
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 227: // STATE 271
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 228: // STATE 272
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 230: // STATE 274
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 232: // STATE 276
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 233: // STATE 277
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 235: // STATE 279
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 236: // STATE 280
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 237: // STATE 283
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 238: // STATE 284
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 239: // STATE 285
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 240: // STATE 288
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 241: // STATE 294
		;
		p_restor(II);
		;
		;
		goto R999;
	}

