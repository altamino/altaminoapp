.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeState$State;
    }
.end annotation


# static fields
.field private static final BADGE_RESOURCE_TAG:Ljava/lang/String; = "badge"

.field private static final DEFAULT_MAX_BADGE_CHARACTER_COUNT:I = 0x4


# instance fields
.field final badgeRadius:F

.field final badgeWidePadding:F

.field final badgeWithTextRadius:F

.field private final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field private final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/badge/BadgeState$State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 11
    .line 12
    if-nez p5, :cond_0

    .line 13
    .line 14
    new-instance p5, Lcom/google/android/material/badge/BadgeState$State;

    .line 15
    .line 16
    .line 17
    invoke-direct {p5}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 18
    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p5, p2}, Lcom/google/android/material/badge/BadgeState$State;->c(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->a(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 26
    move-result p2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/badge/BadgeState;->a(Landroid/content/Context;III)Landroid/content/res/TypedArray;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    sget p4, Ld3/l;->Badge_badgeRadius:I

    .line 37
    .line 38
    sget v1, Ld3/d;->mtrl_badge_radius:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 46
    move-result p4

    .line 47
    int-to-float p4, p4

    .line 48
    .line 49
    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 50
    .line 51
    sget p4, Ld3/l;->Badge_badgeWidePadding:I

    .line 52
    .line 53
    sget v1, Ld3/d;->mtrl_badge_long_text_horizontal_padding:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 61
    move-result p4

    .line 62
    int-to-float p4, p4

    .line 63
    .line 64
    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    .line 65
    .line 66
    sget p4, Ld3/l;->Badge_badgeWithTextRadius:I

    .line 67
    .line 68
    sget v1, Ld3/d;->mtrl_badge_with_text_radius:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result p3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 76
    move-result p3

    .line 77
    int-to-float p3, p3

    .line 78
    .line 79
    iput p3, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 80
    .line 81
    .line 82
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->e(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 83
    move-result p3

    .line 84
    const/4 p4, -0x2

    .line 85
    .line 86
    if-ne p3, p4, :cond_2

    .line 87
    .line 88
    const/16 p3, 0xff

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->e(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 93
    move-result p3

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->i(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 97
    .line 98
    .line 99
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->A(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    if-nez p3, :cond_3

    .line 103
    .line 104
    sget p3, Ld3/j;->mtrl_badge_numberless_content_description:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->A(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->B(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->C(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 120
    move-result p3

    .line 121
    .line 122
    if-nez p3, :cond_4

    .line 123
    .line 124
    sget p3, Ld3/i;->mtrl_badge_content_description:I

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->C(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 129
    move-result p3

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->D(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 133
    .line 134
    .line 135
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->E(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 136
    move-result p3

    .line 137
    .line 138
    if-nez p3, :cond_5

    .line 139
    .line 140
    sget p3, Ld3/j;->mtrl_exceed_max_badge_number_content_description:I

    .line 141
    goto :goto_3

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->E(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 145
    move-result p3

    .line 146
    .line 147
    .line 148
    :goto_3
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->F(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 149
    .line 150
    .line 151
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->G(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    .line 152
    move-result-object p3

    .line 153
    const/4 v1, 0x0

    .line 154
    .line 155
    if-eqz p3, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->G(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    .line 159
    move-result-object p3

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    move-result p3

    .line 164
    .line 165
    if-eqz p3, :cond_6

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    move p3, v1

    .line 168
    goto :goto_5

    .line 169
    :cond_7
    :goto_4
    const/4 p3, 0x1

    .line 170
    .line 171
    .line 172
    :goto_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    move-result-object p3

    .line 174
    .line 175
    .line 176
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->H(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->I(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 180
    move-result p3

    .line 181
    .line 182
    if-ne p3, p4, :cond_8

    .line 183
    .line 184
    sget p3, Ld3/l;->Badge_maxCharacterCount:I

    .line 185
    const/4 v2, 0x4

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 189
    move-result p3

    .line 190
    goto :goto_6

    .line 191
    .line 192
    .line 193
    :cond_8
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->I(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 194
    move-result p3

    .line 195
    .line 196
    .line 197
    :goto_6
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->J(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 198
    .line 199
    .line 200
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->K(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 201
    move-result p3

    .line 202
    .line 203
    if-eq p3, p4, :cond_9

    .line 204
    .line 205
    .line 206
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->K(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 207
    move-result p3

    .line 208
    .line 209
    .line 210
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->M(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 211
    goto :goto_7

    .line 212
    .line 213
    :cond_9
    sget p3, Ld3/l;->Badge_number:I

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 217
    move-result p4

    .line 218
    .line 219
    if-eqz p4, :cond_a

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 223
    move-result p3

    .line 224
    .line 225
    .line 226
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->M(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 227
    goto :goto_7

    .line 228
    :cond_a
    const/4 p3, -0x1

    .line 229
    .line 230
    .line 231
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->M(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 232
    .line 233
    .line 234
    :goto_7
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->N(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 235
    move-result-object p3

    .line 236
    .line 237
    if-nez p3, :cond_b

    .line 238
    .line 239
    sget p3, Ld3/l;->Badge_backgroundColor:I

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeState;->u(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    .line 243
    move-result p3

    .line 244
    goto :goto_8

    .line 245
    .line 246
    .line 247
    :cond_b
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->N(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 248
    move-result-object p3

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 252
    move-result p3

    .line 253
    .line 254
    .line 255
    :goto_8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object p3

    .line 257
    .line 258
    .line 259
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->P(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->R(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 263
    move-result-object p3

    .line 264
    .line 265
    if-eqz p3, :cond_c

    .line 266
    .line 267
    .line 268
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->R(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->S(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 273
    goto :goto_9

    .line 274
    .line 275
    :cond_c
    sget p3, Ld3/l;->Badge_badgeTextColor:I

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 279
    move-result p4

    .line 280
    .line 281
    if-eqz p4, :cond_d

    .line 282
    .line 283
    .line 284
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeState;->u(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    .line 285
    move-result p1

    .line 286
    .line 287
    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    .line 292
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->S(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 293
    goto :goto_9

    .line 294
    .line 295
    :cond_d
    new-instance p3, Lcom/google/android/material/resources/d;

    .line 296
    .line 297
    sget p4, Ld3/k;->TextAppearance_MaterialComponents_Badge:I

    .line 298
    .line 299
    .line 300
    invoke-direct {p3, p1, p4}, Lcom/google/android/material/resources/d;-><init>(Landroid/content/Context;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 308
    move-result p1

    .line 309
    .line 310
    .line 311
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    move-result-object p1

    .line 313
    .line 314
    .line 315
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->S(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    :goto_9
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->g(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 319
    move-result-object p1

    .line 320
    .line 321
    if-nez p1, :cond_e

    .line 322
    .line 323
    sget p1, Ld3/l;->Badge_badgeGravity:I

    .line 324
    .line 325
    .line 326
    const p3, 0x800035

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 330
    move-result p1

    .line 331
    goto :goto_a

    .line 332
    .line 333
    .line 334
    :cond_e
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->g(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 335
    move-result-object p1

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 339
    move-result p1

    .line 340
    .line 341
    .line 342
    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object p1

    .line 344
    .line 345
    .line 346
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->h(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->k(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 350
    move-result-object p1

    .line 351
    .line 352
    if-nez p1, :cond_f

    .line 353
    .line 354
    sget p1, Ld3/l;->Badge_horizontalOffset:I

    .line 355
    .line 356
    .line 357
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 358
    move-result p1

    .line 359
    goto :goto_b

    .line 360
    .line 361
    .line 362
    :cond_f
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->k(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 363
    move-result-object p1

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 367
    move-result p1

    .line 368
    .line 369
    .line 370
    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    move-result-object p1

    .line 372
    .line 373
    .line 374
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->l(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->k(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 378
    move-result-object p1

    .line 379
    .line 380
    if-nez p1, :cond_10

    .line 381
    .line 382
    sget p1, Ld3/l;->Badge_verticalOffset:I

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 386
    move-result p1

    .line 387
    goto :goto_c

    .line 388
    .line 389
    .line 390
    :cond_10
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->m(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 391
    move-result-object p1

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 395
    move-result p1

    .line 396
    .line 397
    .line 398
    :goto_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    move-result-object p1

    .line 400
    .line 401
    .line 402
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->n(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->o(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 406
    move-result-object p1

    .line 407
    .line 408
    if-nez p1, :cond_11

    .line 409
    .line 410
    sget p1, Ld3/l;->Badge_horizontalOffsetWithText:I

    .line 411
    .line 412
    .line 413
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->k(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 414
    move-result-object p3

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 418
    move-result p3

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 422
    move-result p1

    .line 423
    goto :goto_d

    .line 424
    .line 425
    .line 426
    :cond_11
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->o(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 427
    move-result-object p1

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 431
    move-result p1

    .line 432
    .line 433
    .line 434
    :goto_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    move-result-object p1

    .line 436
    .line 437
    .line 438
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->p(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->s(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 442
    move-result-object p1

    .line 443
    .line 444
    if-nez p1, :cond_12

    .line 445
    .line 446
    sget p1, Ld3/l;->Badge_verticalOffsetWithText:I

    .line 447
    .line 448
    .line 449
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->m(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 450
    move-result-object p3

    .line 451
    .line 452
    .line 453
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 454
    move-result p3

    .line 455
    .line 456
    .line 457
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 458
    move-result p1

    .line 459
    goto :goto_e

    .line 460
    .line 461
    .line 462
    :cond_12
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->s(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 463
    move-result-object p1

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 467
    move-result p1

    .line 468
    .line 469
    .line 470
    :goto_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    move-result-object p1

    .line 472
    .line 473
    .line 474
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->t(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->u(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 478
    move-result-object p1

    .line 479
    .line 480
    if-nez p1, :cond_13

    .line 481
    move p1, v1

    .line 482
    goto :goto_f

    .line 483
    .line 484
    .line 485
    :cond_13
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->u(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 486
    move-result-object p1

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 490
    move-result p1

    .line 491
    .line 492
    .line 493
    :goto_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    move-result-object p1

    .line 495
    .line 496
    .line 497
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->v(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 498
    .line 499
    .line 500
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->w(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 501
    move-result-object p1

    .line 502
    .line 503
    if-nez p1, :cond_14

    .line 504
    goto :goto_10

    .line 505
    .line 506
    .line 507
    :cond_14
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->w(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 508
    move-result-object p1

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 512
    move-result v1

    .line 513
    .line 514
    .line 515
    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    move-result-object p1

    .line 517
    .line 518
    .line 519
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->x(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 523
    .line 524
    .line 525
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->y(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    .line 526
    move-result-object p1

    .line 527
    .line 528
    if-nez p1, :cond_16

    .line 529
    .line 530
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 531
    .line 532
    const/16 p2, 0x18

    .line 533
    .line 534
    if-lt p1, p2, :cond_15

    .line 535
    .line 536
    .line 537
    invoke-static {}, Lcom/google/android/material/badge/b;->a()Ljava/util/Locale$Category;

    .line 538
    move-result-object p1

    .line 539
    .line 540
    .line 541
    invoke-static {p1}, Landroidx/media3/common/util/k;->a(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 542
    move-result-object p1

    .line 543
    goto :goto_11

    .line 544
    .line 545
    .line 546
    :cond_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 547
    move-result-object p1

    .line 548
    .line 549
    .line 550
    :goto_11
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->z(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    .line 551
    goto :goto_12

    .line 552
    .line 553
    .line 554
    :cond_16
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->y(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    .line 555
    move-result-object p1

    .line 556
    .line 557
    .line 558
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->z(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    .line 559
    .line 560
    :goto_12
    iput-object p5, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 561
    return-void
.end method

.method private a(Landroid/content/Context;III)Landroid/content/res/TypedArray;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v1, "badge"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v1}, Lk3/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 13
    move-result v1

    .line 14
    move-object v2, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    move-object v2, p2

    .line 18
    move v1, v0

    .line 19
    .line 20
    :goto_0
    if-nez v1, :cond_1

    .line 21
    move v5, p4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v5, v1

    .line 24
    .line 25
    :goto_1
    sget-object v3, Ld3/l;->Badge:[I

    .line 26
    .line 27
    new-array v6, v0, [I

    .line 28
    move-object v1, p1

    .line 29
    move v4, p3

    .line 30
    .line 31
    .line 32
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private static u(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method b()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->u(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method c()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->w(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->e(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method e()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->N(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method f()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->g(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method g()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->R(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method h()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->E(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method i()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->A(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method j()I
    .locals 1
    .annotation build Landroidx/annotation/PluralsRes;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->C(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method k()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->o(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method l()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->k(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method m()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->I(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method n()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->K(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method o()Ljava/util/Locale;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->y(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method p()Lcom/google/android/material/badge/BadgeState$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    return-object v0
.end method

.method q()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->s(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method r()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->m(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method s()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->K(Lcom/google/android/material/badge/BadgeState$State;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method t()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->G(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method v(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->i(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->i(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 11
    return-void
.end method
