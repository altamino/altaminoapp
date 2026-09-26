.class public final Landroidx/compose/material/SwipeToDismissKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Le8/l;Le8/q;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/material/DismissState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DismissState;",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/compose/material/DismissDirection;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/DismissDirection;",
            "+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move/from16 v10, p7

    .line 9
    .line 10
    const-string v0, "state"

    .line 11
    .line 12
    .line 13
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "background"

    .line 16
    .line 17
    .line 18
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "dismissContent"

    .line 21
    .line 22
    .line 23
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x25cfdf6f

    .line 27
    .line 28
    move-object/from16 v1, p6

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 32
    move-result-object v15

    .line 33
    .line 34
    and-int/lit8 v0, p8, 0x1

    .line 35
    const/4 v1, 0x2

    .line 36
    const/4 v2, 0x4

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    or-int/lit8 v0, v10, 0x6

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    and-int/lit8 v0, v10, 0xe

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v0, v1

    .line 55
    :goto_0
    or-int/2addr v0, v10

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v0, v10

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v3, p8, 0x2

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    or-int/lit8 v0, v0, 0x30

    .line 64
    .line 65
    :cond_3
    move-object/from16 v4, p1

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_4
    and-int/lit8 v4, v10, 0x70

    .line 69
    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    move-object/from16 v4, p1

    .line 73
    .line 74
    .line 75
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    const/16 v5, 0x20

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_5
    const/16 v5, 0x10

    .line 84
    :goto_2
    or-int/2addr v0, v5

    .line 85
    .line 86
    :goto_3
    and-int/lit8 v5, p8, 0x4

    .line 87
    .line 88
    if-eqz v5, :cond_6

    .line 89
    .line 90
    or-int/lit16 v0, v0, 0x80

    .line 91
    .line 92
    :cond_6
    and-int/lit8 v6, p8, 0x8

    .line 93
    .line 94
    if-eqz v6, :cond_8

    .line 95
    .line 96
    or-int/lit16 v0, v0, 0xc00

    .line 97
    .line 98
    :cond_7
    move-object/from16 v11, p3

    .line 99
    goto :goto_5

    .line 100
    .line 101
    :cond_8
    and-int/lit16 v11, v10, 0x1c00

    .line 102
    .line 103
    if-nez v11, :cond_7

    .line 104
    .line 105
    move-object/from16 v11, p3

    .line 106
    .line 107
    .line 108
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 109
    move-result v12

    .line 110
    .line 111
    if-eqz v12, :cond_9

    .line 112
    .line 113
    const/16 v12, 0x800

    .line 114
    goto :goto_4

    .line 115
    .line 116
    :cond_9
    const/16 v12, 0x400

    .line 117
    :goto_4
    or-int/2addr v0, v12

    .line 118
    .line 119
    :goto_5
    and-int/lit8 v12, p8, 0x10

    .line 120
    .line 121
    if-eqz v12, :cond_a

    .line 122
    .line 123
    or-int/lit16 v0, v0, 0x6000

    .line 124
    goto :goto_7

    .line 125
    .line 126
    .line 127
    :cond_a
    const v12, 0xe000

    .line 128
    and-int/2addr v12, v10

    .line 129
    .line 130
    if-nez v12, :cond_c

    .line 131
    .line 132
    .line 133
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 134
    move-result v12

    .line 135
    .line 136
    if-eqz v12, :cond_b

    .line 137
    .line 138
    const/16 v12, 0x4000

    .line 139
    goto :goto_6

    .line 140
    .line 141
    :cond_b
    const/16 v12, 0x2000

    .line 142
    :goto_6
    or-int/2addr v0, v12

    .line 143
    .line 144
    :cond_c
    :goto_7
    and-int/lit8 v12, p8, 0x20

    .line 145
    .line 146
    if-eqz v12, :cond_d

    .line 147
    .line 148
    const/high16 v12, 0x30000

    .line 149
    :goto_8
    or-int/2addr v0, v12

    .line 150
    goto :goto_9

    .line 151
    .line 152
    :cond_d
    const/high16 v12, 0x70000

    .line 153
    and-int/2addr v12, v10

    .line 154
    .line 155
    if-nez v12, :cond_f

    .line 156
    .line 157
    .line 158
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 159
    move-result v12

    .line 160
    .line 161
    if-eqz v12, :cond_e

    .line 162
    .line 163
    const/high16 v12, 0x20000

    .line 164
    goto :goto_8

    .line 165
    .line 166
    :cond_e
    const/high16 v12, 0x10000

    .line 167
    goto :goto_8

    .line 168
    .line 169
    :cond_f
    :goto_9
    if-ne v5, v2, :cond_11

    .line 170
    .line 171
    .line 172
    const v2, 0x5b6db

    .line 173
    and-int/2addr v2, v0

    .line 174
    .line 175
    .line 176
    const v12, 0x12492

    .line 177
    .line 178
    if-ne v2, v12, :cond_11

    .line 179
    .line 180
    .line 181
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 182
    move-result v2

    .line 183
    .line 184
    if-nez v2, :cond_10

    .line 185
    goto :goto_a

    .line 186
    .line 187
    .line 188
    :cond_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 189
    .line 190
    move-object/from16 v3, p2

    .line 191
    move-object v2, v4

    .line 192
    move-object v4, v11

    .line 193
    move-object v1, v15

    .line 194
    .line 195
    goto/16 :goto_10

    .line 196
    .line 197
    .line 198
    :cond_11
    :goto_a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->J()V

    .line 199
    .line 200
    and-int/lit8 v2, v10, 0x1

    .line 201
    const/4 v12, 0x1

    .line 202
    .line 203
    if-eqz v2, :cond_14

    .line 204
    .line 205
    .line 206
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->h()Z

    .line 207
    move-result v2

    .line 208
    .line 209
    if-eqz v2, :cond_12

    .line 210
    goto :goto_c

    .line 211
    .line 212
    .line 213
    :cond_12
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 214
    .line 215
    if-eqz v5, :cond_13

    .line 216
    .line 217
    and-int/lit16 v0, v0, -0x381

    .line 218
    .line 219
    :cond_13
    move-object/from16 v19, p2

    .line 220
    .line 221
    move-object/from16 v18, v4

    .line 222
    .line 223
    :goto_b
    move-object/from16 v20, v11

    .line 224
    move v11, v0

    .line 225
    goto :goto_f

    .line 226
    .line 227
    :cond_14
    :goto_c
    if-eqz v3, :cond_15

    .line 228
    .line 229
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 230
    goto :goto_d

    .line 231
    :cond_15
    move-object v2, v4

    .line 232
    .line 233
    :goto_d
    if-eqz v5, :cond_16

    .line 234
    .line 235
    new-array v1, v1, [Landroidx/compose/material/DismissDirection;

    .line 236
    const/4 v3, 0x0

    .line 237
    .line 238
    sget-object v4, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 239
    .line 240
    aput-object v4, v1, v3

    .line 241
    .line 242
    sget-object v3, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 243
    .line 244
    aput-object v3, v1, v12

    .line 245
    .line 246
    .line 247
    invoke-static {v1}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 248
    move-result-object v1

    .line 249
    .line 250
    and-int/lit16 v0, v0, -0x381

    .line 251
    goto :goto_e

    .line 252
    .line 253
    :cond_16
    move-object/from16 v1, p2

    .line 254
    .line 255
    :goto_e
    if-eqz v6, :cond_17

    .line 256
    .line 257
    sget-object v3, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;->INSTANCE:Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;

    .line 258
    move v11, v0

    .line 259
    .line 260
    move-object/from16 v19, v1

    .line 261
    .line 262
    move-object/from16 v18, v2

    .line 263
    .line 264
    move-object/from16 v20, v3

    .line 265
    goto :goto_f

    .line 266
    .line 267
    :cond_17
    move-object/from16 v19, v1

    .line 268
    .line 269
    move-object/from16 v18, v2

    .line 270
    goto :goto_b

    .line 271
    .line 272
    .line 273
    :goto_f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->A()V

    .line 274
    const/4 v13, 0x0

    .line 275
    .line 276
    new-instance v6, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;

    .line 277
    move-object v0, v6

    .line 278
    .line 279
    move-object/from16 v1, v19

    .line 280
    .line 281
    move-object/from16 v2, v20

    .line 282
    move v3, v11

    .line 283
    .line 284
    move-object/from16 v4, p0

    .line 285
    .line 286
    move-object/from16 v5, p4

    .line 287
    move-object v14, v6

    .line 288
    .line 289
    move-object/from16 v6, p5

    .line 290
    .line 291
    .line 292
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;-><init>(Ljava/util/Set;Le8/l;ILandroidx/compose/material/DismissState;Le8/q;Le8/q;)V

    .line 293
    .line 294
    .line 295
    const v0, 0x14259659

    .line 296
    .line 297
    .line 298
    invoke-static {v15, v0, v12, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 299
    move-result-object v14

    .line 300
    .line 301
    shr-int/lit8 v0, v11, 0x3

    .line 302
    .line 303
    and-int/lit8 v0, v0, 0xe

    .line 304
    .line 305
    or-int/lit16 v0, v0, 0xc00

    .line 306
    .line 307
    const/16 v17, 0x6

    .line 308
    .line 309
    move-object/from16 v11, v18

    .line 310
    move-object v12, v13

    .line 311
    const/4 v1, 0x0

    .line 312
    move v13, v1

    .line 313
    move-object v1, v15

    .line 314
    .line 315
    move/from16 v16, v0

    .line 316
    .line 317
    .line 318
    invoke-static/range {v11 .. v17}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 319
    .line 320
    move-object/from16 v2, v18

    .line 321
    .line 322
    move-object/from16 v3, v19

    .line 323
    .line 324
    move-object/from16 v4, v20

    .line 325
    .line 326
    .line 327
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 328
    move-result-object v11

    .line 329
    .line 330
    if-nez v11, :cond_18

    .line 331
    goto :goto_11

    .line 332
    .line 333
    :cond_18
    new-instance v12, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;

    .line 334
    move-object v0, v12

    .line 335
    .line 336
    move-object/from16 v1, p0

    .line 337
    .line 338
    move-object/from16 v5, p4

    .line 339
    .line 340
    move-object/from16 v6, p5

    .line 341
    .line 342
    move/from16 v7, p7

    .line 343
    .line 344
    move/from16 v8, p8

    .line 345
    .line 346
    .line 347
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;-><init>(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Le8/l;Le8/q;Le8/q;II)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 351
    :goto_11
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/material/DismissValue;Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissDirection;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/SwipeToDismissKt;->c(Landroidx/compose/material/DismissValue;Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissDirection;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Landroidx/compose/material/DismissValue;Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissDirection;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/material/DismissValue;->Default:Landroidx/compose/material/DismissValue;

    .line 6
    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    if-ne p0, p1, :cond_1

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 13
    .line 14
    if-ne p0, v1, :cond_1

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    if-ne p0, p1, :cond_2

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 22
    .line 23
    if-ne p0, v1, :cond_2

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    sget-object v1, Landroidx/compose/material/DismissValue;->Default:Landroidx/compose/material/DismissValue;

    .line 29
    .line 30
    if-ne p0, v1, :cond_3

    .line 31
    .line 32
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 33
    .line 34
    if-ne p1, v2, :cond_3

    .line 35
    .line 36
    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_3
    if-ne p0, v1, :cond_4

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 42
    .line 43
    if-ne p1, v2, :cond_4

    .line 44
    .line 45
    sget-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_4
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 49
    .line 50
    if-ne p0, v2, :cond_5

    .line 51
    .line 52
    if-ne p1, v1, :cond_5

    .line 53
    .line 54
    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_5
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 58
    .line 59
    if-ne p0, v2, :cond_6

    .line 60
    .line 61
    if-ne p1, v1, :cond_6

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 64
    :cond_6
    :goto_0
    return-object v0
.end method
