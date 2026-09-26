.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    return-void
.end method

.method private w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .locals 19
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 4
    move-result-object v7

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v8

    .line 9
    .line 10
    new-instance v9, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v10

    .line 18
    const/4 v6, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    const-string v12, " has started."

    .line 25
    .line 26
    const-string v13, "FragmentManager"

    .line 27
    const/4 v14, 0x2

    .line 28
    .line 29
    if-eqz v0, :cond_8

    .line 30
    .line 31
    .line 32
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    move-object v15, v0

    .line 35
    .line 36
    check-cast v15, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->d()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 46
    .line 47
    :goto_1
    move-object/from16 v3, p4

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v15, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->e(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 61
    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    move-object/from16 v3, p4

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v1

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    const-string v2, "Ignoring Animator set on "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, " as this Fragment was involved in a Transition."

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 123
    goto :goto_0

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 130
    .line 131
    const/16 v16, 0x1

    .line 132
    .line 133
    if-ne v1, v2, :cond_5

    .line 134
    .line 135
    move/from16 v6, v16

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const/4 v6, 0x0

    .line 138
    .line 139
    :goto_2
    move-object/from16 v2, p2

    .line 140
    .line 141
    if-eqz v6, :cond_6

    .line 142
    .line 143
    .line 144
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    :cond_6
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 150
    .line 151
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    .line 152
    .line 153
    move-object/from16 p1, v0

    .line 154
    .line 155
    move-object/from16 v17, v1

    .line 156
    .line 157
    move-object/from16 v1, p0

    .line 158
    move-object v2, v7

    .line 159
    .line 160
    move-object/from16 v3, v17

    .line 161
    .line 162
    move-object/from16 v18, v4

    .line 163
    move v4, v6

    .line 164
    move-object v6, v5

    .line 165
    .line 166
    move-object/from16 v5, v18

    .line 167
    move-object v11, v6

    .line 168
    move-object v6, v15

    .line 169
    .line 170
    .line 171
    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    .line 176
    move-object/from16 v0, v17

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    .line 183
    .line 184
    .line 185
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    const-string v1, "Animator from operation "

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    move-object/from16 v1, v18

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    .line 213
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    goto :goto_3

    .line 215
    .line 216
    :cond_7
    move-object/from16 v1, v18

    .line 217
    .line 218
    .line 219
    :goto_3
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->c()Landroidx/core/os/CancellationSignal;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    .line 223
    .line 224
    move-object/from16 v15, p0

    .line 225
    .line 226
    .line 227
    invoke-direct {v2, v15, v11, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroidx/core/os/CancellationSignal;->c(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 231
    .line 232
    move/from16 v6, v16

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_8
    move-object/from16 v15, p0

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    move-result-object v9

    .line 241
    .line 242
    .line 243
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    move-result v0

    .line 245
    .line 246
    if-eqz v0, :cond_f

    .line 247
    .line 248
    .line 249
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    move-result-object v0

    .line 251
    move-object v10, v0

    .line 252
    .line 253
    check-cast v10, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 257
    move-result-object v11

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    const-string v1, "Ignoring Animation set on "

    .line 264
    .line 265
    if-eqz p3, :cond_a

    .line 266
    .line 267
    .line 268
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 269
    move-result v2

    .line 270
    .line 271
    if-eqz v2, :cond_9

    .line 272
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v0, " as Animations cannot run alongside Transitions."

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    .line 294
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    :cond_9
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 298
    goto :goto_4

    .line 299
    .line 300
    :cond_a
    if-eqz v6, :cond_c

    .line 301
    .line 302
    .line 303
    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 304
    move-result v2

    .line 305
    .line 306
    if-eqz v2, :cond_b

    .line 307
    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v0, " as Animations cannot run alongside Animators."

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 327
    .line 328
    .line 329
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    :cond_b
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 333
    goto :goto_4

    .line 334
    .line 335
    :cond_c
    iget-object v5, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->e(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 339
    move-result-object v0

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    move-result-object v0

    .line 344
    .line 345
    check-cast v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 346
    .line 347
    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    check-cast v0, Landroid/view/animation/Animation;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 357
    move-result-object v1

    .line 358
    .line 359
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 360
    .line 361
    if-eq v1, v2, :cond_d

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 368
    .line 369
    move/from16 v16, v6

    .line 370
    .line 371
    move-object/from16 v17, v8

    .line 372
    move v6, v14

    .line 373
    move-object v8, v5

    .line 374
    goto :goto_5

    .line 375
    .line 376
    .line 377
    :cond_d
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 378
    .line 379
    new-instance v4, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    .line 380
    .line 381
    .line 382
    invoke-direct {v4, v0, v7, v5}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 383
    .line 384
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 385
    move-object v0, v3

    .line 386
    .line 387
    move-object/from16 v1, p0

    .line 388
    move-object v2, v11

    .line 389
    move-object v14, v3

    .line 390
    move-object v3, v7

    .line 391
    .line 392
    move/from16 v16, v6

    .line 393
    move-object v6, v4

    .line 394
    move-object v4, v5

    .line 395
    .line 396
    move-object/from16 v17, v8

    .line 397
    move-object v8, v5

    .line 398
    move-object v5, v10

    .line 399
    .line 400
    .line 401
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6, v14}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 408
    const/4 v6, 0x2

    .line 409
    .line 410
    .line 411
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 412
    move-result v0

    .line 413
    .line 414
    if-eqz v0, :cond_e

    .line 415
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    const-string v1, "Animation from operation "

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object v0

    .line 435
    .line 436
    .line 437
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    :cond_e
    :goto_5
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->c()Landroidx/core/os/CancellationSignal;

    .line 441
    move-result-object v14

    .line 442
    .line 443
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    .line 444
    move-object v0, v5

    .line 445
    .line 446
    move-object/from16 v1, p0

    .line 447
    move-object v2, v8

    .line 448
    move-object v3, v7

    .line 449
    move-object v4, v10

    .line 450
    move-object v8, v5

    .line 451
    move-object v5, v11

    .line 452
    .line 453
    .line 454
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v14, v8}, Landroidx/core/os/CancellationSignal;->c(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 458
    move v14, v6

    .line 459
    .line 460
    move/from16 v6, v16

    .line 461
    .line 462
    move-object/from16 v8, v17

    .line 463
    .line 464
    goto/16 :goto_4

    .line 465
    :cond_f
    return-void
.end method

.method private x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .locals 33
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move/from16 v7, p3

    .line 5
    .line 6
    move-object/from16 v8, p4

    .line 7
    .line 8
    move-object/from16 v9, p5

    .line 9
    .line 10
    new-instance v10, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    const/4 v15, 0x0

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->d()Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->e()Landroidx/fragment/app/FragmentTransitionImpl;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    if-nez v15, :cond_2

    .line 44
    move-object v15, v2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    if-eqz v2, :cond_0

    .line 48
    .line 49
    if-ne v15, v2, :cond_3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, " returned Transition "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->h()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, " which uses a different Transition  type than other Fragments."

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0

    .line 99
    .line 100
    :cond_4
    if-nez v15, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    return-object v10

    .line 131
    .line 132
    :cond_6
    new-instance v14, Landroid/view/View;

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    new-instance v13, Landroid/graphics/Rect;

    .line 146
    .line 147
    .line 148
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .line 150
    new-instance v12, Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    new-instance v5, Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 161
    .line 162
    .line 163
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    move-result-object v20

    .line 168
    const/4 v0, 0x0

    .line 169
    const/4 v2, 0x0

    .line 170
    .line 171
    const/16 v21, 0x0

    .line 172
    .line 173
    .line 174
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v1

    .line 176
    .line 177
    const/16 v22, 0x2

    .line 178
    .line 179
    const-string v3, "FragmentManager"

    .line 180
    .line 181
    if-eqz v1, :cond_1b

    .line 182
    .line 183
    .line 184
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->i()Z

    .line 191
    move-result v17

    .line 192
    .line 193
    if-eqz v17, :cond_1a

    .line 194
    .line 195
    if-eqz v8, :cond_1a

    .line 196
    .line 197
    if-eqz v9, :cond_1a

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->g()Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->u(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 221
    move-result-object v17

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 225
    move-result-object v11

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 229
    move-result-object v17

    .line 230
    .line 231
    move-object/from16 v18, v1

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    move-object/from16 v17, v2

    .line 238
    .line 239
    move-object/from16 v24, v10

    .line 240
    const/4 v2, 0x0

    .line 241
    .line 242
    .line 243
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 244
    move-result v10

    .line 245
    .line 246
    if-ge v2, v10, :cond_8

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    move-result-object v10

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 254
    move-result v10

    .line 255
    .line 256
    move-object/from16 v19, v1

    .line 257
    const/4 v1, -0x1

    .line 258
    .line 259
    if-eq v10, v1, :cond_7

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object v1

    .line 264
    .line 265
    check-cast v1, Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 271
    .line 272
    move-object/from16 v1, v19

    .line 273
    goto :goto_3

    .line 274
    .line 275
    .line 276
    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 281
    move-result-object v10

    .line 282
    .line 283
    if-nez v7, :cond_9

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 291
    move-result-object v1

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 295
    move-result-object v2

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 299
    move-result-object v2

    .line 300
    goto :goto_4

    .line 301
    .line 302
    .line 303
    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 304
    move-result-object v1

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 308
    move-result-object v1

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 312
    move-result-object v2

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 316
    move-result-object v2

    .line 317
    .line 318
    .line 319
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 320
    move-result v11

    .line 321
    .line 322
    move-object/from16 v19, v14

    .line 323
    const/4 v14, 0x0

    .line 324
    .line 325
    :goto_5
    if-ge v14, v11, :cond_a

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    move-result-object v25

    .line 330
    .line 331
    move/from16 v26, v11

    .line 332
    .line 333
    move-object/from16 v11, v25

    .line 334
    .line 335
    check-cast v11, Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    move-result-object v25

    .line 340
    .line 341
    move-object/from16 v27, v13

    .line 342
    .line 343
    move-object/from16 v13, v25

    .line 344
    .line 345
    check-cast v13, Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v11, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    add-int/lit8 v14, v14, 0x1

    .line 351
    .line 352
    move/from16 v11, v26

    .line 353
    .line 354
    move-object/from16 v13, v27

    .line 355
    goto :goto_5

    .line 356
    .line 357
    :cond_a
    move-object/from16 v27, v13

    .line 358
    .line 359
    .line 360
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 361
    move-result v11

    .line 362
    .line 363
    if-eqz v11, :cond_c

    .line 364
    .line 365
    const-string v11, ">>> entering view names <<<"

    .line 366
    .line 367
    .line 368
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 372
    move-result-object v11

    .line 373
    .line 374
    .line 375
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    move-result v13

    .line 377
    .line 378
    const-string v14, "Name: "

    .line 379
    .line 380
    if-eqz v13, :cond_b

    .line 381
    .line 382
    .line 383
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    move-result-object v13

    .line 385
    .line 386
    check-cast v13, Ljava/lang/String;

    .line 387
    .line 388
    move-object/from16 v25, v11

    .line 389
    .line 390
    new-instance v11, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    move-result-object v11

    .line 404
    .line 405
    .line 406
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    move-object/from16 v11, v25

    .line 409
    goto :goto_6

    .line 410
    .line 411
    :cond_b
    const-string v11, ">>> exiting view names <<<"

    .line 412
    .line 413
    .line 414
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 418
    move-result-object v11

    .line 419
    .line 420
    .line 421
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    move-result v13

    .line 423
    .line 424
    if-eqz v13, :cond_c

    .line 425
    .line 426
    .line 427
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    move-result-object v13

    .line 429
    .line 430
    check-cast v13, Ljava/lang/String;

    .line 431
    .line 432
    move-object/from16 v25, v11

    .line 433
    .line 434
    new-instance v11, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    move-result-object v11

    .line 448
    .line 449
    .line 450
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    move-object/from16 v11, v25

    .line 453
    goto :goto_7

    .line 454
    .line 455
    :cond_c
    new-instance v11, Landroidx/collection/ArrayMap;

    .line 456
    .line 457
    .line 458
    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 462
    move-result-object v13

    .line 463
    .line 464
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v6, v11, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController;->u(Ljava/util/Map;Landroid/view/View;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v0}, Landroidx/collection/ArrayMap;->t(Ljava/util/Collection;)Z

    .line 471
    .line 472
    if-eqz v1, :cond_11

    .line 473
    .line 474
    .line 475
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 476
    move-result v13

    .line 477
    .line 478
    if-eqz v13, :cond_d

    .line 479
    .line 480
    new-instance v13, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .line 485
    const-string v14, "Executing exit callback for operation "

    .line 486
    .line 487
    .line 488
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    move-result-object v13

    .line 496
    .line 497
    .line 498
    invoke-static {v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    :cond_d
    invoke-virtual {v1, v0, v11}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 505
    move-result v1

    .line 506
    const/4 v13, 0x1

    .line 507
    sub-int/2addr v1, v13

    .line 508
    .line 509
    :goto_8
    if-ltz v1, :cond_10

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    move-result-object v13

    .line 514
    .line 515
    check-cast v13, Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v11, v13}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-result-object v14

    .line 520
    .line 521
    check-cast v14, Landroid/view/View;

    .line 522
    .line 523
    if-nez v14, :cond_e

    .line 524
    .line 525
    .line 526
    invoke-virtual {v4, v13}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    move-object/from16 v25, v0

    .line 529
    goto :goto_9

    .line 530
    .line 531
    :cond_e
    move-object/from16 v25, v0

    .line 532
    .line 533
    .line 534
    invoke-static {v14}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 535
    move-result-object v0

    .line 536
    .line 537
    .line 538
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v0

    .line 540
    .line 541
    if-nez v0, :cond_f

    .line 542
    .line 543
    .line 544
    invoke-virtual {v4, v13}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    move-result-object v0

    .line 546
    .line 547
    check-cast v0, Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    invoke-static {v14}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 551
    move-result-object v13

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4, v13, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    :cond_f
    :goto_9
    add-int/lit8 v1, v1, -0x1

    .line 557
    .line 558
    move-object/from16 v0, v25

    .line 559
    goto :goto_8

    .line 560
    .line 561
    :cond_10
    move-object/from16 v25, v0

    .line 562
    goto :goto_a

    .line 563
    .line 564
    :cond_11
    move-object/from16 v25, v0

    .line 565
    .line 566
    .line 567
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 568
    move-result-object v0

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4, v0}, Landroidx/collection/ArrayMap;->t(Ljava/util/Collection;)Z

    .line 572
    .line 573
    :goto_a
    new-instance v13, Landroidx/collection/ArrayMap;

    .line 574
    .line 575
    .line 576
    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 577
    .line 578
    .line 579
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 580
    move-result-object v0

    .line 581
    .line 582
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v6, v13, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->u(Ljava/util/Map;Landroid/view/View;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v13, v10}, Landroidx/collection/ArrayMap;->t(Ljava/util/Collection;)Z

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 592
    move-result-object v0

    .line 593
    .line 594
    .line 595
    invoke-virtual {v13, v0}, Landroidx/collection/ArrayMap;->t(Ljava/util/Collection;)Z

    .line 596
    .line 597
    if-eqz v2, :cond_15

    .line 598
    .line 599
    .line 600
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 601
    move-result v0

    .line 602
    .line 603
    if-eqz v0, :cond_12

    .line 604
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    const-string v1, "Executing enter callback for operation "

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    move-result-object v0

    .line 621
    .line 622
    .line 623
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    :cond_12
    invoke-virtual {v2, v10, v13}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 630
    move-result v0

    .line 631
    const/4 v1, 0x1

    .line 632
    sub-int/2addr v0, v1

    .line 633
    .line 634
    :goto_b
    if-ltz v0, :cond_16

    .line 635
    .line 636
    .line 637
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    move-result-object v1

    .line 639
    .line 640
    check-cast v1, Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v13, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    move-result-object v2

    .line 645
    .line 646
    check-cast v2, Landroid/view/View;

    .line 647
    .line 648
    if-nez v2, :cond_13

    .line 649
    .line 650
    .line 651
    invoke-static {v4, v1}, Landroidx/fragment/app/FragmentTransition;->b(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    move-result-object v1

    .line 653
    .line 654
    if-eqz v1, :cond_14

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    goto :goto_c

    .line 659
    .line 660
    .line 661
    :cond_13
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 662
    move-result-object v3

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    move-result v3

    .line 667
    .line 668
    if-nez v3, :cond_14

    .line 669
    .line 670
    .line 671
    invoke-static {v4, v1}, Landroidx/fragment/app/FragmentTransition;->b(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    move-result-object v1

    .line 673
    .line 674
    if-eqz v1, :cond_14

    .line 675
    .line 676
    .line 677
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 678
    move-result-object v2

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    :cond_14
    :goto_c
    add-int/lit8 v0, v0, -0x1

    .line 684
    goto :goto_b

    .line 685
    .line 686
    .line 687
    :cond_15
    invoke-static {v4, v13}, Landroidx/fragment/app/FragmentTransition;->d(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 688
    .line 689
    .line 690
    :cond_16
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 691
    move-result-object v0

    .line 692
    .line 693
    .line 694
    invoke-virtual {v6, v11, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->v(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 698
    move-result-object v0

    .line 699
    .line 700
    .line 701
    invoke-virtual {v6, v13, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->v(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 705
    move-result v0

    .line 706
    .line 707
    if-eqz v0, :cond_17

    .line 708
    .line 709
    .line 710
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 714
    .line 715
    move-object/from16 v28, v4

    .line 716
    move-object v10, v5

    .line 717
    move-object v4, v8

    .line 718
    move-object v7, v12

    .line 719
    move-object v11, v15

    .line 720
    .line 721
    move-object/from16 v2, v17

    .line 722
    .line 723
    move-object/from16 v1, v19

    .line 724
    .line 725
    move-object/from16 v8, v24

    .line 726
    .line 727
    move-object/from16 v5, v27

    .line 728
    const/4 v0, 0x0

    .line 729
    const/4 v14, 0x0

    .line 730
    move-object v15, v9

    .line 731
    .line 732
    goto/16 :goto_f

    .line 733
    .line 734
    .line 735
    :cond_17
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 736
    move-result-object v0

    .line 737
    .line 738
    .line 739
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 740
    move-result-object v1

    .line 741
    const/4 v14, 0x1

    .line 742
    .line 743
    .line 744
    invoke-static {v0, v1, v7, v11, v14}, Landroidx/fragment/app/FragmentTransition;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 745
    .line 746
    .line 747
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 748
    move-result-object v3

    .line 749
    .line 750
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    .line 751
    .line 752
    move-object/from16 v1, v25

    .line 753
    move-object v0, v2

    .line 754
    .line 755
    move-object/from16 v14, v18

    .line 756
    .line 757
    move-object/from16 v1, p0

    .line 758
    move-object v7, v2

    .line 759
    .line 760
    move-object/from16 v26, v17

    .line 761
    .line 762
    move-object/from16 v2, p5

    .line 763
    move-object v9, v3

    .line 764
    .line 765
    move-object/from16 v3, p4

    .line 766
    .line 767
    move-object/from16 v28, v4

    .line 768
    .line 769
    move/from16 v4, p3

    .line 770
    move-object v8, v5

    .line 771
    move-object v5, v13

    .line 772
    .line 773
    .line 774
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    .line 775
    .line 776
    .line 777
    invoke-static {v9, v7}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 781
    move-result-object v0

    .line 782
    .line 783
    .line 784
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 785
    .line 786
    .line 787
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    .line 788
    move-result v0

    .line 789
    .line 790
    if-nez v0, :cond_18

    .line 791
    .line 792
    move-object/from16 v1, v25

    .line 793
    const/4 v0, 0x0

    .line 794
    .line 795
    .line 796
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 797
    move-result-object v1

    .line 798
    .line 799
    check-cast v1, Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v11, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    move-result-object v1

    .line 804
    move-object v2, v1

    .line 805
    .line 806
    check-cast v2, Landroid/view/View;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v15, v14, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->p(Ljava/lang/Object;Landroid/view/View;)V

    .line 810
    goto :goto_d

    .line 811
    :cond_18
    const/4 v0, 0x0

    .line 812
    .line 813
    move-object/from16 v2, v26

    .line 814
    .line 815
    .line 816
    :goto_d
    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 817
    move-result-object v1

    .line 818
    .line 819
    .line 820
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 821
    .line 822
    .line 823
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 824
    move-result v1

    .line 825
    .line 826
    if-nez v1, :cond_19

    .line 827
    .line 828
    .line 829
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 830
    move-result-object v1

    .line 831
    .line 832
    check-cast v1, Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v13, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    move-result-object v1

    .line 837
    .line 838
    check-cast v1, Landroid/view/View;

    .line 839
    .line 840
    if-eqz v1, :cond_19

    .line 841
    .line 842
    .line 843
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 844
    move-result-object v3

    .line 845
    .line 846
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    .line 847
    .line 848
    move-object/from16 v5, v27

    .line 849
    .line 850
    .line 851
    invoke-direct {v4, v6, v15, v1, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 852
    .line 853
    .line 854
    invoke-static {v3, v4}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 855
    .line 856
    move-object/from16 v1, v19

    .line 857
    .line 858
    const/16 v21, 0x1

    .line 859
    goto :goto_e

    .line 860
    .line 861
    :cond_19
    move-object/from16 v5, v27

    .line 862
    .line 863
    move-object/from16 v1, v19

    .line 864
    .line 865
    .line 866
    :goto_e
    invoke-virtual {v15, v14, v1, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->s(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 867
    const/4 v3, 0x0

    .line 868
    const/4 v4, 0x0

    .line 869
    .line 870
    const/16 v16, 0x0

    .line 871
    .line 872
    const/16 v17, 0x0

    .line 873
    move-object v7, v12

    .line 874
    move-object v12, v15

    .line 875
    move-object v13, v14

    .line 876
    move-object v9, v14

    .line 877
    move-object v14, v3

    .line 878
    move-object v11, v15

    .line 879
    move-object v15, v4

    .line 880
    .line 881
    move-object/from16 v18, v9

    .line 882
    .line 883
    move-object/from16 v19, v8

    .line 884
    .line 885
    .line 886
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 887
    .line 888
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 889
    .line 890
    move-object/from16 v4, p4

    .line 891
    move-object v10, v8

    .line 892
    .line 893
    move-object/from16 v8, v24

    .line 894
    .line 895
    .line 896
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    move-object/from16 v15, p5

    .line 899
    move v14, v0

    .line 900
    .line 901
    .line 902
    invoke-interface {v8, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    move-object v0, v9

    .line 904
    goto :goto_f

    .line 905
    .line 906
    :cond_1a
    move-object/from16 v26, v2

    .line 907
    .line 908
    move-object/from16 v28, v4

    .line 909
    move-object v4, v8

    .line 910
    move-object v8, v10

    .line 911
    move-object v7, v12

    .line 912
    move-object v1, v14

    .line 913
    move-object v11, v15

    .line 914
    const/4 v14, 0x0

    .line 915
    move-object v10, v5

    .line 916
    move-object v15, v9

    .line 917
    move-object v5, v13

    .line 918
    .line 919
    move-object/from16 v2, v26

    .line 920
    :goto_f
    move-object v14, v1

    .line 921
    move-object v13, v5

    .line 922
    move-object v12, v7

    .line 923
    move-object v5, v10

    .line 924
    move-object v9, v15

    .line 925
    .line 926
    move/from16 v7, p3

    .line 927
    move-object v10, v8

    .line 928
    move-object v15, v11

    .line 929
    move-object v8, v4

    .line 930
    .line 931
    move-object/from16 v4, v28

    .line 932
    .line 933
    goto/16 :goto_2

    .line 934
    .line 935
    :cond_1b
    move-object/from16 v26, v2

    .line 936
    .line 937
    move-object/from16 v28, v4

    .line 938
    move-object v4, v8

    .line 939
    move-object v8, v10

    .line 940
    move-object v7, v12

    .line 941
    move-object v1, v14

    .line 942
    move-object v11, v15

    .line 943
    const/4 v14, 0x0

    .line 944
    move-object v10, v5

    .line 945
    move-object v15, v9

    .line 946
    move-object v5, v13

    .line 947
    .line 948
    new-instance v2, Ljava/util/ArrayList;

    .line 949
    .line 950
    .line 951
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .line 953
    .line 954
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 955
    move-result-object v9

    .line 956
    const/4 v12, 0x0

    .line 957
    const/4 v13, 0x0

    .line 958
    .line 959
    .line 960
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 961
    move-result v16

    .line 962
    .line 963
    if-eqz v16, :cond_28

    .line 964
    .line 965
    .line 966
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 967
    move-result-object v16

    .line 968
    .line 969
    move-object/from16 v20, v16

    .line 970
    .line 971
    check-cast v20, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 972
    .line 973
    .line 974
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->d()Z

    .line 975
    move-result v16

    .line 976
    .line 977
    if-eqz v16, :cond_1c

    .line 978
    .line 979
    .line 980
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 981
    move-result-object v14

    .line 982
    .line 983
    move-object/from16 p3, v9

    .line 984
    .line 985
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 986
    .line 987
    .line 988
    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 992
    .line 993
    move-object/from16 v9, p3

    .line 994
    :goto_11
    const/4 v14, 0x0

    .line 995
    goto :goto_10

    .line 996
    .line 997
    :cond_1c
    move-object/from16 p3, v9

    .line 998
    .line 999
    .line 1000
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->h()Ljava/lang/Object;

    .line 1001
    move-result-object v9

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v11, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    move-result-object v9

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1009
    move-result-object v14

    .line 1010
    .line 1011
    if-eqz v0, :cond_1e

    .line 1012
    .line 1013
    if-eq v14, v4, :cond_1d

    .line 1014
    .line 1015
    if-ne v14, v15, :cond_1e

    .line 1016
    .line 1017
    :cond_1d
    const/16 v17, 0x1

    .line 1018
    goto :goto_12

    .line 1019
    .line 1020
    :cond_1e
    const/16 v17, 0x0

    .line 1021
    .line 1022
    :goto_12
    if-nez v9, :cond_20

    .line 1023
    .line 1024
    if-nez v17, :cond_1f

    .line 1025
    .line 1026
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1027
    .line 1028
    .line 1029
    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 1033
    .line 1034
    :cond_1f
    move-object/from16 v29, v1

    .line 1035
    .line 1036
    move-object/from16 v24, v3

    .line 1037
    .line 1038
    move-object/from16 v30, v7

    .line 1039
    .line 1040
    move-object/from16 v32, v10

    .line 1041
    move-object v1, v12

    .line 1042
    move-object v7, v13

    .line 1043
    move-object v10, v15

    .line 1044
    .line 1045
    move-object/from16 v3, v26

    .line 1046
    const/4 v13, 0x0

    .line 1047
    .line 1048
    const/16 v23, 0x1

    .line 1049
    .line 1050
    move-object/from16 v12, p2

    .line 1051
    .line 1052
    goto/16 :goto_16

    .line 1053
    .line 1054
    :cond_20
    move-object/from16 v24, v3

    .line 1055
    .line 1056
    new-instance v3, Ljava/util/ArrayList;

    .line 1057
    .line 1058
    .line 1059
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .line 1061
    move-object/from16 v18, v12

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v14}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 1065
    move-result-object v12

    .line 1066
    .line 1067
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v6, v3, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController;->t(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1071
    .line 1072
    if-eqz v17, :cond_22

    .line 1073
    .line 1074
    if-ne v14, v4, :cond_21

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1078
    goto :goto_13

    .line 1079
    .line 1080
    .line 1081
    :cond_21
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1082
    .line 1083
    .line 1084
    :cond_22
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1085
    move-result v12

    .line 1086
    .line 1087
    if-eqz v12, :cond_23

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v11, v9, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1091
    .line 1092
    move-object/from16 v12, p2

    .line 1093
    .line 1094
    move-object/from16 v29, v1

    .line 1095
    .line 1096
    move-object/from16 v30, v7

    .line 1097
    .line 1098
    move-object/from16 v32, v10

    .line 1099
    move-object v7, v13

    .line 1100
    move-object v13, v14

    .line 1101
    move-object v10, v15

    .line 1102
    .line 1103
    move-object/from16 v1, v18

    .line 1104
    .line 1105
    const/16 v23, 0x1

    .line 1106
    goto :goto_14

    .line 1107
    .line 1108
    .line 1109
    :cond_23
    invoke-virtual {v11, v9, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1110
    .line 1111
    const/16 v17, 0x0

    .line 1112
    .line 1113
    const/16 v19, 0x0

    .line 1114
    .line 1115
    const/16 v25, 0x0

    .line 1116
    .line 1117
    const/16 v27, 0x0

    .line 1118
    .line 1119
    move-object/from16 v29, v1

    .line 1120
    .line 1121
    move-object/from16 v1, v18

    .line 1122
    move-object v12, v11

    .line 1123
    .line 1124
    move-object/from16 v30, v7

    .line 1125
    move-object v7, v13

    .line 1126
    move-object v13, v9

    .line 1127
    .line 1128
    move-object/from16 v31, v14

    .line 1129
    .line 1130
    const/16 v23, 0x1

    .line 1131
    move-object v14, v9

    .line 1132
    .line 1133
    move-object/from16 v32, v10

    .line 1134
    move-object v10, v15

    .line 1135
    move-object v15, v3

    .line 1136
    .line 1137
    move-object/from16 v16, v17

    .line 1138
    .line 1139
    move-object/from16 v17, v19

    .line 1140
    .line 1141
    move-object/from16 v18, v25

    .line 1142
    .line 1143
    move-object/from16 v19, v27

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual/range {v31 .. v31}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1150
    move-result-object v12

    .line 1151
    .line 1152
    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1153
    .line 1154
    if-ne v12, v13, :cond_24

    .line 1155
    .line 1156
    move-object/from16 v12, p2

    .line 1157
    .line 1158
    move-object/from16 v13, v31

    .line 1159
    .line 1160
    .line 1161
    invoke-interface {v12, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    new-instance v14, Ljava/util/ArrayList;

    .line 1164
    .line 1165
    .line 1166
    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 1170
    move-result-object v15

    .line 1171
    .line 1172
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 1179
    move-result-object v15

    .line 1180
    .line 1181
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v11, v9, v15, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->m(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 1188
    move-result-object v14

    .line 1189
    .line 1190
    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    .line 1191
    .line 1192
    .line 1193
    invoke-direct {v15, v6, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v14, v15}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 1197
    goto :goto_14

    .line 1198
    .line 1199
    :cond_24
    move-object/from16 v12, p2

    .line 1200
    .line 1201
    move-object/from16 v13, v31

    .line 1202
    .line 1203
    .line 1204
    :goto_14
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1205
    move-result-object v14

    .line 1206
    .line 1207
    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1208
    .line 1209
    if-ne v14, v15, :cond_26

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1213
    .line 1214
    if-eqz v21, :cond_25

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v11, v9, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->o(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1218
    .line 1219
    :cond_25
    move-object/from16 v3, v26

    .line 1220
    goto :goto_15

    .line 1221
    .line 1222
    :cond_26
    move-object/from16 v3, v26

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v11, v9, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->p(Ljava/lang/Object;Landroid/view/View;)V

    .line 1226
    .line 1227
    :goto_15
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1228
    .line 1229
    .line 1230
    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->j()Z

    .line 1234
    move-result v13

    .line 1235
    .line 1236
    if-eqz v13, :cond_27

    .line 1237
    const/4 v13, 0x0

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v11, v7, v9, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    move-result-object v7

    .line 1242
    goto :goto_16

    .line 1243
    :cond_27
    const/4 v13, 0x0

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v11, v1, v9, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    move-result-object v1

    .line 1248
    .line 1249
    :goto_16
    move-object/from16 v9, p3

    .line 1250
    move-object v12, v1

    .line 1251
    .line 1252
    move-object/from16 v26, v3

    .line 1253
    move-object v13, v7

    .line 1254
    move-object v15, v10

    .line 1255
    .line 1256
    move-object/from16 v3, v24

    .line 1257
    .line 1258
    move-object/from16 v1, v29

    .line 1259
    .line 1260
    move-object/from16 v7, v30

    .line 1261
    .line 1262
    move-object/from16 v10, v32

    .line 1263
    .line 1264
    goto/16 :goto_11

    .line 1265
    .line 1266
    :cond_28
    move-object/from16 v24, v3

    .line 1267
    .line 1268
    move-object/from16 v30, v7

    .line 1269
    .line 1270
    move-object/from16 v32, v10

    .line 1271
    move-object v1, v12

    .line 1272
    move-object v7, v13

    .line 1273
    move-object v10, v15

    .line 1274
    .line 1275
    const/16 v23, 0x1

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v11, v7, v1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    move-result-object v1

    .line 1280
    .line 1281
    if-nez v1, :cond_29

    .line 1282
    return-object v8

    .line 1283
    .line 1284
    .line 1285
    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1286
    move-result-object v3

    .line 1287
    .line 1288
    .line 1289
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1290
    move-result v5

    .line 1291
    .line 1292
    if-eqz v5, :cond_31

    .line 1293
    .line 1294
    .line 1295
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1296
    move-result-object v5

    .line 1297
    .line 1298
    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->d()Z

    .line 1302
    move-result v7

    .line 1303
    .line 1304
    if-eqz v7, :cond_2a

    .line 1305
    goto :goto_17

    .line 1306
    .line 1307
    .line 1308
    :cond_2a
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->h()Ljava/lang/Object;

    .line 1309
    move-result-object v7

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1313
    move-result-object v9

    .line 1314
    .line 1315
    if-eqz v0, :cond_2c

    .line 1316
    .line 1317
    if-eq v9, v4, :cond_2b

    .line 1318
    .line 1319
    if-ne v9, v10, :cond_2c

    .line 1320
    .line 1321
    :cond_2b
    move/from16 v12, v23

    .line 1322
    goto :goto_18

    .line 1323
    :cond_2c
    const/4 v12, 0x0

    .line 1324
    .line 1325
    :goto_18
    if-nez v7, :cond_2e

    .line 1326
    .line 1327
    if-eqz v12, :cond_2d

    .line 1328
    goto :goto_19

    .line 1329
    .line 1330
    :cond_2d
    move-object/from16 v12, v24

    .line 1331
    goto :goto_1b

    .line 1332
    .line 1333
    .line 1334
    :cond_2e
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 1335
    move-result-object v7

    .line 1336
    .line 1337
    .line 1338
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 1339
    move-result v7

    .line 1340
    .line 1341
    if-nez v7, :cond_30

    .line 1342
    .line 1343
    .line 1344
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 1345
    move-result v7

    .line 1346
    .line 1347
    if-eqz v7, :cond_2f

    .line 1348
    .line 1349
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1353
    .line 1354
    const-string v12, "SpecialEffectsController: Container "

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 1361
    move-result-object v12

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string v12, " has not been laid out. Completing operation "

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1376
    move-result-object v7

    .line 1377
    .line 1378
    move-object/from16 v12, v24

    .line 1379
    .line 1380
    .line 1381
    invoke-static {v12, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    goto :goto_1a

    .line 1383
    .line 1384
    :cond_2f
    move-object/from16 v12, v24

    .line 1385
    .line 1386
    .line 1387
    :goto_1a
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 1388
    goto :goto_1b

    .line 1389
    .line 1390
    :cond_30
    move-object/from16 v12, v24

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1394
    move-result-object v7

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 1398
    move-result-object v7

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->c()Landroidx/core/os/CancellationSignal;

    .line 1402
    move-result-object v13

    .line 1403
    .line 1404
    new-instance v14, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    .line 1405
    .line 1406
    .line 1407
    invoke-direct {v14, v6, v5, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v11, v7, v1, v13, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->q(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 1411
    .line 1412
    :goto_1b
    move-object/from16 v24, v12

    .line 1413
    goto :goto_17

    .line 1414
    .line 1415
    :cond_31
    move-object/from16 v12, v24

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 1419
    move-result-object v3

    .line 1420
    .line 1421
    .line 1422
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 1423
    move-result v3

    .line 1424
    .line 1425
    if-nez v3, :cond_32

    .line 1426
    return-object v8

    .line 1427
    :cond_32
    const/4 v3, 0x4

    .line 1428
    .line 1429
    .line 1430
    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentTransition;->e(Ljava/util/ArrayList;I)V

    .line 1431
    .line 1432
    move-object/from16 v3, v32

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->l(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1436
    move-result-object v16

    .line 1437
    .line 1438
    .line 1439
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 1440
    move-result v4

    .line 1441
    .line 1442
    if-eqz v4, :cond_34

    .line 1443
    .line 1444
    const-string v4, ">>>>> Beginning transition <<<<<"

    .line 1445
    .line 1446
    .line 1447
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    .line 1449
    const-string v4, ">>>>> SharedElementFirstOutViews <<<<<"

    .line 1450
    .line 1451
    .line 1452
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1456
    move-result-object v4

    .line 1457
    .line 1458
    .line 1459
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1460
    move-result v5

    .line 1461
    .line 1462
    const-string v7, " Name: "

    .line 1463
    .line 1464
    const-string v9, "View: "

    .line 1465
    .line 1466
    if-eqz v5, :cond_33

    .line 1467
    .line 1468
    .line 1469
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1470
    move-result-object v5

    .line 1471
    .line 1472
    check-cast v5, Landroid/view/View;

    .line 1473
    .line 1474
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1484
    .line 1485
    .line 1486
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 1490
    move-result-object v5

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1497
    move-result-object v5

    .line 1498
    .line 1499
    .line 1500
    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    goto :goto_1c

    .line 1502
    .line 1503
    :cond_33
    const-string v4, ">>>>> SharedElementLastInViews <<<<<"

    .line 1504
    .line 1505
    .line 1506
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1510
    move-result-object v4

    .line 1511
    .line 1512
    .line 1513
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1514
    move-result v5

    .line 1515
    .line 1516
    if-eqz v5, :cond_34

    .line 1517
    .line 1518
    .line 1519
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1520
    move-result-object v5

    .line 1521
    .line 1522
    check-cast v5, Landroid/view/View;

    .line 1523
    .line 1524
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 1540
    move-result-object v5

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1547
    move-result-object v5

    .line 1548
    .line 1549
    .line 1550
    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    goto :goto_1d

    .line 1552
    .line 1553
    .line 1554
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 1555
    move-result-object v4

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v11, v4, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    .line 1562
    move-result-object v13

    .line 1563
    move-object v12, v11

    .line 1564
    .line 1565
    move-object/from16 v14, v30

    .line 1566
    move-object v15, v3

    .line 1567
    .line 1568
    move-object/from16 v17, v28

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransitionImpl;->r(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1572
    const/4 v1, 0x0

    .line 1573
    .line 1574
    .line 1575
    invoke-static {v2, v1}, Landroidx/fragment/app/FragmentTransition;->e(Ljava/util/ArrayList;I)V

    .line 1576
    .line 1577
    move-object/from16 v1, v30

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {v11, v0, v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1581
    return-object v8
.end method


# virtual methods
.method f(Ljava/util/List;Z)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v8, v1

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->c(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    sget-object v5, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 40
    move-result v6

    .line 41
    .line 42
    aget v5, v5, v6

    .line 43
    .line 44
    if-eq v5, v3, :cond_2

    .line 45
    .line 46
    if-eq v5, v9, :cond_2

    .line 47
    const/4 v3, 0x3

    .line 48
    .line 49
    if-eq v5, v3, :cond_2

    .line 50
    const/4 v3, 0x4

    .line 51
    .line 52
    if-eq v5, v3, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 56
    .line 57
    if-eq v4, v3, :cond_0

    .line 58
    move-object v8, v2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 62
    .line 63
    if-ne v4, v3, :cond_0

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    move-object v1, v2

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    const-string v10, " to "

    .line 74
    .line 75
    const-string v11, "FragmentManager"

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v2, "Executing operations from "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    new-instance v4, Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    new-instance v12, Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-direct {v12, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v2

    .line 127
    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 135
    .line 136
    new-instance v5, Landroidx/core/os/CancellationSignal;

    .line 137
    .line 138
    .line 139
    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->j(Landroidx/core/os/CancellationSignal;)V

    .line 143
    .line 144
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 145
    .line 146
    .line 147
    invoke-direct {v6, v2, v5, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    new-instance v5, Landroidx/core/os/CancellationSignal;

    .line 153
    .line 154
    .line 155
    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->j(Landroidx/core/os/CancellationSignal;)V

    .line 159
    .line 160
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 161
    const/4 v7, 0x0

    .line 162
    .line 163
    if-eqz p2, :cond_5

    .line 164
    .line 165
    if-ne v2, v1, :cond_6

    .line 166
    :goto_2
    move v7, v3

    .line 167
    goto :goto_3

    .line 168
    .line 169
    :cond_5
    if-ne v2, v8, :cond_6

    .line 170
    goto :goto_2

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_3
    invoke-direct {v6, v2, v5, p2, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    .line 179
    .line 180
    .line 181
    invoke-direct {v5, p0, v12, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->a(Ljava/lang/Runnable;)V

    .line 185
    goto :goto_1

    .line 186
    :cond_7
    move-object v2, p0

    .line 187
    move-object v3, v4

    .line 188
    move-object v4, v12

    .line 189
    move v5, p2

    .line 190
    move-object v6, v1

    .line 191
    move-object v7, v8

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/DefaultSpecialEffectsController;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 201
    move-result p2

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v0, v12, p2, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    .line 211
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    move-result p2

    .line 213
    .line 214
    if-eqz p2, :cond_8

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    check-cast p2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->s(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 224
    goto :goto_4

    .line 225
    .line 226
    .line 227
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 228
    .line 229
    .line 230
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 231
    move-result p1

    .line 232
    .line 233
    if-eqz p1, :cond_9

    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    const-string p2, "Completed executing operations from "

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    .line 259
    invoke-static {v11, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_9
    return-void
.end method

.method s(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a(Landroid/view/View;)V

    .line 14
    return-void
.end method

.method t(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->a(Landroid/view/ViewGroup;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result p2

    .line 18
    .line 19
    if-nez p2, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result p2

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    :goto_0
    if-ge v1, p2, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    move-result v3

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->t(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method u(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p2, Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v3

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->u(Ljava/util/Map;Landroid/view/View;)V

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method v(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
