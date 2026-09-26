.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/KeyMappingKt;->a(Le8/l;)Landroidx/compose/foundation/text/KeyMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $shortcutModifier:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Le8/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 6
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->a(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->e(Landroid/view/KeyEvent;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->v()J

    .line 40
    move-result-wide v4

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_1e

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Le8/l;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->a(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 72
    move-result-wide v2

    .line 73
    .line 74
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->d()J

    .line 78
    move-result-wide v4

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->m()J

    .line 89
    move-result-wide v4

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 93
    move-result v0

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    :goto_0
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->t()J

    .line 103
    move-result-wide v4

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->u()J

    .line 117
    move-result-wide v4

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 121
    move-result v0

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->a()J

    .line 131
    move-result-wide v4

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->v()J

    .line 145
    move-result-wide v4

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 149
    move-result p1

    .line 150
    .line 151
    if-eqz p1, :cond_1e

    .line 152
    .line 153
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->d(Landroid/view/KeyEvent;)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    .line 166
    :cond_7
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->e(Landroid/view/KeyEvent;)Z

    .line 167
    move-result v0

    .line 168
    .line 169
    if-eqz v0, :cond_10

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 173
    move-result-wide v2

    .line 174
    .line 175
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->h()J

    .line 179
    move-result-wide v4

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 183
    move-result v0

    .line 184
    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    .line 192
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->i()J

    .line 193
    move-result-wide v4

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 197
    move-result v0

    .line 198
    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->j()J

    .line 207
    move-result-wide v4

    .line 208
    .line 209
    .line 210
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 211
    move-result v0

    .line 212
    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    .line 220
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->g()J

    .line 221
    move-result-wide v4

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 225
    move-result v0

    .line 226
    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    .line 234
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->q()J

    .line 235
    move-result-wide v4

    .line 236
    .line 237
    .line 238
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 239
    move-result v0

    .line 240
    .line 241
    if-eqz v0, :cond_c

    .line 242
    .line 243
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    .line 248
    :cond_c
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->p()J

    .line 249
    move-result-wide v4

    .line 250
    .line 251
    .line 252
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 253
    move-result v0

    .line 254
    .line 255
    if-eqz v0, :cond_d

    .line 256
    .line 257
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    .line 262
    :cond_d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->o()J

    .line 263
    move-result-wide v4

    .line 264
    .line 265
    .line 266
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 267
    move-result v0

    .line 268
    .line 269
    if-eqz v0, :cond_e

    .line 270
    .line 271
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    .line 276
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->n()J

    .line 277
    move-result-wide v4

    .line 278
    .line 279
    .line 280
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 281
    move-result v0

    .line 282
    .line 283
    if-eqz v0, :cond_f

    .line 284
    .line 285
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    .line 290
    :cond_f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->m()J

    .line 291
    move-result-wide v4

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 295
    move-result p1

    .line 296
    .line 297
    if-eqz p1, :cond_1e

    .line 298
    .line 299
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    .line 304
    :cond_10
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 305
    move-result-wide v2

    .line 306
    .line 307
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->h()J

    .line 311
    move-result-wide v4

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 315
    move-result v0

    .line 316
    .line 317
    if-eqz v0, :cond_11

    .line 318
    .line 319
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    .line 324
    :cond_11
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->i()J

    .line 325
    move-result-wide v4

    .line 326
    .line 327
    .line 328
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 329
    move-result v0

    .line 330
    .line 331
    if-eqz v0, :cond_12

    .line 332
    .line 333
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    .line 338
    :cond_12
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->j()J

    .line 339
    move-result-wide v4

    .line 340
    .line 341
    .line 342
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 343
    move-result v0

    .line 344
    .line 345
    if-eqz v0, :cond_13

    .line 346
    .line 347
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    .line 352
    :cond_13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->g()J

    .line 353
    move-result-wide v4

    .line 354
    .line 355
    .line 356
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 357
    move-result v0

    .line 358
    .line 359
    if-eqz v0, :cond_14

    .line 360
    .line 361
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    .line 366
    :cond_14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->q()J

    .line 367
    move-result-wide v4

    .line 368
    .line 369
    .line 370
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 371
    move-result v0

    .line 372
    .line 373
    if-eqz v0, :cond_15

    .line 374
    .line 375
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    .line 380
    :cond_15
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->p()J

    .line 381
    move-result-wide v4

    .line 382
    .line 383
    .line 384
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 385
    move-result v0

    .line 386
    .line 387
    if-eqz v0, :cond_16

    .line 388
    .line 389
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    .line 394
    :cond_16
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->o()J

    .line 395
    move-result-wide v4

    .line 396
    .line 397
    .line 398
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 399
    move-result v0

    .line 400
    .line 401
    if-eqz v0, :cond_17

    .line 402
    .line 403
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 404
    goto :goto_1

    .line 405
    .line 406
    .line 407
    :cond_17
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->n()J

    .line 408
    move-result-wide v4

    .line 409
    .line 410
    .line 411
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 412
    move-result v0

    .line 413
    .line 414
    if-eqz v0, :cond_18

    .line 415
    .line 416
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 417
    goto :goto_1

    .line 418
    .line 419
    .line 420
    :cond_18
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->k()J

    .line 421
    move-result-wide v4

    .line 422
    .line 423
    .line 424
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 425
    move-result v0

    .line 426
    .line 427
    if-eqz v0, :cond_19

    .line 428
    .line 429
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 430
    goto :goto_1

    .line 431
    .line 432
    .line 433
    :cond_19
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->c()J

    .line 434
    move-result-wide v4

    .line 435
    .line 436
    .line 437
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 438
    move-result v0

    .line 439
    .line 440
    if-eqz v0, :cond_1a

    .line 441
    .line 442
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 443
    goto :goto_1

    .line 444
    .line 445
    .line 446
    :cond_1a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->f()J

    .line 447
    move-result-wide v4

    .line 448
    .line 449
    .line 450
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 451
    move-result v0

    .line 452
    .line 453
    if-eqz v0, :cond_1b

    .line 454
    .line 455
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 456
    goto :goto_1

    .line 457
    .line 458
    .line 459
    :cond_1b
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->r()J

    .line 460
    move-result-wide v4

    .line 461
    .line 462
    .line 463
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 464
    move-result v0

    .line 465
    .line 466
    if-eqz v0, :cond_1c

    .line 467
    .line 468
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 469
    goto :goto_1

    .line 470
    .line 471
    .line 472
    :cond_1c
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->e()J

    .line 473
    move-result-wide v4

    .line 474
    .line 475
    .line 476
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 477
    move-result v0

    .line 478
    .line 479
    if-eqz v0, :cond_1d

    .line 480
    .line 481
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 482
    goto :goto_1

    .line 483
    .line 484
    .line 485
    :cond_1d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->s()J

    .line 486
    move-result-wide v4

    .line 487
    .line 488
    .line 489
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 490
    move-result p1

    .line 491
    .line 492
    if-eqz p1, :cond_1e

    .line 493
    .line 494
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    .line 495
    :cond_1e
    :goto_1
    return-object v1
.end method
