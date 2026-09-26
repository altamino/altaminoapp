.class public Lcom/narvii/widget/NicknameView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeObserver;


# static fields
.field private static final MEASURE_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allowShowUnsubscribe:Z

.field badgeDrawable:Landroid/graphics/drawable/Drawable;

.field public badgeScale:F

.field protected hideInfluencerBadge:Z

.field protected hideMembershipBadge:Z

.field protected hideRankingBadge:Z

.field public hideRole:Z

.field protected hideVerifiedBadge:Z

.field influencerBadge:Landroid/graphics/drawable/Drawable;

.field isDarkTheme:Z

.field isMe:Z

.field isMembership:Z

.field public isReverse:Z

.field isVerified:Z

.field membershipDrawable:Landroid/graphics/drawable/Drawable;

.field public nameCenter:Z

.field final nameView:Landroid/widget/TextView;

.field final paint:Landroid/graphics/Paint;

.field rankingService:Lcom/narvii/util/ranking/RankingService;

.field final rectf:Landroid/graphics/RectF;

.field role1:Ljava/lang/String;

.field role1Bg:I

.field role2:Ljava/lang/String;

.field role2Bg:I

.field public roleMarginRatio:F

.field public rolePaddingRatio:F

.field public roleRadiusRatio:F

.field public roleScale:F

.field final rtl:Z

.field setHideInfluencerBadge:Z

.field showAuthorViewBorder:Z

.field final strokePaint:Landroid/graphics/Paint;

.field textColor:Landroid/content/res/ColorStateList;

.field unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

.field public useBigBadge:Z

.field verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/widget/NicknameView;->MEASURE_CACHE:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/NicknameView;->badgeScale:F

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/narvii/widget/NicknameView;->showAuthorViewBorder:Z

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    const-string v4, "config"

    .line 23
    .line 24
    .line 25
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 31
    .line 32
    const/16 v6, 0xc8

    .line 33
    .line 34
    if-eq v5, v6, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    :cond_0
    const-string v4, "ranking"

    .line 43
    .line 44
    .line 45
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    check-cast v3, Lcom/narvii/util/ranking/RankingService;

    .line 49
    .line 50
    iput-object v3, p0, Lcom/narvii/widget/NicknameView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 54
    move-result v3

    .line 55
    .line 56
    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->rtl:Z

    .line 57
    .line 58
    new-instance v3, Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    iput-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 67
    .line 68
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 72
    .line 73
    sget-object v4, Lcom/narvii/lib/R$styleable;->NicknameView:[I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_android_textSize:I

    .line 80
    .line 81
    const/high16 v5, 0x41600000    # 14.0f

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 85
    move-result p1

    .line 86
    float-to-int p1, p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 90
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    .line 93
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_roleScale:I

    .line 94
    .line 95
    const/high16 v5, 0x3f400000    # 0.75f

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 99
    move-result v4

    .line 100
    .line 101
    iput v4, p0, Lcom/narvii/widget/NicknameView;->roleScale:F

    .line 102
    .line 103
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_rolePaddingRatio:I

    .line 104
    .line 105
    .line 106
    const v5, 0x3eae147b    # 0.34f

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 110
    move-result v4

    .line 111
    .line 112
    iput v4, p0, Lcom/narvii/widget/NicknameView;->rolePaddingRatio:F

    .line 113
    .line 114
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_roleMarginRatio:I

    .line 115
    .line 116
    .line 117
    const v5, 0x3ef5c28f    # 0.48f

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 121
    move-result v4

    .line 122
    .line 123
    iput v4, p0, Lcom/narvii/widget/NicknameView;->roleMarginRatio:F

    .line 124
    .line 125
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_roleRadiusRatio:I

    .line 126
    .line 127
    .line 128
    const v5, 0x3ed70a3d    # 0.42f

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 132
    move-result v4

    .line 133
    .line 134
    iput v4, p0, Lcom/narvii/widget/NicknameView;->roleRadiusRatio:F

    .line 135
    .line 136
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_nameCenter:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 140
    move-result v4

    .line 141
    .line 142
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    .line 147
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_android_textStyle:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 151
    move-result v4

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    .line 160
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowRadius:I

    .line 161
    const/4 v5, 0x0

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 165
    move-result v4

    .line 166
    .line 167
    sget v6, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowDx:I

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 171
    move-result v6

    .line 172
    .line 173
    sget v7, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowDy:I

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 177
    move-result v5

    .line 178
    .line 179
    sget v7, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowColor:I

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 183
    move-result v7

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 187
    .line 188
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_android_textColor:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 192
    move-result-object v4

    .line 193
    .line 194
    iput-object v4, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    .line 195
    .line 196
    if-nez v4, :cond_2

    .line 197
    .line 198
    .line 199
    const v4, -0xbbbbbc

    .line 200
    .line 201
    .line 202
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    iput-object v4, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    .line 206
    .line 207
    :cond_2
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    .line 212
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_hideRankingBadge:I

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 216
    move-result v4

    .line 217
    .line 218
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    .line 219
    .line 220
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_hideInfluencerBadge:I

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 224
    move-result v5

    .line 225
    .line 226
    if-eqz v5, :cond_3

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 230
    move-result v4

    .line 231
    .line 232
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    .line 233
    .line 234
    iput-boolean v1, p0, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge:Z

    .line 235
    goto :goto_0

    .line 236
    .line 237
    :cond_3
    iget-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    .line 238
    .line 239
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    .line 240
    .line 241
    :goto_0
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_hideVerifiedBadge:I

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 245
    move-result v4

    .line 246
    .line 247
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    .line 248
    .line 249
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_hideMembershipBadge:I

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 253
    move-result v4

    .line 254
    .line 255
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 256
    .line 257
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_hideRole:I

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 261
    move-result v4

    .line 262
    .line 263
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->hideRole:Z

    .line 264
    .line 265
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_useBigBadge:I

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 269
    move-result v4

    .line 270
    .line 271
    iput-boolean v4, p0, Lcom/narvii/widget/NicknameView;->useBigBadge:Z

    .line 272
    .line 273
    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_allowShowUnsubscribe:I

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 277
    move-result v2

    .line 278
    .line 279
    iput-boolean v2, p0, Lcom/narvii/widget/NicknameView;->allowShowUnsubscribe:Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    .line 284
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 285
    const/4 v2, -0x2

    .line 286
    .line 287
    .line 288
    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    .line 293
    new-instance p2, Landroid/graphics/RectF;

    .line 294
    .line 295
    .line 296
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 297
    .line 298
    iput-object p2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 299
    .line 300
    new-instance p2, Landroid/graphics/Paint;

    .line 301
    .line 302
    .line 303
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 304
    .line 305
    iput-object p2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 306
    .line 307
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 314
    .line 315
    iget v2, p0, Lcom/narvii/widget/NicknameView;->roleScale:F

    .line 316
    mul-float/2addr p1, v2

    .line 317
    float-to-int p1, p1

    .line 318
    int-to-float p1, p1

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    .line 323
    new-instance p1, Landroid/graphics/Paint;

    .line 324
    .line 325
    .line 326
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 327
    .line 328
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    .line 329
    .line 330
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 337
    move-result-object p2

    .line 338
    .line 339
    .line 340
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 341
    move-result p2

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 345
    const/4 p2, -0x1

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    move-result-object p1

    .line 356
    .line 357
    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_verified:I

    .line 358
    .line 359
    .line 360
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 361
    move-result-object p1

    .line 362
    .line 363
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 367
    move-result-object p1

    .line 368
    .line 369
    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_membership:I

    .line 370
    .line 371
    .line 372
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 373
    move-result-object p1

    .line 374
    .line 375
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->membershipDrawable:Landroid/graphics/drawable/Drawable;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 379
    move-result-object p1

    .line 380
    .line 381
    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_unsubscribe:I

    .line 382
    .line 383
    .line 384
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 385
    move-result-object p1

    .line 386
    .line 387
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    return-void
.end method

.method private addInfluencerBadge()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$drawable;->ic_badge_influencer:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 28
    :cond_1
    return-void
.end method

.method private calcBadgeSize()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showVerifiedBadge()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showMembershipBadge()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->membershipDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showUnsubscribeBadge()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    .line 48
    move-result v1

    .line 49
    add-int/2addr v0, v1

    .line 50
    :cond_3
    return v0
.end method

.method private calcRoleSize()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/widget/NicknameView;->rolePaddingRatio:F

    .line 9
    mul-float/2addr v0, v1

    .line 10
    float-to-int v0, v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 16
    move-result v1

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/widget/NicknameView;->roleMarginRatio:F

    .line 19
    mul-float/2addr v1, v2

    .line 20
    float-to-int v1, v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    .line 32
    mul-int/lit8 v3, v0, 0x2

    .line 33
    add-int/2addr v2, v3

    .line 34
    add-int/2addr v2, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    .line 38
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v3}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 46
    move-result v3

    .line 47
    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 49
    add-int/2addr v3, v0

    .line 50
    add-int/2addr v3, v1

    .line 51
    add-int/2addr v2, v3

    .line 52
    :cond_1
    return v2
.end method

.method private getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    move-result v0

    .line 7
    .line 8
    const/high16 v1, 0x3fe00000    # 1.75f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/widget/NicknameView;->badgeScale:F

    .line 12
    mul-float/2addr v0, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    mul-float/2addr v0, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    div-float/2addr v0, p1

    .line 25
    float-to-int p1, v0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    const v1, 0x3ea3d70a    # 0.32f

    .line 35
    mul-float/2addr v0, v1

    .line 36
    float-to-int v0, v0

    .line 37
    add-int/2addr p1, v0

    .line 38
    return p1
.end method

.method private getBageWidth(Landroid/graphics/drawable/Drawable;I)I
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    mul-int/2addr p2, v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 13
    move-result p1

    .line 14
    div-int/2addr p2, p1

    .line 15
    return p2
.end method

.method private getFinalBadgeHeight(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    move-result v0

    .line 7
    .line 8
    const/high16 v1, 0x3fe00000    # 1.75f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/widget/NicknameView;->badgeScale:F

    .line 12
    mul-float/2addr v0, v1

    .line 13
    float-to-int v0, v0

    .line 14
    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpg-float v1, v1, v2

    .line 18
    .line 19
    if-gtz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result v0

    .line 24
    :cond_0
    return v0
.end method

.method private getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p6, p4}, Lcom/narvii/widget/NicknameView;->getBageWidth(Landroid/graphics/drawable/Drawable;I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    sub-int/2addr p2, v0

    .line 12
    .line 13
    :cond_0
    add-int v1, p2, v0

    .line 14
    add-int/2addr p4, p5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p6, p2, p5, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    sub-int/2addr p2, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    add-int/2addr v0, p3

    .line 30
    add-int/2addr p2, v0

    .line 31
    :goto_0
    return p2
.end method

.method private hideInfluencerBadge(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/User;->role:I

    .line 9
    .line 10
    const/16 v1, 0xfe

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0xfd

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method private hideRankingBadge(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/User;->role:I

    .line 9
    .line 10
    const/16 v1, 0xfe

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0xfd

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method private static measureText(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/widget/NicknameView;->MEASURE_CACHE:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Landroid/util/SparseIntArray;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroid/util/SparseIntArray;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    return v1

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 35
    move-result p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result p0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    return p0
.end method

.method private showMembershipBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showUnsubscribeBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isMe:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->allowShowUnsubscribe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showVerifiedBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getNameView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isHideInfluencerBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    return v0
.end method

.method public isHideRankingBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    return v0
.end method

.method public isRtlOrReverse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->rtl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isReverse:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcBadgeSize()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-lez v0, :cond_6

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    const v2, 0x3ea3d70a    # 0.32f

    .line 19
    mul-float/2addr v1, v2

    .line 20
    float-to-int v1, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 32
    move-result v2

    .line 33
    sub-int/2addr v2, v1

    .line 34
    :goto_0
    move v4, v2

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 41
    move-result v2

    .line 42
    add-int/2addr v2, v1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    move-result v2

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2}, Lcom/narvii/widget/NicknameView;->getFinalBadgeHeight(I)I

    .line 51
    move-result v9

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    .line 58
    .line 59
    const v3, 0x3f666666    # 0.9f

    .line 60
    mul-float/2addr v2, v3

    .line 61
    float-to-int v2, v2

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v2}, Lcom/narvii/widget/NicknameView;->getFinalBadgeHeight(I)I

    .line 65
    move-result v10

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 69
    move-result v2

    .line 70
    sub-int/2addr v2, v9

    .line 71
    .line 72
    div-int/lit8 v11, v2, 0x2

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showVerifiedBadge()Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    move-object v2, p0

    .line 82
    move-object v3, p1

    .line 83
    move v5, v1

    .line 84
    move v6, v9

    .line 85
    move v7, v11

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v2 .. v8}, Lcom/narvii/widget/NicknameView;->getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I

    .line 89
    move-result v2

    .line 90
    move v4, v2

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showMembershipBadge()Z

    .line 94
    move-result v2

    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->membershipDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    move-object v2, p0

    .line 100
    move-object v3, p1

    .line 101
    move v5, v1

    .line 102
    move v6, v9

    .line 103
    move v7, v11

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v2 .. v8}, Lcom/narvii/widget/NicknameView;->getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I

    .line 107
    move-result v2

    .line 108
    move v4, v2

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showUnsubscribeBadge()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    move-object v2, p0

    .line 118
    move-object v3, p1

    .line 119
    move v5, v1

    .line 120
    move v6, v9

    .line 121
    move v7, v11

    .line 122
    .line 123
    .line 124
    invoke-direct/range {v2 .. v8}, Lcom/narvii/widget/NicknameView;->getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I

    .line 125
    move-result v4

    .line 126
    .line 127
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    if-eq v1, v2, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 137
    move-result v1

    .line 138
    sub-int/2addr v1, v10

    .line 139
    .line 140
    div-int/lit8 v11, v1, 0x2

    .line 141
    move v9, v10

    .line 142
    .line 143
    :cond_4
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v1, v9}, Lcom/narvii/widget/NicknameView;->getBageWidth(Landroid/graphics/drawable/Drawable;I)I

    .line 147
    move-result v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 151
    move-result v2

    .line 152
    .line 153
    if-eqz v2, :cond_5

    .line 154
    sub-int/2addr v4, v1

    .line 155
    .line 156
    :cond_5
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    add-int/2addr v1, v4

    .line 158
    add-int/2addr v9, v11

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v4, v11, v1, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    .line 163
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    .line 168
    :cond_6
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 172
    move-result v1

    .line 173
    .line 174
    iget v2, p0, Lcom/narvii/widget/NicknameView;->rolePaddingRatio:F

    .line 175
    mul-float/2addr v1, v2

    .line 176
    float-to-int v1, v1

    .line 177
    .line 178
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 182
    move-result v2

    .line 183
    .line 184
    iget v3, p0, Lcom/narvii/widget/NicknameView;->roleMarginRatio:F

    .line 185
    mul-float/2addr v2, v3

    .line 186
    float-to-int v2, v2

    .line 187
    .line 188
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 192
    move-result v3

    .line 193
    .line 194
    iget v4, p0, Lcom/narvii/widget/NicknameView;->roleRadiusRatio:F

    .line 195
    mul-float/2addr v3, v4

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 199
    move-result v4

    .line 200
    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 207
    move-result v4

    .line 208
    sub-int/2addr v4, v0

    .line 209
    goto :goto_2

    .line 210
    .line 211
    :cond_7
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 215
    move-result v4

    .line 216
    add-int/2addr v4, v0

    .line 217
    .line 218
    .line 219
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 220
    move-result v0

    .line 221
    .line 222
    div-int/lit8 v0, v0, 0x2

    .line 223
    int-to-float v0, v0

    .line 224
    .line 225
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 229
    move-result v5

    .line 230
    .line 231
    iget-object v6, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    .line 235
    move-result v6

    .line 236
    add-float/2addr v5, v6

    .line 237
    .line 238
    const/high16 v6, 0x3f000000    # 0.5f

    .line 239
    mul-float/2addr v5, v6

    .line 240
    sub-float/2addr v0, v5

    .line 241
    .line 242
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    move-result v5

    .line 247
    const/4 v6, -0x1

    .line 248
    .line 249
    if-nez v5, :cond_a

    .line 250
    .line 251
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 252
    .line 253
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    invoke-static {v5, v7}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 257
    move-result v5

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 261
    move-result v7

    .line 262
    .line 263
    if-eqz v7, :cond_8

    .line 264
    .line 265
    mul-int/lit8 v7, v1, 0x2

    .line 266
    add-int/2addr v7, v5

    .line 267
    .line 268
    mul-int/lit8 v8, v2, 0x2

    .line 269
    add-int/2addr v7, v8

    .line 270
    sub-int/2addr v4, v7

    .line 271
    .line 272
    :cond_8
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 273
    .line 274
    iget v8, p0, Lcom/narvii/widget/NicknameView;->role1Bg:I

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    .line 279
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 280
    .line 281
    add-int v8, v4, v2

    .line 282
    int-to-float v9, v8

    .line 283
    .line 284
    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 285
    .line 286
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    .line 290
    move-result v9

    .line 291
    add-float/2addr v9, v0

    .line 292
    .line 293
    div-int/lit8 v10, v1, 0x2

    .line 294
    int-to-float v10, v10

    .line 295
    sub-float/2addr v9, v10

    .line 296
    .line 297
    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 298
    .line 299
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 300
    .line 301
    add-int v9, v8, v5

    .line 302
    .line 303
    mul-int/lit8 v11, v1, 0x2

    .line 304
    add-int/2addr v9, v11

    .line 305
    int-to-float v9, v9

    .line 306
    .line 307
    iput v9, v7, Landroid/graphics/RectF;->right:F

    .line 308
    .line 309
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    .line 313
    move-result v9

    .line 314
    add-float/2addr v9, v0

    .line 315
    add-float/2addr v9, v10

    .line 316
    .line 317
    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 318
    .line 319
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 320
    .line 321
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v7, v3, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 325
    .line 326
    iget-boolean v7, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    .line 327
    .line 328
    if-eqz v7, :cond_9

    .line 329
    .line 330
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 331
    .line 332
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v7, v3, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 336
    .line 337
    :cond_9
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    .line 342
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 343
    add-int/2addr v8, v1

    .line 344
    int-to-float v8, v8

    .line 345
    .line 346
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v7, v8, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 353
    move-result v7

    .line 354
    .line 355
    if-nez v7, :cond_a

    .line 356
    add-int/2addr v5, v2

    .line 357
    add-int/2addr v5, v11

    .line 358
    add-int/2addr v4, v5

    .line 359
    .line 360
    :cond_a
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    move-result v5

    .line 365
    .line 366
    if-nez v5, :cond_d

    .line 367
    .line 368
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 369
    .line 370
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    invoke-static {v5, v7}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 374
    move-result v5

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 378
    move-result v7

    .line 379
    .line 380
    if-eqz v7, :cond_b

    .line 381
    .line 382
    mul-int/lit8 v7, v1, 0x2

    .line 383
    add-int/2addr v7, v5

    .line 384
    add-int/2addr v7, v2

    .line 385
    sub-int/2addr v4, v7

    .line 386
    .line 387
    :cond_b
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 388
    .line 389
    iget v8, p0, Lcom/narvii/widget/NicknameView;->role2Bg:I

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    .line 394
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 395
    add-int/2addr v4, v2

    .line 396
    int-to-float v2, v4

    .line 397
    .line 398
    iput v2, v7, Landroid/graphics/RectF;->left:F

    .line 399
    .line 400
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 404
    move-result v2

    .line 405
    add-float/2addr v2, v0

    .line 406
    .line 407
    div-int/lit8 v8, v1, 0x2

    .line 408
    int-to-float v8, v8

    .line 409
    sub-float/2addr v2, v8

    .line 410
    .line 411
    iput v2, v7, Landroid/graphics/RectF;->top:F

    .line 412
    .line 413
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 414
    add-int/2addr v5, v4

    .line 415
    .line 416
    mul-int/lit8 v7, v1, 0x2

    .line 417
    add-int/2addr v5, v7

    .line 418
    int-to-float v5, v5

    .line 419
    .line 420
    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 421
    .line 422
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    .line 426
    move-result v5

    .line 427
    add-float/2addr v5, v0

    .line 428
    add-float/2addr v5, v8

    .line 429
    .line 430
    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 431
    .line 432
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 433
    .line 434
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 438
    .line 439
    iget-boolean v2, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    .line 440
    .line 441
    if-eqz v2, :cond_c

    .line 442
    .line 443
    iget-boolean v2, p0, Lcom/narvii/widget/NicknameView;->showAuthorViewBorder:Z

    .line 444
    .line 445
    if-eqz v2, :cond_c

    .line 446
    .line 447
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 448
    .line 449
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 453
    .line 454
    :cond_c
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    .line 459
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 460
    add-int/2addr v4, v1

    .line 461
    int-to-float v1, v4

    .line 462
    .line 463
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 467
    :cond_d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcRoleSize()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcBadgeSize()I

    .line 10
    move-result p2

    .line 11
    add-int/2addr p1, p2

    .line 12
    .line 13
    iget-boolean p2, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 27
    move-result p2

    .line 28
    sub-int/2addr p4, p2

    .line 29
    sub-int/2addr p4, p1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    move-result p2

    .line 36
    .line 37
    sub-int p2, p4, p2

    .line 38
    .line 39
    div-int/lit8 p5, p5, 0x2

    .line 40
    .line 41
    iget-object p3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result p3

    .line 46
    .line 47
    div-int/lit8 p3, p3, 0x2

    .line 48
    .line 49
    sub-int p3, p5, p3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    move-result v0

    .line 56
    .line 57
    div-int/lit8 v0, v0, 0x2

    .line 58
    add-int/2addr p5, v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 66
    move-result p2

    .line 67
    add-int/2addr p2, p1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 70
    .line 71
    div-int/lit8 p5, p5, 0x2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    move-result p3

    .line 76
    .line 77
    div-int/lit8 p3, p3, 0x2

    .line 78
    .line 79
    sub-int p3, p5, p3

    .line 80
    .line 81
    iget-object p4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    move-result p4

    .line 86
    add-int/2addr p4, p2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    move-result v0

    .line 93
    .line 94
    div-int/lit8 v0, v0, 0x2

    .line 95
    add-int/2addr p5, v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 99
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcRoleSize()I

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcBadgeSize()I

    .line 27
    move-result v5

    .line 28
    add-int/2addr v4, v5

    .line 29
    .line 30
    iget-boolean v5, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x2

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    move v5, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v5, v6

    .line 38
    :goto_0
    mul-int/2addr v5, v4

    .line 39
    .line 40
    sub-int v5, v0, v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    move-result v8

    .line 45
    sub-int/2addr v5, v8

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    move-result v8

    .line 50
    sub-int/2addr v5, v8

    .line 51
    const/4 v8, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 55
    move-result v5

    .line 56
    .line 57
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    const/high16 p1, -0x80000000

    .line 63
    .line 64
    .line 65
    invoke-static {v5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    move-result p1

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 70
    move-result v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 74
    move-result v9

    .line 75
    add-int/2addr v5, v9

    .line 76
    const/4 v9, -0x2

    .line 77
    .line 78
    .line 79
    invoke-static {p2, v5, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 80
    move-result p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, p1, p2}, Landroid/view/View;->measure(II)V

    .line 84
    .line 85
    const/high16 p1, 0x40000000    # 2.0f

    .line 86
    .line 87
    if-ne v1, p1, :cond_2

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    move-result p2

    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    move v6, v7

    .line 100
    :cond_3
    mul-int/2addr v4, v6

    .line 101
    add-int/2addr p2, v4

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 105
    move-result v0

    .line 106
    add-int/2addr p2, v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 110
    move-result v0

    .line 111
    add-int/2addr v0, p2

    .line 112
    .line 113
    :goto_2
    if-ne v3, p1, :cond_4

    .line 114
    goto :goto_3

    .line 115
    .line 116
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 120
    move-result p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 124
    move-result p2

    .line 125
    add-int/2addr p1, p2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 129
    move-result p2

    .line 130
    .line 131
    add-int v2, p1, p2

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 135
    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 10
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, -0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    return-void
.end method

.method public setHideInfluencerBadge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge:Z

    return-void
.end method

.method public setHideMembershipBadge(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setHideRankingBadge(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    :cond_0
    return-void
.end method

.method public setHideVerifiedBadge(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setMembership(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    return-void
.end method

.method public setRankingBadge(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/NicknameView;->useBigBadge:Z

    if-eqz v1, :cond_1

    .line 1
    invoke-virtual {v0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setRankingBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRankingService(Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->isReverse:Z

    return-void
.end method

.method public setRole1(Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/NicknameView;->role1Bg:I

    .line 11
    .line 12
    if-ne v0, p2, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 16
    .line 17
    iput p2, p0, Lcom/narvii/widget/NicknameView;->role1Bg:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 21
    return-void
.end method

.method public setRole2(Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/NicknameView;->role2Bg:I

    .line 11
    .line 12
    if-ne v0, p2, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 16
    .line 17
    iput p2, p0, Lcom/narvii/widget/NicknameView;->role2Bg:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 21
    return-void
.end method

.method public setShowAuthorViewBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->showAuthorViewBorder:Z

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    int-to-float p1, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/User;->nicknameForCatalog()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/narvii/widget/NicknameView;->hideRole:Z

    if-eqz p2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, v0

    :goto_2
    const/4 v1, 0x0

    if-nez p1, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/User;->roleColor()I

    move-result v2

    :goto_3
    invoke-virtual {p0, p2, v2}, Lcom/narvii/widget/NicknameView;->setRole1(Ljava/lang/String;I)V

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/User;->isNicknameVerified()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, p2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/narvii/widget/NicknameView;->isVerified:Z

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, p2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    const-string v3, "account"

    .line 7
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move p2, v1

    :goto_6
    iput-boolean p2, p0, Lcom/narvii/widget/NicknameView;->isMe:Z

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-direct {p0, p1}, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 11
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->addInfluencerBadge()V

    goto :goto_7

    .line 12
    :cond_9
    invoke-direct {p0, p1}, Lcom/narvii/widget/NicknameView;->hideRankingBadge(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_a

    iget v1, p1, Lcom/narvii/model/User;->level:I

    :cond_a
    invoke-virtual {p0, v1}, Lcom/narvii/widget/NicknameView;->setRankingBadge(I)V

    .line 13
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
