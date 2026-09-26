.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field public static final USE_CHAIN_OPTIMIZATION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .locals 37

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    move/from16 v10, p2

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 11
    .line 12
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 13
    .line 14
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 15
    .line 16
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    .line 20
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    aget-object v4, v4, v10

    .line 25
    .line 26
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    const/4 v15, 0x1

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    move v4, v15

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 33
    :goto_0
    const/4 v5, 0x2

    .line 34
    .line 35
    if-nez v10, :cond_4

    .line 36
    .line 37
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 38
    .line 39
    if-nez v7, :cond_1

    .line 40
    move v8, v15

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v8, 0x0

    .line 43
    .line 44
    :goto_1
    if-ne v7, v15, :cond_2

    .line 45
    .line 46
    move/from16 v16, v15

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    const/16 v16, 0x0

    .line 50
    .line 51
    :goto_2
    if-ne v7, v5, :cond_3

    .line 52
    :goto_3
    move v5, v15

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    const/4 v5, 0x0

    .line 55
    .line 56
    :goto_4
    move/from16 v17, v16

    .line 57
    const/4 v7, 0x0

    .line 58
    .line 59
    move/from16 v16, v8

    .line 60
    move-object v8, v11

    .line 61
    goto :goto_7

    .line 62
    .line 63
    :cond_4
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 64
    .line 65
    if-nez v7, :cond_5

    .line 66
    move v8, v15

    .line 67
    goto :goto_5

    .line 68
    :cond_5
    const/4 v8, 0x0

    .line 69
    .line 70
    :goto_5
    if-ne v7, v15, :cond_6

    .line 71
    .line 72
    move/from16 v16, v15

    .line 73
    goto :goto_6

    .line 74
    .line 75
    :cond_6
    const/16 v16, 0x0

    .line 76
    .line 77
    :goto_6
    if-ne v7, v5, :cond_3

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :goto_7
    const/16 v21, 0x0

    .line 81
    .line 82
    if-nez v7, :cond_14

    .line 83
    .line 84
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 85
    .line 86
    aget-object v6, v6, p3

    .line 87
    .line 88
    if-eqz v5, :cond_7

    .line 89
    .line 90
    const/16 v19, 0x1

    .line 91
    goto :goto_8

    .line 92
    .line 93
    :cond_7
    const/16 v19, 0x4

    .line 94
    .line 95
    .line 96
    :goto_8
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 97
    move-result v23

    .line 98
    .line 99
    iget-object v15, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 100
    .line 101
    aget-object v15, v15, v10

    .line 102
    .line 103
    move/from16 v25, v3

    .line 104
    .line 105
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 106
    .line 107
    if-ne v15, v3, :cond_8

    .line 108
    .line 109
    iget-object v15, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 110
    .line 111
    aget v15, v15, v10

    .line 112
    .line 113
    if-nez v15, :cond_8

    .line 114
    .line 115
    move/from16 v26, v7

    .line 116
    const/4 v15, 0x1

    .line 117
    goto :goto_9

    .line 118
    .line 119
    :cond_8
    move/from16 v26, v7

    .line 120
    const/4 v15, 0x0

    .line 121
    .line 122
    :goto_9
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    .line 124
    if-eqz v7, :cond_9

    .line 125
    .line 126
    if-eq v8, v11, :cond_9

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 130
    move-result v7

    .line 131
    .line 132
    add-int v23, v23, v7

    .line 133
    .line 134
    :cond_9
    move/from16 v7, v23

    .line 135
    .line 136
    if-eqz v5, :cond_a

    .line 137
    .line 138
    if-eq v8, v11, :cond_a

    .line 139
    .line 140
    if-eq v8, v13, :cond_a

    .line 141
    .line 142
    move-object/from16 v23, v2

    .line 143
    .line 144
    const/16 v19, 0x8

    .line 145
    goto :goto_a

    .line 146
    .line 147
    :cond_a
    move-object/from16 v23, v2

    .line 148
    .line 149
    :goto_a
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 150
    .line 151
    if-eqz v2, :cond_e

    .line 152
    .line 153
    if-ne v8, v13, :cond_b

    .line 154
    .line 155
    move-object/from16 v27, v11

    .line 156
    .line 157
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 158
    .line 159
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 160
    const/4 v1, 0x6

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v11, v2, v7, v1}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 164
    goto :goto_b

    .line 165
    .line 166
    :cond_b
    move-object/from16 v27, v11

    .line 167
    .line 168
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 169
    .line 170
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 171
    .line 172
    const/16 v11, 0x8

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v1, v2, v7, v11}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 176
    .line 177
    :goto_b
    if-eqz v15, :cond_c

    .line 178
    .line 179
    if-nez v5, :cond_c

    .line 180
    .line 181
    const/16 v19, 0x5

    .line 182
    .line 183
    :cond_c
    if-ne v8, v13, :cond_d

    .line 184
    .line 185
    if-eqz v5, :cond_d

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0(I)Z

    .line 189
    move-result v1

    .line 190
    .line 191
    if-eqz v1, :cond_d

    .line 192
    const/4 v1, 0x5

    .line 193
    goto :goto_c

    .line 194
    .line 195
    :cond_d
    move/from16 v1, v19

    .line 196
    .line 197
    :goto_c
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 198
    .line 199
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 200
    .line 201
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v2, v6, v7, v1}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 205
    goto :goto_d

    .line 206
    .line 207
    :cond_e
    move-object/from16 v27, v11

    .line 208
    .line 209
    :goto_d
    if-eqz v4, :cond_10

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 213
    move-result v1

    .line 214
    .line 215
    const/16 v2, 0x8

    .line 216
    .line 217
    if-eq v1, v2, :cond_f

    .line 218
    .line 219
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 220
    .line 221
    aget-object v1, v1, v10

    .line 222
    .line 223
    if-ne v1, v3, :cond_f

    .line 224
    .line 225
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 226
    .line 227
    add-int/lit8 v2, p3, 0x1

    .line 228
    .line 229
    aget-object v2, v1, v2

    .line 230
    .line 231
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 232
    .line 233
    aget-object v1, v1, p3

    .line 234
    .line 235
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 236
    const/4 v3, 0x0

    .line 237
    const/4 v6, 0x5

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v2, v1, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 241
    goto :goto_e

    .line 242
    :cond_f
    const/4 v3, 0x0

    .line 243
    .line 244
    :goto_e
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 245
    .line 246
    aget-object v1, v1, p3

    .line 247
    .line 248
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 249
    .line 250
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 251
    .line 252
    aget-object v2, v2, p3

    .line 253
    .line 254
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 255
    .line 256
    const/16 v6, 0x8

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v1, v2, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 260
    .line 261
    :cond_10
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 262
    .line 263
    add-int/lit8 v2, p3, 0x1

    .line 264
    .line 265
    aget-object v1, v1, v2

    .line 266
    .line 267
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 268
    .line 269
    if-eqz v1, :cond_12

    .line 270
    .line 271
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 272
    .line 273
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 274
    .line 275
    aget-object v2, v2, p3

    .line 276
    .line 277
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 278
    .line 279
    if-eqz v2, :cond_12

    .line 280
    .line 281
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 282
    .line 283
    if-eq v2, v8, :cond_11

    .line 284
    goto :goto_f

    .line 285
    .line 286
    :cond_11
    move-object/from16 v21, v1

    .line 287
    .line 288
    :cond_12
    :goto_f
    if-eqz v21, :cond_13

    .line 289
    .line 290
    move-object/from16 v8, v21

    .line 291
    .line 292
    move/from16 v7, v26

    .line 293
    goto :goto_10

    .line 294
    :cond_13
    const/4 v7, 0x1

    .line 295
    .line 296
    :goto_10
    move-object/from16 v1, p4

    .line 297
    .line 298
    move-object/from16 v2, v23

    .line 299
    .line 300
    move/from16 v3, v25

    .line 301
    .line 302
    move-object/from16 v11, v27

    .line 303
    .line 304
    goto/16 :goto_7

    .line 305
    .line 306
    :cond_14
    move-object/from16 v23, v2

    .line 307
    .line 308
    move/from16 v25, v3

    .line 309
    .line 310
    move-object/from16 v27, v11

    .line 311
    .line 312
    if-eqz v14, :cond_17

    .line 313
    .line 314
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 315
    .line 316
    add-int/lit8 v2, p3, 0x1

    .line 317
    .line 318
    aget-object v1, v1, v2

    .line 319
    .line 320
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 321
    .line 322
    if-eqz v1, :cond_17

    .line 323
    .line 324
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 325
    .line 326
    aget-object v1, v1, v2

    .line 327
    .line 328
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 329
    .line 330
    aget-object v3, v3, v10

    .line 331
    .line 332
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 333
    .line 334
    if-ne v3, v6, :cond_15

    .line 335
    .line 336
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 337
    .line 338
    aget v3, v3, v10

    .line 339
    .line 340
    if-nez v3, :cond_15

    .line 341
    .line 342
    if-nez v5, :cond_15

    .line 343
    .line 344
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 345
    .line 346
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 347
    .line 348
    if-ne v6, v0, :cond_15

    .line 349
    .line 350
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 351
    .line 352
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 356
    move-result v7

    .line 357
    neg-int v7, v7

    .line 358
    const/4 v8, 0x5

    .line 359
    .line 360
    .line 361
    invoke-virtual {v9, v6, v3, v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 362
    goto :goto_11

    .line 363
    :cond_15
    const/4 v8, 0x5

    .line 364
    .line 365
    if-eqz v5, :cond_16

    .line 366
    .line 367
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 368
    .line 369
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 370
    .line 371
    if-ne v6, v0, :cond_16

    .line 372
    .line 373
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 374
    .line 375
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 379
    move-result v7

    .line 380
    neg-int v7, v7

    .line 381
    const/4 v11, 0x4

    .line 382
    .line 383
    .line 384
    invoke-virtual {v9, v6, v3, v7, v11}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 385
    .line 386
    :cond_16
    :goto_11
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 387
    .line 388
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 389
    .line 390
    aget-object v2, v6, v2

    .line 391
    .line 392
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 393
    .line 394
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 398
    move-result v1

    .line 399
    neg-int v1, v1

    .line 400
    const/4 v6, 0x6

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9, v3, v2, v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 404
    goto :goto_12

    .line 405
    :cond_17
    const/4 v8, 0x5

    .line 406
    .line 407
    :goto_12
    if-eqz v4, :cond_18

    .line 408
    .line 409
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 410
    .line 411
    add-int/lit8 v1, p3, 0x1

    .line 412
    .line 413
    aget-object v0, v0, v1

    .line 414
    .line 415
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 416
    .line 417
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    .line 419
    aget-object v1, v2, v1

    .line 420
    .line 421
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 425
    move-result v1

    .line 426
    .line 427
    const/16 v3, 0x8

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9, v0, v2, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 431
    .line 432
    :cond_18
    move-object/from16 v0, p4

    .line 433
    .line 434
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 435
    .line 436
    if-eqz v1, :cond_1e

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 440
    move-result v2

    .line 441
    const/4 v3, 0x1

    .line 442
    .line 443
    if-le v2, v3, :cond_1e

    .line 444
    .line 445
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 446
    .line 447
    if-eqz v3, :cond_19

    .line 448
    .line 449
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 450
    .line 451
    if-nez v3, :cond_19

    .line 452
    .line 453
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 454
    int-to-float v3, v3

    .line 455
    goto :goto_13

    .line 456
    .line 457
    :cond_19
    move/from16 v3, v25

    .line 458
    :goto_13
    const/4 v4, 0x0

    .line 459
    .line 460
    move/from16 v29, v4

    .line 461
    .line 462
    move-object/from16 v7, v21

    .line 463
    const/4 v6, 0x0

    .line 464
    .line 465
    :goto_14
    if-ge v6, v2, :cond_1e

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    move-result-object v11

    .line 470
    .line 471
    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 472
    .line 473
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 474
    .line 475
    aget v15, v15, v10

    .line 476
    .line 477
    cmpg-float v20, v15, v4

    .line 478
    .line 479
    if-gez v20, :cond_1b

    .line 480
    .line 481
    iget-boolean v15, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 482
    .line 483
    if-eqz v15, :cond_1a

    .line 484
    .line 485
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 486
    .line 487
    add-int/lit8 v15, p3, 0x1

    .line 488
    .line 489
    aget-object v15, v11, v15

    .line 490
    .line 491
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 492
    .line 493
    aget-object v11, v11, p3

    .line 494
    .line 495
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 496
    const/4 v4, 0x4

    .line 497
    const/4 v8, 0x0

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9, v15, v11, v8, v4}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 501
    move v4, v8

    .line 502
    goto :goto_17

    .line 503
    :cond_1a
    const/4 v4, 0x4

    .line 504
    .line 505
    const/high16 v15, 0x3f800000    # 1.0f

    .line 506
    :goto_15
    const/4 v8, 0x0

    .line 507
    goto :goto_16

    .line 508
    :cond_1b
    const/4 v4, 0x4

    .line 509
    goto :goto_15

    .line 510
    .line 511
    :goto_16
    cmpl-float v19, v15, v8

    .line 512
    .line 513
    if-nez v19, :cond_1c

    .line 514
    .line 515
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 516
    .line 517
    add-int/lit8 v15, p3, 0x1

    .line 518
    .line 519
    aget-object v15, v11, v15

    .line 520
    .line 521
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 522
    .line 523
    aget-object v11, v11, p3

    .line 524
    .line 525
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 526
    const/4 v4, 0x0

    .line 527
    .line 528
    const/16 v8, 0x8

    .line 529
    .line 530
    .line 531
    invoke-virtual {v9, v15, v11, v4, v8}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 532
    .line 533
    :goto_17
    move-object/from16 v25, v1

    .line 534
    .line 535
    move/from16 v18, v2

    .line 536
    goto :goto_19

    .line 537
    :cond_1c
    const/4 v4, 0x0

    .line 538
    .line 539
    if-eqz v7, :cond_1d

    .line 540
    .line 541
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 542
    .line 543
    aget-object v8, v7, p3

    .line 544
    .line 545
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 546
    .line 547
    add-int/lit8 v18, p3, 0x1

    .line 548
    .line 549
    aget-object v7, v7, v18

    .line 550
    .line 551
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 552
    .line 553
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 554
    .line 555
    move-object/from16 v25, v1

    .line 556
    .line 557
    aget-object v1, v4, p3

    .line 558
    .line 559
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 560
    .line 561
    aget-object v4, v4, v18

    .line 562
    .line 563
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 564
    .line 565
    move/from16 v18, v2

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 569
    move-result-object v2

    .line 570
    .line 571
    move-object/from16 v28, v2

    .line 572
    .line 573
    move/from16 v30, v3

    .line 574
    .line 575
    move/from16 v31, v15

    .line 576
    .line 577
    move-object/from16 v32, v8

    .line 578
    .line 579
    move-object/from16 v33, v7

    .line 580
    .line 581
    move-object/from16 v34, v1

    .line 582
    .line 583
    move-object/from16 v35, v4

    .line 584
    .line 585
    .line 586
    invoke-virtual/range {v28 .. v35}, Landroidx/constraintlayout/core/ArrayRow;->l(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 590
    goto :goto_18

    .line 591
    .line 592
    :cond_1d
    move-object/from16 v25, v1

    .line 593
    .line 594
    move/from16 v18, v2

    .line 595
    :goto_18
    move-object v7, v11

    .line 596
    .line 597
    move/from16 v29, v15

    .line 598
    .line 599
    :goto_19
    add-int/lit8 v6, v6, 0x1

    .line 600
    .line 601
    move/from16 v2, v18

    .line 602
    .line 603
    move-object/from16 v1, v25

    .line 604
    const/4 v4, 0x0

    .line 605
    const/4 v8, 0x5

    .line 606
    .line 607
    goto/16 :goto_14

    .line 608
    .line 609
    :cond_1e
    if-eqz v13, :cond_20

    .line 610
    .line 611
    if-eq v13, v14, :cond_1f

    .line 612
    .line 613
    if-eqz v5, :cond_20

    .line 614
    .line 615
    :cond_1f
    move-object/from16 v11, v27

    .line 616
    goto :goto_1a

    .line 617
    .line 618
    :cond_20
    move-object/from16 v11, v27

    .line 619
    goto :goto_1f

    .line 620
    .line 621
    :goto_1a
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 622
    .line 623
    aget-object v0, v0, p3

    .line 624
    .line 625
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 626
    .line 627
    add-int/lit8 v2, p3, 0x1

    .line 628
    .line 629
    aget-object v1, v1, v2

    .line 630
    .line 631
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 632
    .line 633
    if-eqz v0, :cond_21

    .line 634
    .line 635
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 636
    move-object v3, v0

    .line 637
    goto :goto_1b

    .line 638
    .line 639
    :cond_21
    move-object/from16 v3, v21

    .line 640
    .line 641
    :goto_1b
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 642
    .line 643
    if-eqz v0, :cond_22

    .line 644
    .line 645
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 646
    move-object v5, v0

    .line 647
    goto :goto_1c

    .line 648
    .line 649
    :cond_22
    move-object/from16 v5, v21

    .line 650
    .line 651
    :goto_1c
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 652
    .line 653
    aget-object v0, v0, p3

    .line 654
    .line 655
    if-eqz v14, :cond_23

    .line 656
    .line 657
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 658
    .line 659
    aget-object v1, v1, v2

    .line 660
    .line 661
    :cond_23
    if-eqz v3, :cond_46

    .line 662
    .line 663
    if-eqz v5, :cond_46

    .line 664
    .line 665
    if-nez v10, :cond_24

    .line 666
    .line 667
    move-object/from16 v2, v23

    .line 668
    .line 669
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 670
    :goto_1d
    move v4, v2

    .line 671
    goto :goto_1e

    .line 672
    .line 673
    :cond_24
    move-object/from16 v2, v23

    .line 674
    .line 675
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 676
    goto :goto_1d

    .line 677
    .line 678
    .line 679
    :goto_1e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 680
    move-result v6

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 684
    move-result v7

    .line 685
    .line 686
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 687
    .line 688
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 689
    const/4 v10, 0x7

    .line 690
    .line 691
    move-object/from16 v0, p1

    .line 692
    move-object v1, v2

    .line 693
    move-object v2, v3

    .line 694
    move v3, v6

    .line 695
    move-object v6, v8

    .line 696
    move v8, v10

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 700
    .line 701
    goto/16 :goto_39

    .line 702
    .line 703
    :goto_1f
    if-eqz v16, :cond_36

    .line 704
    .line 705
    if-eqz v13, :cond_36

    .line 706
    .line 707
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 708
    .line 709
    if-lez v1, :cond_25

    .line 710
    .line 711
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 712
    .line 713
    if-ne v0, v1, :cond_25

    .line 714
    .line 715
    const/16 v24, 0x1

    .line 716
    goto :goto_20

    .line 717
    .line 718
    :cond_25
    const/16 v24, 0x0

    .line 719
    :goto_20
    move-object v8, v13

    .line 720
    move-object v15, v8

    .line 721
    .line 722
    :goto_21
    if-eqz v15, :cond_46

    .line 723
    .line 724
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 725
    .line 726
    aget-object v0, v0, v10

    .line 727
    move-object v7, v0

    .line 728
    .line 729
    :goto_22
    if-eqz v7, :cond_26

    .line 730
    .line 731
    .line 732
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 733
    move-result v0

    .line 734
    .line 735
    const/16 v6, 0x8

    .line 736
    .line 737
    if-ne v0, v6, :cond_27

    .line 738
    .line 739
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 740
    .line 741
    aget-object v7, v0, v10

    .line 742
    goto :goto_22

    .line 743
    .line 744
    :cond_26
    const/16 v6, 0x8

    .line 745
    .line 746
    :cond_27
    if-nez v7, :cond_29

    .line 747
    .line 748
    if-ne v15, v14, :cond_28

    .line 749
    goto :goto_24

    .line 750
    .line 751
    :cond_28
    move-object/from16 v22, v7

    .line 752
    .line 753
    :goto_23
    move-object/from16 v18, v8

    .line 754
    .line 755
    const/16 v20, 0x5

    .line 756
    .line 757
    goto/16 :goto_2b

    .line 758
    .line 759
    :cond_29
    :goto_24
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 760
    .line 761
    aget-object v0, v0, p3

    .line 762
    .line 763
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 764
    .line 765
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 766
    .line 767
    if-eqz v2, :cond_2a

    .line 768
    .line 769
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 770
    goto :goto_25

    .line 771
    .line 772
    :cond_2a
    move-object/from16 v2, v21

    .line 773
    .line 774
    :goto_25
    if-eq v8, v15, :cond_2b

    .line 775
    .line 776
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 777
    .line 778
    add-int/lit8 v3, p3, 0x1

    .line 779
    .line 780
    aget-object v2, v2, v3

    .line 781
    .line 782
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 783
    goto :goto_26

    .line 784
    .line 785
    :cond_2b
    if-ne v15, v13, :cond_2d

    .line 786
    .line 787
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 788
    .line 789
    aget-object v2, v2, p3

    .line 790
    .line 791
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 792
    .line 793
    if-eqz v2, :cond_2c

    .line 794
    .line 795
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 796
    goto :goto_26

    .line 797
    .line 798
    :cond_2c
    move-object/from16 v2, v21

    .line 799
    .line 800
    .line 801
    :cond_2d
    :goto_26
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 802
    move-result v0

    .line 803
    .line 804
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 805
    .line 806
    add-int/lit8 v4, p3, 0x1

    .line 807
    .line 808
    aget-object v3, v3, v4

    .line 809
    .line 810
    .line 811
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 812
    move-result v3

    .line 813
    .line 814
    if-eqz v7, :cond_2e

    .line 815
    .line 816
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 817
    .line 818
    aget-object v5, v5, p3

    .line 819
    .line 820
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 821
    .line 822
    :goto_27
    move-object/from16 p0, v7

    .line 823
    goto :goto_28

    .line 824
    .line 825
    :cond_2e
    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 826
    .line 827
    aget-object v5, v5, v4

    .line 828
    .line 829
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 830
    .line 831
    if-eqz v5, :cond_2f

    .line 832
    .line 833
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 834
    goto :goto_27

    .line 835
    .line 836
    :cond_2f
    move-object/from16 p0, v7

    .line 837
    .line 838
    move-object/from16 v6, v21

    .line 839
    .line 840
    :goto_28
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 841
    .line 842
    aget-object v7, v7, v4

    .line 843
    .line 844
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 845
    .line 846
    if-eqz v5, :cond_30

    .line 847
    .line 848
    .line 849
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 850
    move-result v5

    .line 851
    add-int/2addr v3, v5

    .line 852
    .line 853
    :cond_30
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 854
    .line 855
    aget-object v5, v5, v4

    .line 856
    .line 857
    .line 858
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 859
    move-result v5

    .line 860
    add-int/2addr v0, v5

    .line 861
    .line 862
    if-eqz v1, :cond_34

    .line 863
    .line 864
    if-eqz v2, :cond_34

    .line 865
    .line 866
    if-eqz v6, :cond_34

    .line 867
    .line 868
    if-eqz v7, :cond_34

    .line 869
    .line 870
    if-ne v15, v13, :cond_31

    .line 871
    .line 872
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 873
    .line 874
    aget-object v0, v0, p3

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 878
    move-result v0

    .line 879
    :cond_31
    move v5, v0

    .line 880
    .line 881
    if-ne v15, v14, :cond_32

    .line 882
    .line 883
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 884
    .line 885
    aget-object v0, v0, v4

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 889
    move-result v0

    .line 890
    .line 891
    move/from16 v18, v0

    .line 892
    goto :goto_29

    .line 893
    .line 894
    :cond_32
    move/from16 v18, v3

    .line 895
    .line 896
    :goto_29
    if-eqz v24, :cond_33

    .line 897
    .line 898
    const/16 v19, 0x8

    .line 899
    goto :goto_2a

    .line 900
    .line 901
    :cond_33
    const/16 v19, 0x5

    .line 902
    .line 903
    :goto_2a
    const/high16 v4, 0x3f000000    # 0.5f

    .line 904
    .line 905
    move-object/from16 v0, p1

    .line 906
    move v3, v5

    .line 907
    move-object v5, v6

    .line 908
    .line 909
    const/16 v20, 0x5

    .line 910
    move-object v6, v7

    .line 911
    .line 912
    move-object/from16 v22, p0

    .line 913
    .line 914
    move/from16 v7, v18

    .line 915
    .line 916
    move-object/from16 v18, v8

    .line 917
    .line 918
    move/from16 v8, v19

    .line 919
    .line 920
    .line 921
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 922
    goto :goto_2b

    .line 923
    .line 924
    :cond_34
    move-object/from16 v22, p0

    .line 925
    .line 926
    goto/16 :goto_23

    .line 927
    .line 928
    .line 929
    :goto_2b
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 930
    move-result v0

    .line 931
    .line 932
    const/16 v8, 0x8

    .line 933
    .line 934
    if-eq v0, v8, :cond_35

    .line 935
    goto :goto_2c

    .line 936
    .line 937
    :cond_35
    move-object/from16 v15, v18

    .line 938
    :goto_2c
    move-object v8, v15

    .line 939
    .line 940
    move-object/from16 v15, v22

    .line 941
    .line 942
    goto/16 :goto_21

    .line 943
    .line 944
    :cond_36
    const/16 v8, 0x8

    .line 945
    .line 946
    if-eqz v17, :cond_46

    .line 947
    .line 948
    if-eqz v13, :cond_46

    .line 949
    .line 950
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 951
    .line 952
    if-lez v1, :cond_37

    .line 953
    .line 954
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 955
    .line 956
    if-ne v0, v1, :cond_37

    .line 957
    .line 958
    const/16 v24, 0x1

    .line 959
    goto :goto_2d

    .line 960
    .line 961
    :cond_37
    const/16 v24, 0x0

    .line 962
    :goto_2d
    move-object v7, v13

    .line 963
    move-object v15, v7

    .line 964
    .line 965
    :goto_2e
    if-eqz v15, :cond_43

    .line 966
    .line 967
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 968
    .line 969
    aget-object v0, v0, v10

    .line 970
    .line 971
    :goto_2f
    if-eqz v0, :cond_38

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 975
    move-result v1

    .line 976
    .line 977
    if-ne v1, v8, :cond_38

    .line 978
    .line 979
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 980
    .line 981
    aget-object v0, v0, v10

    .line 982
    goto :goto_2f

    .line 983
    .line 984
    :cond_38
    if-eq v15, v13, :cond_41

    .line 985
    .line 986
    if-eq v15, v14, :cond_41

    .line 987
    .line 988
    if-eqz v0, :cond_41

    .line 989
    .line 990
    if-ne v0, v14, :cond_39

    .line 991
    .line 992
    move-object/from16 v6, v21

    .line 993
    goto :goto_30

    .line 994
    :cond_39
    move-object v6, v0

    .line 995
    .line 996
    :goto_30
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 997
    .line 998
    aget-object v0, v0, p3

    .line 999
    .line 1000
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1001
    .line 1002
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1003
    .line 1004
    if-eqz v2, :cond_3a

    .line 1005
    .line 1006
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1007
    .line 1008
    :cond_3a
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1009
    .line 1010
    add-int/lit8 v3, p3, 0x1

    .line 1011
    .line 1012
    aget-object v2, v2, v3

    .line 1013
    .line 1014
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1018
    move-result v0

    .line 1019
    .line 1020
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1021
    .line 1022
    aget-object v4, v4, v3

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1026
    move-result v4

    .line 1027
    .line 1028
    if-eqz v6, :cond_3c

    .line 1029
    .line 1030
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1031
    .line 1032
    aget-object v5, v5, p3

    .line 1033
    .line 1034
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1035
    .line 1036
    move-object/from16 p0, v6

    .line 1037
    .line 1038
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1039
    .line 1040
    if-eqz v6, :cond_3b

    .line 1041
    .line 1042
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1043
    goto :goto_31

    .line 1044
    .line 1045
    :cond_3b
    move-object/from16 v6, v21

    .line 1046
    .line 1047
    :goto_31
    move-object/from16 v36, v8

    .line 1048
    move-object v8, v6

    .line 1049
    .line 1050
    move-object/from16 v6, v36

    .line 1051
    goto :goto_33

    .line 1052
    .line 1053
    :cond_3c
    move-object/from16 p0, v6

    .line 1054
    .line 1055
    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1056
    .line 1057
    aget-object v5, v5, p3

    .line 1058
    .line 1059
    if-eqz v5, :cond_3d

    .line 1060
    .line 1061
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1062
    goto :goto_32

    .line 1063
    .line 1064
    :cond_3d
    move-object/from16 v6, v21

    .line 1065
    .line 1066
    :goto_32
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1067
    .line 1068
    aget-object v8, v8, v3

    .line 1069
    .line 1070
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1071
    .line 1072
    :goto_33
    if-eqz v5, :cond_3e

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1076
    move-result v5

    .line 1077
    add-int/2addr v4, v5

    .line 1078
    .line 1079
    :cond_3e
    move/from16 v18, v4

    .line 1080
    .line 1081
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1082
    .line 1083
    aget-object v3, v4, v3

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1087
    move-result v3

    .line 1088
    add-int/2addr v3, v0

    .line 1089
    .line 1090
    if-eqz v24, :cond_3f

    .line 1091
    .line 1092
    const/16 v20, 0x8

    .line 1093
    goto :goto_34

    .line 1094
    .line 1095
    :cond_3f
    const/16 v20, 0x4

    .line 1096
    .line 1097
    :goto_34
    if-eqz v1, :cond_40

    .line 1098
    .line 1099
    if-eqz v2, :cond_40

    .line 1100
    .line 1101
    if-eqz v6, :cond_40

    .line 1102
    .line 1103
    if-eqz v8, :cond_40

    .line 1104
    .line 1105
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1106
    .line 1107
    move-object/from16 v0, p1

    .line 1108
    .line 1109
    const/16 v19, 0x4

    .line 1110
    move-object v5, v6

    .line 1111
    .line 1112
    move-object/from16 v22, p0

    .line 1113
    move-object v6, v8

    .line 1114
    .line 1115
    move-object/from16 v23, v7

    .line 1116
    .line 1117
    move/from16 v7, v18

    .line 1118
    .line 1119
    const/16 v10, 0x8

    .line 1120
    .line 1121
    move/from16 v8, v20

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1125
    goto :goto_35

    .line 1126
    .line 1127
    :cond_40
    move-object/from16 v22, p0

    .line 1128
    .line 1129
    move-object/from16 v23, v7

    .line 1130
    .line 1131
    const/16 v10, 0x8

    .line 1132
    .line 1133
    const/16 v19, 0x4

    .line 1134
    .line 1135
    :goto_35
    move-object/from16 v0, v22

    .line 1136
    goto :goto_36

    .line 1137
    .line 1138
    :cond_41
    move-object/from16 v23, v7

    .line 1139
    move v10, v8

    .line 1140
    .line 1141
    const/16 v19, 0x4

    .line 1142
    .line 1143
    .line 1144
    :goto_36
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 1145
    move-result v1

    .line 1146
    .line 1147
    if-eq v1, v10, :cond_42

    .line 1148
    move-object v7, v15

    .line 1149
    goto :goto_37

    .line 1150
    .line 1151
    :cond_42
    move-object/from16 v7, v23

    .line 1152
    :goto_37
    move-object v15, v0

    .line 1153
    move v8, v10

    .line 1154
    .line 1155
    move/from16 v10, p2

    .line 1156
    .line 1157
    goto/16 :goto_2e

    .line 1158
    .line 1159
    :cond_43
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1160
    .line 1161
    aget-object v0, v0, p3

    .line 1162
    .line 1163
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1164
    .line 1165
    aget-object v1, v1, p3

    .line 1166
    .line 1167
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1168
    .line 1169
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1170
    .line 1171
    add-int/lit8 v3, p3, 0x1

    .line 1172
    .line 1173
    aget-object v10, v2, v3

    .line 1174
    .line 1175
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1176
    .line 1177
    aget-object v2, v2, v3

    .line 1178
    .line 1179
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1180
    const/4 v15, 0x5

    .line 1181
    .line 1182
    if-eqz v1, :cond_45

    .line 1183
    .line 1184
    if-eq v13, v14, :cond_44

    .line 1185
    .line 1186
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1187
    .line 1188
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1192
    move-result v0

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v9, v2, v1, v0, v15}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 1196
    goto :goto_38

    .line 1197
    .line 1198
    :cond_44
    if-eqz v11, :cond_45

    .line 1199
    .line 1200
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1201
    .line 1202
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1206
    move-result v4

    .line 1207
    .line 1208
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1209
    .line 1210
    iget-object v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1211
    .line 1212
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1216
    move-result v8

    .line 1217
    .line 1218
    move-object/from16 v0, p1

    .line 1219
    move-object v1, v2

    .line 1220
    move-object v2, v3

    .line 1221
    move v3, v4

    .line 1222
    move v4, v5

    .line 1223
    move-object v5, v6

    .line 1224
    move-object v6, v7

    .line 1225
    move v7, v8

    .line 1226
    move v8, v15

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1230
    .line 1231
    :cond_45
    :goto_38
    if-eqz v11, :cond_46

    .line 1232
    .line 1233
    if-eq v13, v14, :cond_46

    .line 1234
    .line 1235
    iget-object v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1236
    .line 1237
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1241
    move-result v2

    .line 1242
    neg-int v2, v2

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v9, v0, v1, v2, v15}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 1246
    .line 1247
    :cond_46
    :goto_39
    if-nez v16, :cond_47

    .line 1248
    .line 1249
    if-eqz v17, :cond_4e

    .line 1250
    .line 1251
    :cond_47
    if-eqz v13, :cond_4e

    .line 1252
    .line 1253
    if-eq v13, v14, :cond_4e

    .line 1254
    .line 1255
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1256
    .line 1257
    aget-object v1, v0, p3

    .line 1258
    .line 1259
    if-nez v14, :cond_48

    .line 1260
    move-object v14, v13

    .line 1261
    .line 1262
    :cond_48
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1263
    const/4 v3, 0x1

    .line 1264
    .line 1265
    add-int/lit8 v3, p3, 0x1

    .line 1266
    .line 1267
    aget-object v2, v2, v3

    .line 1268
    .line 1269
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1270
    .line 1271
    if-eqz v4, :cond_49

    .line 1272
    .line 1273
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1274
    goto :goto_3a

    .line 1275
    .line 1276
    :cond_49
    move-object/from16 v4, v21

    .line 1277
    .line 1278
    :goto_3a
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1279
    .line 1280
    if-eqz v5, :cond_4a

    .line 1281
    .line 1282
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1283
    goto :goto_3b

    .line 1284
    .line 1285
    :cond_4a
    move-object/from16 v5, v21

    .line 1286
    .line 1287
    :goto_3b
    if-eq v12, v14, :cond_4c

    .line 1288
    .line 1289
    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1290
    .line 1291
    aget-object v5, v5, v3

    .line 1292
    .line 1293
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1294
    .line 1295
    if-eqz v5, :cond_4b

    .line 1296
    .line 1297
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1298
    .line 1299
    move-object/from16 v21, v5

    .line 1300
    .line 1301
    :cond_4b
    move-object/from16 v5, v21

    .line 1302
    .line 1303
    :cond_4c
    if-ne v13, v14, :cond_4d

    .line 1304
    .line 1305
    aget-object v2, v0, v3

    .line 1306
    .line 1307
    :cond_4d
    if-eqz v4, :cond_4e

    .line 1308
    .line 1309
    if-eqz v5, :cond_4e

    .line 1310
    .line 1311
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1315
    move-result v7

    .line 1316
    .line 1317
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1318
    .line 1319
    aget-object v0, v0, v3

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 1323
    move-result v8

    .line 1324
    .line 1325
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1326
    .line 1327
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1328
    const/4 v11, 0x5

    .line 1329
    .line 1330
    move-object/from16 v0, p1

    .line 1331
    move-object v2, v4

    .line 1332
    move v3, v7

    .line 1333
    move v4, v6

    .line 1334
    move-object v6, v10

    .line 1335
    move v7, v8

    .line 1336
    move v8, v11

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1340
    :cond_4e
    return-void
.end method

.method public static b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 8
    move v3, v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 14
    const/4 v3, 0x2

    .line 15
    .line 16
    :goto_0
    if-ge v0, v1, :cond_3

    .line 17
    .line 18
    aget-object v4, v2, v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ChainHead;->a()V

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v5

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {p0, p1, p3, v3, v4}, Landroidx/constraintlayout/core/widgets/Chain;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    .line 35
    .line 36
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-void
.end method
