	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC P6 */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P5 */

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

		 /* PROC P4 */

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

		 /* PROC P3 */

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

		 /* PROC P2 */

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

		 /* PROC P1 */

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

		 /* PROC Chosed */

	case 15: // STATE 2
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 4
		;
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 5
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 7
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 8
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 10
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 11
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 13
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 14
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 17
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 18
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 20
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 22
		;
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 23
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 25
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 26
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 28
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 29
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 31
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 32
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 35
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 36
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 38
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 40
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 42
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 43
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 44
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 51: // STATE 47
		;
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 48
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 49
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 56: // STATE 52
		;
		now.wedding[ Index((((P0 *)_this)->pair_index+1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 53
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 59
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 61
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 61: // STATE 63
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 64
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 65
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 66: // STATE 68
		;
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 69
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 70
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 70: // STATE 72
		;
		now.wedding[ Index(((P0 *)_this)->pair_index, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 73
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 79
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 81
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 76: // STATE 84
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 78: // STATE 86
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 87
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 88
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 82: // STATE 90
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 91
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 92
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 95
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 96
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 97
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 98
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 99
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 100
		;
		count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 92: // STATE 102
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 94: // STATE 104
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 105
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: // STATE 107
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 108
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 111
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 112
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 113
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 114
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 115
		;
		count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 105: // STATE 117
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 107: // STATE 119
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 120
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 110: // STATE 122
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 123
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 126
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 127
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 128
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 129
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 130
		;
		count = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 133
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 134
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 121: // STATE 137
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 123: // STATE 139
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 140
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 141
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 127: // STATE 143
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 144
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 145
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 130: // STATE 148
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 149
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 150
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 133: // STATE 151
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 135: // STATE 153
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 137: // STATE 155
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 156
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 140: // STATE 158
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 159
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 162
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 143: // STATE 163
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 164
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 146: // STATE 166
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 148: // STATE 168
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 149: // STATE 169
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 151: // STATE 171
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 172
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 175
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 176
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 155: // STATE 177
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 180
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 157: // STATE 181
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 158: // STATE 185
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 159: // STATE 187
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 162: // STATE 190
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 164: // STATE 192
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 165: // STATE 193
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 166: // STATE 194
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 168: // STATE 196
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 169: // STATE 197
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 198
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 171: // STATE 201
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 172: // STATE 202
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 173: // STATE 203
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 174: // STATE 204
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 175: // STATE 205
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 176: // STATE 206
		;
		count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 178: // STATE 208
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 180: // STATE 210
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 181: // STATE 211
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 183: // STATE 213
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 184: // STATE 214
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 185: // STATE 217
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 186: // STATE 218
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 187: // STATE 219
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 188: // STATE 220
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 189: // STATE 221
		;
		count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 191: // STATE 223
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 193: // STATE 225
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 194: // STATE 226
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 196: // STATE 228
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 197: // STATE 229
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 198: // STATE 232
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 199: // STATE 233
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 200: // STATE 234
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 201: // STATE 235
		;
		now.boat_state = trpt->bup.oval;
		;
		goto R999;

	case 202: // STATE 236
		;
		count = trpt->bup.oval;
		;
		goto R999;

	case 203: // STATE 239
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 204: // STATE 240
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 207: // STATE 243
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 209: // STATE 245
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 210: // STATE 246
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 211: // STATE 247
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 213: // STATE 249
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 214: // STATE 250
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 215: // STATE 251
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 216: // STATE 254
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 217: // STATE 255
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 218: // STATE 256
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 219: // STATE 257
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 221: // STATE 259
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 223: // STATE 261
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 224: // STATE 262
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 226: // STATE 264
		;
		now.wedding[ Index(now.boat_seats[0], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 227: // STATE 265
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 228: // STATE 268
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 229: // STATE 269
		;
		now.boat_seats[0] = trpt->bup.oval;
		;
		goto R999;

	case 230: // STATE 270
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 232: // STATE 272
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 234: // STATE 274
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 235: // STATE 275
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 237: // STATE 277
		;
		now.wedding[ Index(now.boat_seats[1], 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 238: // STATE 278
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 239: // STATE 281
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 240: // STATE 282
		;
		now.boat_seats[1] = trpt->bup.oval;
		;
		goto R999;

	case 241: // STATE 283
		;
		now.is_boat_in_center = trpt->bup.oval;
		;
		goto R999;

	case 242: // STATE 286
		;
		now.local_turn = trpt->bup.oval;
		;
		goto R999;

	case 243: // STATE 287
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 244: // STATE 293
		;
		p_restor(II);
		;
		;
		goto R999;
	}

