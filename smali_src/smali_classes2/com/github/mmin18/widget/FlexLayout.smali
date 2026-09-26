.class public Lcom/github/mmin18/widget/FlexLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mmin18/widget/FlexLayout$l0;,
        Lcom/github/mmin18/widget/FlexLayout$n0;,
        Lcom/github/mmin18/widget/FlexLayout$o0;,
        Lcom/github/mmin18/widget/FlexLayout$m0;,
        Lcom/github/mmin18/widget/FlexLayout$p0;
    }
.end annotation


# static fields
.field static final ADD:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final BL:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final BR:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final COMMA:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final CP_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final CP_GT:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final CP_LT:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static DEBUG:Ljava/lang/Boolean;

.field static final DIV:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static EDIT_MODE_CUR_ID:I

.field static EDIT_MODE_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final F_ABS:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_CEIL:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_FLOOR:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_MAX:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_MIN:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_MOD:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_POW:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final F_ROUND:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final LOG_AND:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final LOG_OR:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final MUL:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final NOT:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static OPS:[Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final PERC:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final SUB:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_DIP:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_DP:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_IN:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_MM:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_PT:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_PX:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final U_SP:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final X_COND1:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final X_COND2:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final X_FILL_PARENT:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$m0;

.field static final X_WRAP_CONTENT:Lcom/github/mmin18/widget/FlexLayout$m0;


# instance fields
.field myHeight:I

.field myHeightMeasureSpec:I

.field myWidth:I

.field myWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 1
    .line 2
    new-instance v6, Lcom/github/mmin18/widget/FlexLayout$k;

    .line 3
    .line 4
    const-string v1, "*"

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v6

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/github/mmin18/widget/FlexLayout$k;-><init>(Ljava/lang/String;IIII)V

    .line 14
    .line 15
    sput-object v6, Lcom/github/mmin18/widget/FlexLayout;->MUL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 16
    .line 17
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$v;

    .line 18
    .line 19
    const-string v8, "/"

    .line 20
    .line 21
    const/16 v9, 0x8

    .line 22
    const/4 v10, 0x1

    .line 23
    const/4 v11, 0x2

    .line 24
    const/4 v12, 0x0

    .line 25
    move-object v7, v0

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$v;-><init>(Ljava/lang/String;IIII)V

    .line 29
    .line 30
    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->DIV:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 31
    .line 32
    new-instance v1, Lcom/github/mmin18/widget/FlexLayout$e0;

    .line 33
    .line 34
    const-string v14, "%"

    .line 35
    .line 36
    const/16 v15, 0x8

    .line 37
    .line 38
    const/16 v16, 0x2

    .line 39
    .line 40
    const/16 v17, 0x1

    .line 41
    .line 42
    const/16 v18, 0x0

    .line 43
    move-object v13, v1

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v13 .. v18}, Lcom/github/mmin18/widget/FlexLayout$e0;-><init>(Ljava/lang/String;IIII)V

    .line 47
    .line 48
    sput-object v1, Lcom/github/mmin18/widget/FlexLayout;->PERC:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 49
    .line 50
    new-instance v2, Lcom/github/mmin18/widget/FlexLayout$f0;

    .line 51
    .line 52
    const-string v8, "+"

    .line 53
    const/4 v9, 0x7

    .line 54
    move-object v7, v2

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$f0;-><init>(Ljava/lang/String;IIII)V

    .line 58
    .line 59
    sput-object v2, Lcom/github/mmin18/widget/FlexLayout;->ADD:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 60
    .line 61
    new-instance v3, Lcom/github/mmin18/widget/FlexLayout$g0;

    .line 62
    .line 63
    const-string v14, "-"

    .line 64
    const/4 v15, 0x7

    .line 65
    .line 66
    const/16 v16, 0x1

    .line 67
    .line 68
    const/16 v17, 0x2

    .line 69
    move-object v13, v3

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v13 .. v18}, Lcom/github/mmin18/widget/FlexLayout$g0;-><init>(Ljava/lang/String;IIII)V

    .line 73
    .line 74
    sput-object v3, Lcom/github/mmin18/widget/FlexLayout;->SUB:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 75
    .line 76
    new-instance v4, Lcom/github/mmin18/widget/FlexLayout$h0;

    .line 77
    .line 78
    const-string v8, "!"

    .line 79
    .line 80
    const/16 v9, 0x9

    .line 81
    const/4 v10, 0x2

    .line 82
    const/4 v11, 0x1

    .line 83
    move-object v7, v4

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$h0;-><init>(Ljava/lang/String;IIII)V

    .line 87
    .line 88
    sput-object v4, Lcom/github/mmin18/widget/FlexLayout;->NOT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 89
    .line 90
    new-instance v5, Lcom/github/mmin18/widget/FlexLayout$i0;

    .line 91
    .line 92
    const-string v14, "<"

    .line 93
    const/4 v15, 0x6

    .line 94
    move-object v13, v5

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v13 .. v18}, Lcom/github/mmin18/widget/FlexLayout$i0;-><init>(Ljava/lang/String;IIII)V

    .line 98
    .line 99
    sput-object v5, Lcom/github/mmin18/widget/FlexLayout;->CP_LT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 100
    .line 101
    new-instance v13, Lcom/github/mmin18/widget/FlexLayout$j0;

    .line 102
    .line 103
    const-string v8, "<="

    .line 104
    const/4 v9, 0x6

    .line 105
    const/4 v10, 0x1

    .line 106
    const/4 v11, 0x2

    .line 107
    move-object v7, v13

    .line 108
    .line 109
    .line 110
    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$j0;-><init>(Ljava/lang/String;IIII)V

    .line 111
    .line 112
    sput-object v13, Lcom/github/mmin18/widget/FlexLayout;->CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 113
    .line 114
    new-instance v7, Lcom/github/mmin18/widget/FlexLayout$k0;

    .line 115
    .line 116
    const-string v15, ">"

    .line 117
    .line 118
    const/16 v16, 0x6

    .line 119
    .line 120
    const/16 v17, 0x1

    .line 121
    .line 122
    const/16 v18, 0x2

    .line 123
    .line 124
    const/16 v19, 0x0

    .line 125
    move-object v14, v7

    .line 126
    .line 127
    .line 128
    invoke-direct/range {v14 .. v19}, Lcom/github/mmin18/widget/FlexLayout$k0;-><init>(Ljava/lang/String;IIII)V

    .line 129
    .line 130
    sput-object v7, Lcom/github/mmin18/widget/FlexLayout;->CP_GT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 131
    .line 132
    new-instance v8, Lcom/github/mmin18/widget/FlexLayout$a;

    .line 133
    .line 134
    const-string v21, ">="

    .line 135
    .line 136
    const/16 v22, 0x6

    .line 137
    .line 138
    const/16 v23, 0x1

    .line 139
    .line 140
    const/16 v24, 0x2

    .line 141
    .line 142
    const/16 v25, 0x0

    .line 143
    .line 144
    move-object/from16 v20, v8

    .line 145
    .line 146
    .line 147
    invoke-direct/range {v20 .. v25}, Lcom/github/mmin18/widget/FlexLayout$a;-><init>(Ljava/lang/String;IIII)V

    .line 148
    .line 149
    sput-object v8, Lcom/github/mmin18/widget/FlexLayout;->CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 150
    .line 151
    new-instance v9, Lcom/github/mmin18/widget/FlexLayout$b;

    .line 152
    .line 153
    const-string v15, "=="

    .line 154
    .line 155
    const/16 v16, 0x5

    .line 156
    move-object v14, v9

    .line 157
    .line 158
    .line 159
    invoke-direct/range {v14 .. v19}, Lcom/github/mmin18/widget/FlexLayout$b;-><init>(Ljava/lang/String;IIII)V

    .line 160
    .line 161
    sput-object v9, Lcom/github/mmin18/widget/FlexLayout;->CP_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 162
    .line 163
    new-instance v10, Lcom/github/mmin18/widget/FlexLayout$c;

    .line 164
    .line 165
    const-string v21, "!="

    .line 166
    .line 167
    const/16 v22, 0x5

    .line 168
    .line 169
    move-object/from16 v20, v10

    .line 170
    .line 171
    .line 172
    invoke-direct/range {v20 .. v25}, Lcom/github/mmin18/widget/FlexLayout$c;-><init>(Ljava/lang/String;IIII)V

    .line 173
    .line 174
    sput-object v10, Lcom/github/mmin18/widget/FlexLayout;->CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 175
    .line 176
    new-instance v11, Lcom/github/mmin18/widget/FlexLayout$d;

    .line 177
    .line 178
    const-string v15, "&&"

    .line 179
    .line 180
    const/16 v16, 0x4

    .line 181
    move-object v14, v11

    .line 182
    .line 183
    .line 184
    invoke-direct/range {v14 .. v19}, Lcom/github/mmin18/widget/FlexLayout$d;-><init>(Ljava/lang/String;IIII)V

    .line 185
    .line 186
    sput-object v11, Lcom/github/mmin18/widget/FlexLayout;->LOG_AND:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 187
    .line 188
    new-instance v12, Lcom/github/mmin18/widget/FlexLayout$e;

    .line 189
    .line 190
    const-string/jumbo v21, "||"

    .line 191
    .line 192
    const/16 v22, 0x3

    .line 193
    .line 194
    move-object/from16 v20, v12

    .line 195
    .line 196
    .line 197
    invoke-direct/range {v20 .. v25}, Lcom/github/mmin18/widget/FlexLayout$e;-><init>(Ljava/lang/String;IIII)V

    .line 198
    .line 199
    sput-object v12, Lcom/github/mmin18/widget/FlexLayout;->LOG_OR:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 200
    .line 201
    new-instance v20, Lcom/github/mmin18/widget/FlexLayout$f;

    .line 202
    .line 203
    const-string v15, "("

    .line 204
    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const/16 v17, 0x0

    .line 208
    .line 209
    const/16 v18, 0x0

    .line 210
    .line 211
    move-object/from16 v14, v20

    .line 212
    .line 213
    .line 214
    invoke-direct/range {v14 .. v19}, Lcom/github/mmin18/widget/FlexLayout$f;-><init>(Ljava/lang/String;IIII)V

    .line 215
    .line 216
    sput-object v20, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 217
    .line 218
    new-instance v14, Lcom/github/mmin18/widget/FlexLayout$g;

    .line 219
    .line 220
    const-string v22, ")"

    .line 221
    .line 222
    const/16 v23, 0x0

    .line 223
    .line 224
    const/16 v24, 0x0

    .line 225
    .line 226
    const/16 v26, 0x0

    .line 227
    .line 228
    move-object/from16 v21, v14

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v21 .. v26}, Lcom/github/mmin18/widget/FlexLayout$g;-><init>(Ljava/lang/String;IIII)V

    .line 232
    .line 233
    sput-object v14, Lcom/github/mmin18/widget/FlexLayout;->BR:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 234
    .line 235
    new-instance v15, Lcom/github/mmin18/widget/FlexLayout$h;

    .line 236
    .line 237
    const-string v28, ","

    .line 238
    .line 239
    const/16 v29, 0x0

    .line 240
    .line 241
    const/16 v30, 0x1

    .line 242
    .line 243
    const/16 v31, 0x0

    .line 244
    .line 245
    const/16 v32, 0x0

    .line 246
    .line 247
    move-object/from16 v27, v15

    .line 248
    .line 249
    .line 250
    invoke-direct/range {v27 .. v32}, Lcom/github/mmin18/widget/FlexLayout$h;-><init>(Ljava/lang/String;IIII)V

    .line 251
    .line 252
    sput-object v15, Lcom/github/mmin18/widget/FlexLayout;->COMMA:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 253
    .line 254
    new-instance v16, Lcom/github/mmin18/widget/FlexLayout$i;

    .line 255
    .line 256
    const-string v22, "sp"

    .line 257
    .line 258
    const/16 v23, 0xa

    .line 259
    .line 260
    const/16 v24, 0x2

    .line 261
    .line 262
    const/16 v25, 0x1

    .line 263
    .line 264
    move-object/from16 v21, v16

    .line 265
    .line 266
    .line 267
    invoke-direct/range {v21 .. v26}, Lcom/github/mmin18/widget/FlexLayout$i;-><init>(Ljava/lang/String;IIII)V

    .line 268
    .line 269
    sput-object v16, Lcom/github/mmin18/widget/FlexLayout;->U_SP:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 270
    .line 271
    new-instance v17, Lcom/github/mmin18/widget/FlexLayout$j;

    .line 272
    .line 273
    const-string v28, "dp"

    .line 274
    .line 275
    const/16 v29, 0xa

    .line 276
    .line 277
    const/16 v30, 0x2

    .line 278
    .line 279
    const/16 v31, 0x1

    .line 280
    .line 281
    move-object/from16 v27, v17

    .line 282
    .line 283
    .line 284
    invoke-direct/range {v27 .. v32}, Lcom/github/mmin18/widget/FlexLayout$j;-><init>(Ljava/lang/String;IIII)V

    .line 285
    .line 286
    sput-object v17, Lcom/github/mmin18/widget/FlexLayout;->U_DP:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 287
    .line 288
    new-instance v18, Lcom/github/mmin18/widget/FlexLayout$l;

    .line 289
    .line 290
    const-string v22, "dip"

    .line 291
    .line 292
    move-object/from16 v21, v18

    .line 293
    .line 294
    .line 295
    invoke-direct/range {v21 .. v26}, Lcom/github/mmin18/widget/FlexLayout$l;-><init>(Ljava/lang/String;IIII)V

    .line 296
    .line 297
    sput-object v18, Lcom/github/mmin18/widget/FlexLayout;->U_DIP:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 298
    .line 299
    new-instance v19, Lcom/github/mmin18/widget/FlexLayout$m;

    .line 300
    .line 301
    const-string v28, "px"

    .line 302
    .line 303
    move-object/from16 v27, v19

    .line 304
    .line 305
    .line 306
    invoke-direct/range {v27 .. v32}, Lcom/github/mmin18/widget/FlexLayout$m;-><init>(Ljava/lang/String;IIII)V

    .line 307
    .line 308
    sput-object v19, Lcom/github/mmin18/widget/FlexLayout;->U_PX:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 309
    .line 310
    new-instance v27, Lcom/github/mmin18/widget/FlexLayout$n;

    .line 311
    .line 312
    const-string v22, "pt"

    .line 313
    .line 314
    move-object/from16 v21, v27

    .line 315
    .line 316
    .line 317
    invoke-direct/range {v21 .. v26}, Lcom/github/mmin18/widget/FlexLayout$n;-><init>(Ljava/lang/String;IIII)V

    .line 318
    .line 319
    sput-object v27, Lcom/github/mmin18/widget/FlexLayout;->U_PT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 320
    .line 321
    new-instance v21, Lcom/github/mmin18/widget/FlexLayout$o;

    .line 322
    .line 323
    const-string v29, "mm"

    .line 324
    .line 325
    const/16 v30, 0xa

    .line 326
    .line 327
    const/16 v31, 0x2

    .line 328
    .line 329
    const/16 v32, 0x1

    .line 330
    .line 331
    const/16 v33, 0x0

    .line 332
    .line 333
    move-object/from16 v28, v21

    .line 334
    .line 335
    .line 336
    invoke-direct/range {v28 .. v33}, Lcom/github/mmin18/widget/FlexLayout$o;-><init>(Ljava/lang/String;IIII)V

    .line 337
    .line 338
    sput-object v21, Lcom/github/mmin18/widget/FlexLayout;->U_MM:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 339
    .line 340
    new-instance v22, Lcom/github/mmin18/widget/FlexLayout$p;

    .line 341
    .line 342
    const-string v35, "in"

    .line 343
    .line 344
    const/16 v36, 0xa

    .line 345
    .line 346
    const/16 v37, 0x2

    .line 347
    .line 348
    const/16 v38, 0x1

    .line 349
    .line 350
    const/16 v39, 0x0

    .line 351
    .line 352
    move-object/from16 v34, v22

    .line 353
    .line 354
    .line 355
    invoke-direct/range {v34 .. v39}, Lcom/github/mmin18/widget/FlexLayout$p;-><init>(Ljava/lang/String;IIII)V

    .line 356
    .line 357
    sput-object v22, Lcom/github/mmin18/widget/FlexLayout;->U_IN:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 358
    .line 359
    new-instance v23, Lcom/github/mmin18/widget/FlexLayout$q;

    .line 360
    .line 361
    const-string v29, "max"

    .line 362
    .line 363
    const/16 v30, 0x0

    .line 364
    .line 365
    const/16 v31, 0x0

    .line 366
    .line 367
    const/16 v32, 0x2

    .line 368
    .line 369
    const/16 v33, 0x1

    .line 370
    .line 371
    move-object/from16 v28, v23

    .line 372
    .line 373
    .line 374
    invoke-direct/range {v28 .. v33}, Lcom/github/mmin18/widget/FlexLayout$q;-><init>(Ljava/lang/String;IIII)V

    .line 375
    .line 376
    sput-object v23, Lcom/github/mmin18/widget/FlexLayout;->F_MAX:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 377
    .line 378
    new-instance v24, Lcom/github/mmin18/widget/FlexLayout$r;

    .line 379
    .line 380
    const-string v35, "min"

    .line 381
    .line 382
    const/16 v36, 0x0

    .line 383
    .line 384
    const/16 v37, 0x0

    .line 385
    .line 386
    const/16 v38, 0x2

    .line 387
    .line 388
    const/16 v39, 0x1

    .line 389
    .line 390
    move-object/from16 v34, v24

    .line 391
    .line 392
    .line 393
    invoke-direct/range {v34 .. v39}, Lcom/github/mmin18/widget/FlexLayout$r;-><init>(Ljava/lang/String;IIII)V

    .line 394
    .line 395
    sput-object v24, Lcom/github/mmin18/widget/FlexLayout;->F_MIN:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 396
    .line 397
    new-instance v25, Lcom/github/mmin18/widget/FlexLayout$s;

    .line 398
    .line 399
    const-string v29, "round"

    .line 400
    .line 401
    const/16 v32, 0x1

    .line 402
    .line 403
    move-object/from16 v28, v25

    .line 404
    .line 405
    .line 406
    invoke-direct/range {v28 .. v33}, Lcom/github/mmin18/widget/FlexLayout$s;-><init>(Ljava/lang/String;IIII)V

    .line 407
    .line 408
    sput-object v25, Lcom/github/mmin18/widget/FlexLayout;->F_ROUND:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 409
    .line 410
    new-instance v26, Lcom/github/mmin18/widget/FlexLayout$t;

    .line 411
    .line 412
    const-string v35, "ceil"

    .line 413
    .line 414
    const/16 v38, 0x1

    .line 415
    .line 416
    move-object/from16 v34, v26

    .line 417
    .line 418
    .line 419
    invoke-direct/range {v34 .. v39}, Lcom/github/mmin18/widget/FlexLayout$t;-><init>(Ljava/lang/String;IIII)V

    .line 420
    .line 421
    sput-object v26, Lcom/github/mmin18/widget/FlexLayout;->F_CEIL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 422
    .line 423
    new-instance v34, Lcom/github/mmin18/widget/FlexLayout$u;

    .line 424
    .line 425
    const-string v29, "floor"

    .line 426
    .line 427
    move-object/from16 v28, v34

    .line 428
    .line 429
    .line 430
    invoke-direct/range {v28 .. v33}, Lcom/github/mmin18/widget/FlexLayout$u;-><init>(Ljava/lang/String;IIII)V

    .line 431
    .line 432
    sput-object v34, Lcom/github/mmin18/widget/FlexLayout;->F_FLOOR:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 433
    .line 434
    new-instance v28, Lcom/github/mmin18/widget/FlexLayout$w;

    .line 435
    .line 436
    const-string v36, "abs"

    .line 437
    .line 438
    const/16 v38, 0x0

    .line 439
    .line 440
    const/16 v40, 0x1

    .line 441
    .line 442
    move-object/from16 v35, v28

    .line 443
    .line 444
    .line 445
    invoke-direct/range {v35 .. v40}, Lcom/github/mmin18/widget/FlexLayout$w;-><init>(Ljava/lang/String;IIII)V

    .line 446
    .line 447
    sput-object v28, Lcom/github/mmin18/widget/FlexLayout;->F_ABS:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 448
    .line 449
    new-instance v29, Lcom/github/mmin18/widget/FlexLayout$x;

    .line 450
    .line 451
    const-string v42, "mod"

    .line 452
    .line 453
    const/16 v43, 0x0

    .line 454
    .line 455
    const/16 v44, 0x0

    .line 456
    .line 457
    const/16 v45, 0x2

    .line 458
    .line 459
    const/16 v46, 0x1

    .line 460
    .line 461
    move-object/from16 v41, v29

    .line 462
    .line 463
    .line 464
    invoke-direct/range {v41 .. v46}, Lcom/github/mmin18/widget/FlexLayout$x;-><init>(Ljava/lang/String;IIII)V

    .line 465
    .line 466
    sput-object v29, Lcom/github/mmin18/widget/FlexLayout;->F_MOD:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 467
    .line 468
    new-instance v30, Lcom/github/mmin18/widget/FlexLayout$y;

    .line 469
    .line 470
    const-string v36, "pow"

    .line 471
    .line 472
    const/16 v39, 0x2

    .line 473
    .line 474
    move-object/from16 v35, v30

    .line 475
    .line 476
    .line 477
    invoke-direct/range {v35 .. v40}, Lcom/github/mmin18/widget/FlexLayout$y;-><init>(Ljava/lang/String;IIII)V

    .line 478
    .line 479
    sput-object v30, Lcom/github/mmin18/widget/FlexLayout;->F_POW:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 480
    .line 481
    new-instance v31, Lcom/github/mmin18/widget/FlexLayout$z;

    .line 482
    .line 483
    const-string v42, "?"

    .line 484
    .line 485
    const/16 v43, 0x2

    .line 486
    .line 487
    const/16 v44, 0x2

    .line 488
    .line 489
    const/16 v45, 0x1

    .line 490
    .line 491
    const/16 v46, 0x0

    .line 492
    .line 493
    move-object/from16 v41, v31

    .line 494
    .line 495
    .line 496
    invoke-direct/range {v41 .. v46}, Lcom/github/mmin18/widget/FlexLayout$z;-><init>(Ljava/lang/String;IIII)V

    .line 497
    .line 498
    sput-object v31, Lcom/github/mmin18/widget/FlexLayout;->X_COND1:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 499
    .line 500
    new-instance v32, Lcom/github/mmin18/widget/FlexLayout$a0;

    .line 501
    .line 502
    const-string v36, ":"

    .line 503
    .line 504
    const/16 v37, 0x1

    .line 505
    .line 506
    const/16 v38, 0x1

    .line 507
    .line 508
    const/16 v39, 0x3

    .line 509
    .line 510
    const/16 v40, 0x0

    .line 511
    .line 512
    move-object/from16 v35, v32

    .line 513
    .line 514
    .line 515
    invoke-direct/range {v35 .. v40}, Lcom/github/mmin18/widget/FlexLayout$a0;-><init>(Ljava/lang/String;IIII)V

    .line 516
    .line 517
    sput-object v32, Lcom/github/mmin18/widget/FlexLayout;->X_COND2:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 518
    .line 519
    new-instance v33, Lcom/github/mmin18/widget/FlexLayout$b0;

    .line 520
    .line 521
    const-string v42, "match_parent"

    .line 522
    .line 523
    const/16 v43, 0x0

    .line 524
    .line 525
    const/16 v44, 0x0

    .line 526
    .line 527
    const/16 v45, 0x0

    .line 528
    .line 529
    move-object/from16 v41, v33

    .line 530
    .line 531
    .line 532
    invoke-direct/range {v41 .. v46}, Lcom/github/mmin18/widget/FlexLayout$b0;-><init>(Ljava/lang/String;IIII)V

    .line 533
    .line 534
    sput-object v33, Lcom/github/mmin18/widget/FlexLayout;->X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 535
    .line 536
    new-instance v41, Lcom/github/mmin18/widget/FlexLayout$c0;

    .line 537
    .line 538
    const-string v36, "fill_parent"

    .line 539
    .line 540
    const/16 v37, 0x0

    .line 541
    .line 542
    const/16 v38, 0x0

    .line 543
    .line 544
    const/16 v39, 0x0

    .line 545
    .line 546
    move-object/from16 v35, v41

    .line 547
    .line 548
    .line 549
    invoke-direct/range {v35 .. v40}, Lcom/github/mmin18/widget/FlexLayout$c0;-><init>(Ljava/lang/String;IIII)V

    .line 550
    .line 551
    sput-object v41, Lcom/github/mmin18/widget/FlexLayout;->X_FILL_PARENT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 552
    .line 553
    new-instance v35, Lcom/github/mmin18/widget/FlexLayout$d0;

    .line 554
    .line 555
    const-string/jumbo v43, "wrap_content"

    .line 556
    .line 557
    const/16 v47, 0x0

    .line 558
    .line 559
    move-object/from16 v42, v35

    .line 560
    .line 561
    .line 562
    invoke-direct/range {v42 .. v47}, Lcom/github/mmin18/widget/FlexLayout$d0;-><init>(Ljava/lang/String;IIII)V

    .line 563
    .line 564
    sput-object v35, Lcom/github/mmin18/widget/FlexLayout;->X_WRAP_CONTENT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 565
    .line 566
    move-object/from16 v36, v15

    .line 567
    .line 568
    const/16 v15, 0x25

    .line 569
    .line 570
    new-array v15, v15, [Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 571
    .line 572
    aput-object v2, v15, v37

    .line 573
    const/4 v2, 0x1

    .line 574
    .line 575
    aput-object v3, v15, v2

    .line 576
    const/4 v2, 0x2

    .line 577
    .line 578
    aput-object v0, v15, v2

    .line 579
    const/4 v0, 0x3

    .line 580
    .line 581
    aput-object v6, v15, v0

    .line 582
    const/4 v0, 0x4

    .line 583
    .line 584
    aput-object v1, v15, v0

    .line 585
    const/4 v0, 0x5

    .line 586
    .line 587
    aput-object v4, v15, v0

    .line 588
    const/4 v0, 0x6

    .line 589
    .line 590
    aput-object v5, v15, v0

    .line 591
    const/4 v0, 0x7

    .line 592
    .line 593
    aput-object v13, v15, v0

    .line 594
    .line 595
    const/16 v0, 0x8

    .line 596
    .line 597
    aput-object v7, v15, v0

    .line 598
    .line 599
    const/16 v0, 0x9

    .line 600
    .line 601
    aput-object v8, v15, v0

    .line 602
    .line 603
    const/16 v0, 0xa

    .line 604
    .line 605
    aput-object v9, v15, v0

    .line 606
    .line 607
    const/16 v0, 0xb

    .line 608
    .line 609
    aput-object v10, v15, v0

    .line 610
    .line 611
    const/16 v0, 0xc

    .line 612
    .line 613
    aput-object v11, v15, v0

    .line 614
    .line 615
    const/16 v0, 0xd

    .line 616
    .line 617
    aput-object v12, v15, v0

    .line 618
    .line 619
    const/16 v0, 0xe

    .line 620
    .line 621
    aput-object v20, v15, v0

    .line 622
    .line 623
    const/16 v0, 0xf

    .line 624
    .line 625
    aput-object v14, v15, v0

    .line 626
    .line 627
    const/16 v0, 0x10

    .line 628
    .line 629
    aput-object v36, v15, v0

    .line 630
    .line 631
    const/16 v0, 0x11

    .line 632
    .line 633
    aput-object v16, v15, v0

    .line 634
    .line 635
    const/16 v0, 0x12

    .line 636
    .line 637
    aput-object v17, v15, v0

    .line 638
    .line 639
    const/16 v0, 0x13

    .line 640
    .line 641
    aput-object v18, v15, v0

    .line 642
    .line 643
    const/16 v0, 0x14

    .line 644
    .line 645
    aput-object v19, v15, v0

    .line 646
    .line 647
    const/16 v0, 0x15

    .line 648
    .line 649
    aput-object v27, v15, v0

    .line 650
    .line 651
    const/16 v0, 0x16

    .line 652
    .line 653
    aput-object v21, v15, v0

    .line 654
    .line 655
    const/16 v0, 0x17

    .line 656
    .line 657
    aput-object v22, v15, v0

    .line 658
    .line 659
    const/16 v0, 0x18

    .line 660
    .line 661
    aput-object v23, v15, v0

    .line 662
    .line 663
    const/16 v0, 0x19

    .line 664
    .line 665
    aput-object v24, v15, v0

    .line 666
    .line 667
    const/16 v0, 0x1a

    .line 668
    .line 669
    aput-object v25, v15, v0

    .line 670
    .line 671
    const/16 v0, 0x1b

    .line 672
    .line 673
    aput-object v26, v15, v0

    .line 674
    .line 675
    const/16 v0, 0x1c

    .line 676
    .line 677
    aput-object v34, v15, v0

    .line 678
    .line 679
    const/16 v0, 0x1d

    .line 680
    .line 681
    aput-object v28, v15, v0

    .line 682
    .line 683
    const/16 v0, 0x1e

    .line 684
    .line 685
    aput-object v29, v15, v0

    .line 686
    .line 687
    const/16 v0, 0x1f

    .line 688
    .line 689
    aput-object v30, v15, v0

    .line 690
    .line 691
    const/16 v0, 0x20

    .line 692
    .line 693
    aput-object v31, v15, v0

    .line 694
    .line 695
    const/16 v0, 0x21

    .line 696
    .line 697
    aput-object v32, v15, v0

    .line 698
    .line 699
    const/16 v0, 0x22

    .line 700
    .line 701
    aput-object v33, v15, v0

    .line 702
    .line 703
    const/16 v0, 0x23

    .line 704
    .line 705
    aput-object v41, v15, v0

    .line 706
    .line 707
    const/16 v0, 0x24

    .line 708
    .line 709
    aput-object v35, v15, v0

    .line 710
    .line 711
    sput-object v15, Lcom/github/mmin18/widget/FlexLayout;->OPS:[Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 712
    const/4 v0, 0x0

    .line 713
    .line 714
    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 715
    .line 716
    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    .line 717
    .line 718
    const/high16 v0, 0xf020000

    .line 719
    .line 720
    sput v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_CUR_ID:I

    .line 721
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p1, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    sget-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method static getEditModeId(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_CUR_ID:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    sput v1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_CUR_ID:I

    .line 17
    .line 18
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return v0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method static getEditModeIdName(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-ne v2, p0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    check-cast p0, Ljava/lang/String;

    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15
    .line 16
    and-int/lit8 p0, p0, 0x2

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    move p0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    sput-object p0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 28
    .line 29
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 30
    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-ne p0, v0, :cond_2

    .line 34
    move v1, v2

    .line 35
    :cond_2
    return v1
.end method

.method static isEditModeId(I)Z
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    const/high16 v0, 0xf020000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$l0;II)Z
    .locals 6

    .line 1
    .line 2
    sget v0, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ne p3, v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/github/mmin18/widget/FlexLayout$l0;->h()F

    .line 10
    move-result p3

    .line 11
    .line 12
    cmpl-float v0, p3, p3

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 18
    move-result p3

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 25
    move-result p3

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->left:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 33
    move-result p3

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->right:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 41
    move-result p3

    .line 42
    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->centerX:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 49
    move-result p3

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    move p3, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return v2

    .line 55
    .line 56
    :cond_2
    :goto_0
    sget v0, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 57
    .line 58
    if-ne p4, v0, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/github/mmin18/widget/FlexLayout$l0;->d()F

    .line 62
    move-result p4

    .line 63
    .line 64
    cmpl-float v0, p4, p4

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 70
    move-result p4

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_3
    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 74
    .line 75
    .line 76
    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 77
    move-result p4

    .line 78
    .line 79
    if-eqz p4, :cond_4

    .line 80
    .line 81
    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->top:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 82
    .line 83
    .line 84
    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 85
    move-result p4

    .line 86
    .line 87
    if-eqz p4, :cond_4

    .line 88
    .line 89
    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 90
    .line 91
    .line 92
    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 93
    move-result p4

    .line 94
    .line 95
    if-eqz p4, :cond_4

    .line 96
    .line 97
    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->centerY:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 98
    .line 99
    .line 100
    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z

    .line 101
    move-result p4

    .line 102
    .line 103
    if-eqz p4, :cond_4

    .line 104
    move p4, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    return v2

    .line 107
    .line 108
    :cond_5
    :goto_1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 109
    .line 110
    const/high16 v1, 0x40000000    # 2.0f

    .line 111
    const/4 v3, -0x1

    .line 112
    .line 113
    if-ne v0, v3, :cond_6

    .line 114
    .line 115
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myWidthMeasureSpec:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 119
    move-result v4

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 123
    move-result v5

    .line 124
    add-int/2addr v4, v5

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v4, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 128
    move-result p3

    .line 129
    goto :goto_2

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 133
    move-result v0

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 137
    move-result p3

    .line 138
    .line 139
    :goto_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 140
    .line 141
    if-ne v0, v3, :cond_7

    .line 142
    .line 143
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myHeightMeasureSpec:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 147
    move-result v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 151
    move-result p0

    .line 152
    add-int/2addr v1, p0

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 156
    move-result p0

    .line 157
    goto :goto_3

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 161
    move-result p0

    .line 162
    .line 163
    .line 164
    invoke-static {p0, v2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 165
    move-result p0

    .line 166
    .line 167
    .line 168
    :goto_3
    invoke-virtual {p1, p3, p0}, Landroid/view/View;->measure(II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 172
    move-result p0

    .line 173
    .line 174
    iput p0, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 178
    move-result p0

    .line 179
    .line 180
    iput p0, p2, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 181
    const/4 p0, 0x1

    .line 182
    return p0
.end method

.method static onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$n0;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/github/mmin18/widget/FlexLayout$n0;->a(Lcom/github/mmin18/widget/FlexLayout$n0;)Ljava/util/ArrayList;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    instance-of v1, v0, Lcom/github/mmin18/widget/FlexLayout$o0;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/github/mmin18/widget/FlexLayout$o0;

    .line 27
    .line 28
    iget v0, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 3
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/github/mmin18/widget/FlexLayout$l0;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/github/mmin18/widget/FlexLayout$l0;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$l0;

    invoke-direct {v0, p1}, Lcom/github/mmin18/widget/FlexLayout$l0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/github/mmin18/widget/FlexLayout$l0;
    .locals 2

    .line 2
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$l0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/github/mmin18/widget/FlexLayout$l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method isRtl()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result p3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p5

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v0, p5, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result v2

    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    if-eq v2, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/github/mmin18/widget/FlexLayout;->isRtl()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    sub-int v3, p4, p2

    .line 42
    sub-int/2addr v3, p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->f()F

    .line 46
    move-result v4

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 50
    move-result v4

    .line 51
    .line 52
    sub-int v4, v3, v4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->g()F

    .line 56
    move-result v5

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 60
    move-result v5

    .line 61
    add-int/2addr v5, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->e()F

    .line 65
    move-result v6

    .line 66
    .line 67
    .line 68
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 69
    move-result v6

    .line 70
    sub-int/2addr v3, v6

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->a()F

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, p3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->e()F

    .line 87
    move-result v3

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 91
    move-result v3

    .line 92
    add-int/2addr v3, p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->g()F

    .line 96
    move-result v4

    .line 97
    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 100
    move-result v4

    .line 101
    add-int/2addr v4, p3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->f()F

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 109
    move-result v5

    .line 110
    add-int/2addr v5, p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->a()F

    .line 114
    move-result v2

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 118
    move-result v2

    .line 119
    add-int/2addr v2, p3

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 123
    .line 124
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    move-result v4

    .line 22
    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 25
    move-result v5

    .line 26
    .line 27
    .line 28
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    move-result v6

    .line 30
    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 33
    move-result v7

    .line 34
    .line 35
    .line 36
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 37
    move-result v8

    .line 38
    .line 39
    move/from16 v9, p1

    .line 40
    .line 41
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidthMeasureSpec:I

    .line 42
    .line 43
    move/from16 v9, p2

    .line 44
    .line 45
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeightMeasureSpec:I

    .line 46
    .line 47
    const/high16 v9, -0x80000000

    .line 48
    const/4 v10, -0x1

    .line 49
    .line 50
    const/high16 v11, 0x40000000    # 2.0f

    .line 51
    .line 52
    if-ne v5, v11, :cond_0

    .line 53
    sub-int/2addr v7, v1

    .line 54
    sub-int/2addr v7, v2

    .line 55
    .line 56
    iput v7, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    if-ne v5, v9, :cond_1

    .line 60
    .line 61
    iput v10, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 62
    sub-int/2addr v7, v1

    .line 63
    sub-int/2addr v7, v2

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    iput v10, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 67
    move v7, v10

    .line 68
    .line 69
    :goto_0
    if-ne v6, v11, :cond_2

    .line 70
    sub-int/2addr v8, v3

    .line 71
    sub-int/2addr v8, v4

    .line 72
    .line 73
    iput v8, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    if-ne v6, v9, :cond_3

    .line 77
    .line 78
    iput v10, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 79
    sub-int/2addr v8, v3

    .line 80
    sub-int/2addr v8, v4

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    iput v10, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 84
    move v8, v10

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 88
    move-result v5

    .line 89
    const/4 v12, 0x0

    .line 90
    .line 91
    :goto_2
    if-ge v12, v5, :cond_f

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    move-result-object v14

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    move-result-object v15

    .line 100
    .line 101
    check-cast v15, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15}, Lcom/github/mmin18/widget/FlexLayout$l0;->l()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 108
    move-result v14

    .line 109
    .line 110
    const/16 v9, 0x8

    .line 111
    const/4 v11, 0x0

    .line 112
    .line 113
    if-ne v14, v9, :cond_4

    .line 114
    .line 115
    iput v11, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 116
    .line 117
    iput v11, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 118
    .line 119
    :cond_4
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->left:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 120
    const/4 v14, 0x2

    .line 121
    .line 122
    if-nez v9, :cond_9

    .line 123
    .line 124
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->right:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 125
    .line 126
    if-eqz v9, :cond_5

    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    const/4 v9, 0x0

    .line 130
    .line 131
    :goto_3
    iget-object v10, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->centerX:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 132
    .line 133
    if-eqz v10, :cond_6

    .line 134
    .line 135
    add-int/lit8 v9, v9, 0x1

    .line 136
    .line 137
    :cond_6
    iget-object v10, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 138
    .line 139
    if-nez v10, :cond_7

    .line 140
    .line 141
    iget v10, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    .line 143
    sget v13, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 144
    .line 145
    if-eq v10, v13, :cond_8

    .line 146
    .line 147
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 148
    .line 149
    :cond_8
    if-ge v9, v14, :cond_9

    .line 150
    .line 151
    iput v11, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    .line 152
    .line 153
    :cond_9
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->top:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 154
    .line 155
    if-nez v9, :cond_e

    .line 156
    .line 157
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 158
    .line 159
    if-eqz v9, :cond_a

    .line 160
    const/4 v13, 0x1

    .line 161
    goto :goto_4

    .line 162
    :cond_a
    const/4 v13, 0x0

    .line 163
    .line 164
    :goto_4
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->centerY:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 165
    .line 166
    if-eqz v9, :cond_b

    .line 167
    .line 168
    add-int/lit8 v13, v13, 0x1

    .line 169
    .line 170
    :cond_b
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 171
    .line 172
    if-nez v9, :cond_c

    .line 173
    .line 174
    iget v9, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    .line 176
    sget v10, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 177
    .line 178
    if-eq v9, v10, :cond_d

    .line 179
    .line 180
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 181
    .line 182
    :cond_d
    if-ge v13, v14, :cond_e

    .line 183
    .line 184
    iput v11, v15, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    .line 185
    .line 186
    :cond_e
    add-int/lit8 v12, v12, 0x1

    .line 187
    .line 188
    const/high16 v9, -0x80000000

    .line 189
    const/4 v10, -0x1

    .line 190
    .line 191
    const/high16 v11, 0x40000000    # 2.0f

    .line 192
    goto :goto_2

    .line 193
    .line 194
    :cond_f
    if-nez v5, :cond_10

    .line 195
    const/4 v9, 0x1

    .line 196
    goto :goto_5

    .line 197
    :cond_10
    const/4 v9, 0x0

    .line 198
    :goto_5
    const/4 v10, 0x0

    .line 199
    .line 200
    :goto_6
    mul-int/lit8 v11, v5, 0x4

    .line 201
    .line 202
    const-string v12, ")"

    .line 203
    .line 204
    const-string v13, "incomplete layout, circular dependency? (index="

    .line 205
    .line 206
    if-ge v10, v11, :cond_34

    .line 207
    const/4 v11, -0x1

    .line 208
    const/4 v15, 0x0

    .line 209
    .line 210
    const/16 v16, 0x0

    .line 211
    .line 212
    const/16 v17, 0x0

    .line 213
    .line 214
    :goto_7
    if-ge v15, v5, :cond_25

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 218
    move-result-object v14

    .line 219
    .line 220
    .line 221
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 222
    move-result-object v18

    .line 223
    .line 224
    move-object/from16 v6, v18

    .line 225
    .line 226
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 227
    .line 228
    move/from16 v18, v4

    .line 229
    .line 230
    iget-object v4, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->left:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 231
    .line 232
    if-eqz v4, :cond_12

    .line 233
    .line 234
    move/from16 v19, v3

    .line 235
    .line 236
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    .line 237
    .line 238
    cmpl-float v3, v3, v3

    .line 239
    .line 240
    if-eqz v3, :cond_11

    .line 241
    .line 242
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 243
    .line 244
    move/from16 v20, v2

    .line 245
    const/4 v2, 0x0

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v0, v15, v2, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 249
    move-result v3

    .line 250
    .line 251
    cmpl-float v2, v3, v3

    .line 252
    .line 253
    if-nez v2, :cond_13

    .line 254
    .line 255
    iput v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    .line 256
    .line 257
    add-int/lit8 v17, v17, 0x1

    .line 258
    goto :goto_8

    .line 259
    .line 260
    :cond_11
    move/from16 v20, v2

    .line 261
    goto :goto_8

    .line 262
    .line 263
    :cond_12
    move/from16 v20, v2

    .line 264
    .line 265
    move/from16 v19, v3

    .line 266
    .line 267
    :cond_13
    :goto_8
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->right:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 268
    .line 269
    if-eqz v2, :cond_14

    .line 270
    .line 271
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    .line 272
    .line 273
    cmpl-float v3, v3, v3

    .line 274
    .line 275
    if-eqz v3, :cond_14

    .line 276
    .line 277
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 278
    const/4 v4, 0x0

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 282
    move-result v2

    .line 283
    .line 284
    cmpl-float v3, v2, v2

    .line 285
    .line 286
    if-nez v3, :cond_14

    .line 287
    .line 288
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    .line 289
    .line 290
    add-int/lit8 v17, v17, 0x1

    .line 291
    .line 292
    :cond_14
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->top:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 293
    .line 294
    if-eqz v2, :cond_15

    .line 295
    .line 296
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    .line 297
    .line 298
    cmpl-float v3, v3, v3

    .line 299
    .line 300
    if-eqz v3, :cond_15

    .line 301
    .line 302
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 303
    const/4 v4, 0x1

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 307
    move-result v2

    .line 308
    .line 309
    cmpl-float v3, v2, v2

    .line 310
    .line 311
    if-nez v3, :cond_15

    .line 312
    .line 313
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    .line 314
    .line 315
    add-int/lit8 v17, v17, 0x1

    .line 316
    .line 317
    :cond_15
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 318
    .line 319
    if-eqz v2, :cond_16

    .line 320
    .line 321
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    .line 322
    .line 323
    cmpl-float v3, v3, v3

    .line 324
    .line 325
    if-eqz v3, :cond_16

    .line 326
    .line 327
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 328
    const/4 v4, 0x1

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 332
    move-result v2

    .line 333
    .line 334
    cmpl-float v3, v2, v2

    .line 335
    .line 336
    if-nez v3, :cond_16

    .line 337
    .line 338
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    .line 339
    .line 340
    add-int/lit8 v17, v17, 0x1

    .line 341
    .line 342
    :cond_16
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->centerX:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 343
    .line 344
    if-eqz v2, :cond_17

    .line 345
    .line 346
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    .line 347
    .line 348
    cmpl-float v3, v3, v3

    .line 349
    .line 350
    if-eqz v3, :cond_17

    .line 351
    .line 352
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 353
    const/4 v4, 0x0

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 357
    move-result v2

    .line 358
    .line 359
    cmpl-float v3, v2, v2

    .line 360
    .line 361
    if-nez v3, :cond_17

    .line 362
    .line 363
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    .line 364
    .line 365
    add-int/lit8 v17, v17, 0x1

    .line 366
    .line 367
    :cond_17
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->centerY:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 368
    .line 369
    if-eqz v2, :cond_18

    .line 370
    .line 371
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    .line 372
    .line 373
    cmpl-float v3, v3, v3

    .line 374
    .line 375
    if-eqz v3, :cond_18

    .line 376
    .line 377
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 378
    const/4 v4, 0x1

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 382
    move-result v2

    .line 383
    .line 384
    cmpl-float v3, v2, v2

    .line 385
    .line 386
    if-nez v3, :cond_18

    .line 387
    .line 388
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    .line 389
    .line 390
    add-int/lit8 v17, v17, 0x1

    .line 391
    .line 392
    :cond_18
    iget v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 393
    .line 394
    cmpl-float v2, v2, v2

    .line 395
    .line 396
    if-eqz v2, :cond_1d

    .line 397
    .line 398
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 399
    .line 400
    if-eqz v2, :cond_19

    .line 401
    .line 402
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 403
    const/4 v4, 0x0

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 407
    move-result v2

    .line 408
    .line 409
    cmpl-float v3, v2, v2

    .line 410
    .line 411
    if-nez v3, :cond_1d

    .line 412
    .line 413
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 414
    goto :goto_9

    .line 415
    :cond_19
    const/4 v4, 0x0

    .line 416
    .line 417
    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    .line 419
    sget v3, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 420
    .line 421
    if-eq v2, v3, :cond_1d

    .line 422
    const/4 v3, -0x1

    .line 423
    .line 424
    if-ne v2, v3, :cond_1a

    .line 425
    .line 426
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 427
    .line 428
    if-eq v4, v3, :cond_1a

    .line 429
    int-to-float v2, v4

    .line 430
    .line 431
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 432
    .line 433
    :goto_9
    add-int/lit8 v17, v17, 0x1

    .line 434
    goto :goto_a

    .line 435
    .line 436
    :cond_1a
    if-ltz v2, :cond_1b

    .line 437
    int-to-float v2, v2

    .line 438
    .line 439
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 440
    goto :goto_9

    .line 441
    .line 442
    :cond_1b
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 443
    const/4 v4, -0x1

    .line 444
    .line 445
    if-ne v3, v4, :cond_1c

    .line 446
    .line 447
    iget v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 448
    .line 449
    .line 450
    invoke-static {v0, v14, v6, v2, v3}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$l0;II)Z

    .line 451
    move-result v2

    .line 452
    .line 453
    if-eqz v2, :cond_1c

    .line 454
    .line 455
    add-int/lit8 v17, v17, 0x1

    .line 456
    .line 457
    :cond_1c
    iget v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 458
    .line 459
    if-eq v2, v4, :cond_1d

    .line 460
    .line 461
    iget v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 462
    const/4 v4, -0x2

    .line 463
    .line 464
    if-ne v3, v4, :cond_1d

    .line 465
    int-to-float v2, v2

    .line 466
    .line 467
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 468
    goto :goto_9

    .line 469
    .line 470
    :cond_1d
    :goto_a
    iget v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 471
    .line 472
    cmpl-float v2, v2, v2

    .line 473
    .line 474
    if-eqz v2, :cond_22

    .line 475
    .line 476
    iget-object v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 477
    .line 478
    if-eqz v2, :cond_1e

    .line 479
    .line 480
    iget-object v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    .line 481
    const/4 v4, 0x1

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v0, v15, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$n0;->b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 485
    move-result v2

    .line 486
    .line 487
    cmpl-float v3, v2, v2

    .line 488
    .line 489
    if-nez v3, :cond_22

    .line 490
    .line 491
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 492
    goto :goto_b

    .line 493
    :cond_1e
    const/4 v4, 0x1

    .line 494
    .line 495
    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    .line 497
    sget v3, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 498
    .line 499
    if-eq v2, v3, :cond_22

    .line 500
    const/4 v3, -0x1

    .line 501
    .line 502
    if-ne v2, v3, :cond_1f

    .line 503
    .line 504
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 505
    .line 506
    if-eq v4, v3, :cond_1f

    .line 507
    int-to-float v2, v4

    .line 508
    .line 509
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 510
    .line 511
    :goto_b
    add-int/lit8 v17, v17, 0x1

    .line 512
    goto :goto_c

    .line 513
    .line 514
    :cond_1f
    if-ltz v2, :cond_20

    .line 515
    int-to-float v2, v2

    .line 516
    .line 517
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 518
    goto :goto_b

    .line 519
    .line 520
    :cond_20
    iget v3, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 521
    const/4 v4, -0x1

    .line 522
    .line 523
    if-ne v3, v4, :cond_21

    .line 524
    .line 525
    iget v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 526
    .line 527
    .line 528
    invoke-static {v0, v14, v6, v3, v2}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$l0;II)Z

    .line 529
    move-result v2

    .line 530
    .line 531
    if-eqz v2, :cond_21

    .line 532
    .line 533
    add-int/lit8 v17, v17, 0x1

    .line 534
    .line 535
    :cond_21
    iget v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 536
    .line 537
    if-eq v2, v4, :cond_22

    .line 538
    .line 539
    iget v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 540
    const/4 v4, -0x2

    .line 541
    .line 542
    if-ne v3, v4, :cond_22

    .line 543
    int-to-float v2, v2

    .line 544
    .line 545
    iput v2, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 546
    goto :goto_b

    .line 547
    .line 548
    .line 549
    :cond_22
    :goto_c
    invoke-virtual {v6}, Lcom/github/mmin18/widget/FlexLayout$l0;->i()Z

    .line 550
    move-result v2

    .line 551
    .line 552
    if-eqz v2, :cond_23

    .line 553
    .line 554
    move/from16 v6, v16

    .line 555
    .line 556
    add-int/lit8 v16, v6, 0x1

    .line 557
    const/4 v2, -0x1

    .line 558
    goto :goto_d

    .line 559
    .line 560
    :cond_23
    move/from16 v6, v16

    .line 561
    const/4 v2, -0x1

    .line 562
    .line 563
    if-ne v11, v2, :cond_24

    .line 564
    move v11, v15

    .line 565
    .line 566
    :cond_24
    :goto_d
    add-int/lit8 v15, v15, 0x1

    .line 567
    .line 568
    move/from16 v4, v18

    .line 569
    .line 570
    move/from16 v3, v19

    .line 571
    .line 572
    move/from16 v2, v20

    .line 573
    .line 574
    goto/16 :goto_7

    .line 575
    .line 576
    :cond_25
    move/from16 v20, v2

    .line 577
    .line 578
    move/from16 v19, v3

    .line 579
    .line 580
    move/from16 v18, v4

    .line 581
    .line 582
    move/from16 v6, v16

    .line 583
    const/4 v2, -0x1

    .line 584
    .line 585
    if-ne v6, v5, :cond_26

    .line 586
    .line 587
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 588
    .line 589
    if-eq v3, v2, :cond_26

    .line 590
    .line 591
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 592
    .line 593
    if-eq v3, v2, :cond_26

    .line 594
    .line 595
    goto/16 :goto_16

    .line 596
    .line 597
    :cond_26
    if-nez v17, :cond_33

    .line 598
    .line 599
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 600
    .line 601
    if-eq v3, v2, :cond_28

    .line 602
    .line 603
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 604
    .line 605
    if-ne v3, v2, :cond_27

    .line 606
    goto :goto_e

    .line 607
    .line 608
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 609
    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    move-result-object v2

    .line 627
    .line 628
    .line 629
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 630
    throw v1

    .line 631
    :cond_28
    :goto_e
    const/4 v2, 0x0

    .line 632
    const/4 v3, 0x0

    .line 633
    const/4 v4, 0x0

    .line 634
    .line 635
    :goto_f
    if-ge v2, v5, :cond_2f

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 639
    move-result-object v6

    .line 640
    .line 641
    .line 642
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 643
    move-result-object v6

    .line 644
    .line 645
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v6}, Lcom/github/mmin18/widget/FlexLayout$l0;->f()F

    .line 649
    move-result v11

    .line 650
    .line 651
    cmpl-float v12, v11, v11

    .line 652
    .line 653
    if-nez v12, :cond_29

    .line 654
    .line 655
    .line 656
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 657
    move-result v11

    .line 658
    .line 659
    .line 660
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    .line 661
    move-result v3

    .line 662
    goto :goto_10

    .line 663
    .line 664
    :cond_29
    iget v11, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 665
    const/4 v12, -0x1

    .line 666
    .line 667
    if-eq v11, v12, :cond_2b

    .line 668
    .line 669
    .line 670
    invoke-virtual {v6}, Lcom/github/mmin18/widget/FlexLayout$l0;->e()F

    .line 671
    move-result v11

    .line 672
    .line 673
    cmpl-float v12, v11, v11

    .line 674
    .line 675
    if-nez v12, :cond_2a

    .line 676
    .line 677
    iget v12, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 678
    int-to-float v12, v12

    .line 679
    add-float/2addr v11, v12

    .line 680
    .line 681
    .line 682
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 683
    move-result v11

    .line 684
    .line 685
    .line 686
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    .line 687
    move-result v3

    .line 688
    goto :goto_10

    .line 689
    .line 690
    :cond_2a
    iget v11, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 691
    .line 692
    .line 693
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    .line 694
    move-result v3

    .line 695
    .line 696
    .line 697
    :cond_2b
    :goto_10
    invoke-virtual {v6}, Lcom/github/mmin18/widget/FlexLayout$l0;->a()F

    .line 698
    move-result v11

    .line 699
    .line 700
    cmpl-float v12, v11, v11

    .line 701
    .line 702
    if-nez v12, :cond_2c

    .line 703
    .line 704
    .line 705
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 706
    move-result v11

    .line 707
    .line 708
    .line 709
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 710
    move-result v4

    .line 711
    :goto_11
    const/4 v11, -0x1

    .line 712
    goto :goto_12

    .line 713
    .line 714
    :cond_2c
    iget v11, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 715
    const/4 v12, -0x1

    .line 716
    .line 717
    if-eq v11, v12, :cond_2e

    .line 718
    .line 719
    .line 720
    invoke-virtual {v6}, Lcom/github/mmin18/widget/FlexLayout$l0;->g()F

    .line 721
    move-result v11

    .line 722
    .line 723
    cmpl-float v12, v11, v11

    .line 724
    .line 725
    if-nez v12, :cond_2d

    .line 726
    .line 727
    iget v12, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 728
    int-to-float v12, v12

    .line 729
    add-float/2addr v11, v12

    .line 730
    .line 731
    .line 732
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 733
    move-result v11

    .line 734
    .line 735
    .line 736
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 737
    move-result v4

    .line 738
    goto :goto_11

    .line 739
    .line 740
    :cond_2d
    iget v11, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 741
    .line 742
    .line 743
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 744
    move-result v4

    .line 745
    goto :goto_11

    .line 746
    :cond_2e
    move v11, v12

    .line 747
    .line 748
    :goto_12
    iput v11, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 749
    .line 750
    iput v11, v6, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 751
    .line 752
    add-int/lit8 v2, v2, 0x1

    .line 753
    goto :goto_f

    .line 754
    :cond_2f
    const/4 v11, -0x1

    .line 755
    .line 756
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 757
    .line 758
    if-ne v2, v11, :cond_31

    .line 759
    .line 760
    if-ne v7, v11, :cond_30

    .line 761
    goto :goto_13

    .line 762
    .line 763
    .line 764
    :cond_30
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 765
    move-result v3

    .line 766
    .line 767
    :goto_13
    iput v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 768
    .line 769
    :cond_31
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 770
    .line 771
    if-ne v2, v11, :cond_33

    .line 772
    .line 773
    if-ne v8, v11, :cond_32

    .line 774
    goto :goto_14

    .line 775
    .line 776
    .line 777
    :cond_32
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 778
    move-result v4

    .line 779
    .line 780
    :goto_14
    iput v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 781
    .line 782
    :cond_33
    add-int/lit8 v10, v10, 0x1

    .line 783
    .line 784
    move/from16 v4, v18

    .line 785
    .line 786
    move/from16 v3, v19

    .line 787
    .line 788
    move/from16 v2, v20

    .line 789
    .line 790
    goto/16 :goto_6

    .line 791
    .line 792
    :cond_34
    move/from16 v20, v2

    .line 793
    .line 794
    move/from16 v19, v3

    .line 795
    .line 796
    move/from16 v18, v4

    .line 797
    .line 798
    if-nez v9, :cond_38

    .line 799
    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    const/4 v6, 0x0

    .line 805
    .line 806
    :goto_15
    if-ge v6, v5, :cond_37

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 810
    move-result-object v2

    .line 811
    .line 812
    .line 813
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 814
    move-result-object v2

    .line 815
    .line 816
    check-cast v2, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$l0;->i()Z

    .line 820
    move-result v2

    .line 821
    .line 822
    if-nez v2, :cond_36

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 826
    move-result v2

    .line 827
    .line 828
    if-lez v2, :cond_35

    .line 829
    .line 830
    const/16 v2, 0x2c

    .line 831
    .line 832
    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    :cond_35
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    :cond_36
    add-int/lit8 v6, v6, 0x1

    .line 839
    goto :goto_15

    .line 840
    .line 841
    :cond_37
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 842
    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    move-result-object v1

    .line 860
    .line 861
    .line 862
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 863
    throw v2

    .line 864
    :cond_38
    :goto_16
    const/4 v6, 0x0

    .line 865
    .line 866
    :goto_17
    if-ge v6, v5, :cond_3f

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 870
    move-result-object v2

    .line 871
    .line 872
    .line 873
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 874
    move-result-object v3

    .line 875
    .line 876
    check-cast v3, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 877
    .line 878
    iget-object v4, v3, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 879
    .line 880
    if-eqz v4, :cond_39

    .line 881
    .line 882
    iget v4, v3, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    .line 883
    .line 884
    cmpl-float v7, v4, v4

    .line 885
    .line 886
    if-nez v7, :cond_39

    .line 887
    .line 888
    .line 889
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 890
    move-result v4

    .line 891
    .line 892
    const/high16 v7, 0x40000000    # 2.0f

    .line 893
    .line 894
    .line 895
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 896
    move-result v4

    .line 897
    goto :goto_18

    .line 898
    .line 899
    :cond_39
    const/high16 v7, 0x40000000    # 2.0f

    .line 900
    .line 901
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 902
    const/4 v8, -0x2

    .line 903
    .line 904
    if-ne v4, v8, :cond_3a

    .line 905
    .line 906
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 907
    .line 908
    const/high16 v8, -0x80000000

    .line 909
    .line 910
    .line 911
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 912
    move-result v4

    .line 913
    goto :goto_18

    .line 914
    :cond_3a
    const/4 v8, -0x1

    .line 915
    .line 916
    if-ne v4, v8, :cond_3b

    .line 917
    .line 918
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 919
    .line 920
    .line 921
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 922
    move-result v4

    .line 923
    goto :goto_18

    .line 924
    .line 925
    .line 926
    :cond_3b
    invoke-virtual {v3}, Lcom/github/mmin18/widget/FlexLayout$l0;->h()F

    .line 927
    move-result v4

    .line 928
    .line 929
    .line 930
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 931
    move-result v4

    .line 932
    .line 933
    .line 934
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 935
    move-result v4

    .line 936
    .line 937
    :goto_18
    iget-object v8, v3, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 938
    .line 939
    if-eqz v8, :cond_3c

    .line 940
    .line 941
    iget v8, v3, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    .line 942
    .line 943
    cmpl-float v9, v8, v8

    .line 944
    .line 945
    if-nez v9, :cond_3c

    .line 946
    .line 947
    .line 948
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 949
    move-result v3

    .line 950
    .line 951
    .line 952
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 953
    move-result v3

    .line 954
    const/4 v9, -0x2

    .line 955
    .line 956
    const/high16 v10, -0x80000000

    .line 957
    :goto_19
    const/4 v11, -0x1

    .line 958
    goto :goto_1a

    .line 959
    .line 960
    :cond_3c
    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 961
    const/4 v9, -0x2

    .line 962
    .line 963
    if-ne v8, v9, :cond_3d

    .line 964
    .line 965
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 966
    .line 967
    const/high16 v10, -0x80000000

    .line 968
    .line 969
    .line 970
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 971
    move-result v3

    .line 972
    goto :goto_19

    .line 973
    .line 974
    :cond_3d
    const/high16 v10, -0x80000000

    .line 975
    const/4 v11, -0x1

    .line 976
    .line 977
    if-ne v8, v11, :cond_3e

    .line 978
    .line 979
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 980
    .line 981
    .line 982
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 983
    move-result v3

    .line 984
    goto :goto_1a

    .line 985
    .line 986
    .line 987
    :cond_3e
    invoke-virtual {v3}, Lcom/github/mmin18/widget/FlexLayout$l0;->d()F

    .line 988
    move-result v3

    .line 989
    .line 990
    .line 991
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 992
    move-result v3

    .line 993
    .line 994
    .line 995
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 996
    move-result v3

    .line 997
    .line 998
    .line 999
    :goto_1a
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 1000
    .line 1001
    add-int/lit8 v6, v6, 0x1

    .line 1002
    .line 1003
    goto/16 :goto_17

    .line 1004
    .line 1005
    :cond_3f
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 1006
    add-int/2addr v2, v1

    .line 1007
    .line 1008
    add-int v2, v2, v20

    .line 1009
    .line 1010
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 1011
    .line 1012
    add-int v1, v1, v19

    .line 1013
    .line 1014
    add-int v1, v1, v18

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1018
    return-void
.end method
