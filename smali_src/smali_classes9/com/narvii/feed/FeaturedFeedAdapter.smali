.class public Lcom/narvii/feed/FeaturedFeedAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# static fields
.field public static final DISPLAY_MODE_0:I = 0x1

.field public static final DISPLAY_MODE_1:I = 0x2

.field public static final DISPLAY_MODE_2:I = 0x3

.field public static final DISPLAY_MODE_3:I = 0x4

.field public static final DISPLAY_MODE_4:I = 0x5

.field public static final DISPLAY_MODE_5:I = 0x6

.field private static FEATURE_TYPE_FULLSCREEN_IMAGE:I = 0x8

.field private static FEATURE_TYPE_FULLSCREEN_TEXT:I = 0x9

.field private static FEATURE_TYPE_MIDDLE_IMAGE:I = 0x5

.field private static FEATURE_TYPE_MIDDLE_TEXT:I = 0x6

.field private static FEATURE_TYPE_NORMAL_IMAGE:I = 0x2

.field private static FEATURE_TYPE_NORMAL_TEXT:I = 0x3

.field private static FEATURE_TYPE_PIN:I = 0x4

.field private static FEATURE_TYPE_TOP_IMAGE:I = 0x0

.field private static FEATURE_TYPE_TOP_SEPARATE_IMAGE:I = 0xa

.field private static FEATURE_TYPE_TOP_TEXT:I = 0x1

.field private static MIDDLE_FEED_COUNT:I = 0x2

.field private static RATIO_DEFAULT:F = 0.97f

.field private static RATIO_MODE_2:F = 1.26f

.field private static RATIO_MODE_3:F = 0.51f

.field private static RATIO_NORMAL:F = 0.65f

.field private static VIEW_TYPE_COUNT_MODE_3:I = 0xb

.field private static VIEW_TYPE_COUNT_NORMAL:I = 0xb


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field configService:Lcom/narvii/config/ConfigService;

.field public containPinFeed:Z

.field protected displayMode:I

.field public featureLoadFinished:Z

.field public featureStartIndex:I

.field feedHelper:Lcom/narvii/feed/FeedHelper;

.field protected firstRequest:Z

.field private oldLayout:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 14
    .line 15
    const-string p1, "config"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    const-string p1, "account"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    .line 38
    .line 39
    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iput p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 43
    .line 44
    iput p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    .line 45
    :goto_0
    return-void
.end method

.method private changeLine(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private combineContentAndTitle(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private configFeatureLayout(Lcom/narvii/feed/PopularFeedListItem;ILcom/narvii/model/Feed;)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v14, p1

    .line 5
    .line 6
    move/from16 v15, p2

    .line 7
    .line 8
    move-object/from16 v13, p3

    .line 9
    .line 10
    if-nez v14, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenWidth()F

    .line 15
    move-result v1

    .line 16
    .line 17
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_NORMAL:F

    .line 18
    mul-float/2addr v2, v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getRatio()F

    .line 28
    move-result v2

    .line 29
    mul-float/2addr v2, v1

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    cmpg-float v4, v1, v3

    .line 33
    .line 34
    if-ltz v4, :cond_1

    .line 35
    .line 36
    cmpg-float v3, v2, v3

    .line 37
    .line 38
    if-gez v3, :cond_2

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenWidth()F

    .line 42
    move-result v1

    .line 43
    .line 44
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_NORMAL:F

    .line 45
    mul-float/2addr v2, v1

    .line 46
    .line 47
    :cond_2
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .line 48
    float-to-int v1, v1

    .line 49
    float-to-int v2, v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v14, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 59
    const/4 v3, -0x1

    .line 60
    float-to-int v2, v2

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v14, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getPinCount()I

    .line 70
    move-result v1

    .line 71
    const/4 v12, 0x0

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    if-ne v1, v13, :cond_4

    .line 84
    .line 85
    sget v1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 86
    .line 87
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_4
    sget v1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    .line 101
    move-result v1

    .line 102
    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    iget-object v1, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_5
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    instance-of v2, v1, Lcom/narvii/list/NVListFragment;

    .line 118
    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    check-cast v1, Lcom/narvii/list/NVListFragment;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    goto :goto_2

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    const v2, 0x7f08016a

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    :goto_2
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showTitle(I)Z

    .line 153
    move-result v4

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showContent(I)Z

    .line 157
    move-result v5

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->combineContentAndTitle(I)Z

    .line 161
    move-result v6

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showReadMore(I)Z

    .line 165
    move-result v7

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showBlogTypeIcon(I)Z

    .line 169
    move-result v8

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->getRelativeSize(I)F

    .line 173
    move-result v9

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->changeLine(I)Z

    .line 177
    move-result v10

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v15, v13}, Lcom/narvii/feed/FeaturedFeedAdapter;->showDivider(ILcom/narvii/model/Feed;)Z

    .line 181
    move-result v11

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->getFontSize(I)I

    .line 185
    move-result v16

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->getMaxLines(I)I

    .line 189
    move-result v17

    .line 190
    .line 191
    move-object/from16 v1, p1

    .line 192
    .line 193
    move-object/from16 v3, p3

    .line 194
    .line 195
    move/from16 v18, v12

    .line 196
    .line 197
    move/from16 v12, v16

    .line 198
    move-object v14, v13

    .line 199
    .line 200
    move/from16 v13, v17

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {v1 .. v13}, Lcom/narvii/feed/PopularFeedListItem;->setFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZZZZFZZII)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v15, v14}, Lcom/narvii/feed/FeaturedFeedAdapter;->isDarkTheme(ILcom/narvii/model/Feed;)Z

    .line 207
    move-result v1

    .line 208
    .line 209
    move-object/from16 v2, p1

    .line 210
    move-object v3, v14

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v1}, Lcom/narvii/feed/PopularFeedListItem;->setDarkTheme(Z)V

    .line 214
    .line 215
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 216
    .line 217
    if-eqz v1, :cond_7

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {p3 .. p3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 221
    move-result-object v4

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 225
    move-result v1

    .line 226
    .line 227
    if-eqz v1, :cond_7

    .line 228
    const/4 v12, 0x1

    .line 229
    goto :goto_3

    .line 230
    .line 231
    :cond_7
    move/from16 v12, v18

    .line 232
    .line 233
    .line 234
    :goto_3
    invoke-virtual {v2, v12}, Lcom/narvii/feed/PopularFeedListItem;->setProgress(Z)V

    .line 235
    .line 236
    .line 237
    const v1, 0x7f0a058e

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    const v1, 0x7f0a0589

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    move-result-object v1

    .line 261
    .line 262
    if-eqz v1, :cond_9

    .line 263
    .line 264
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    :cond_9
    const v1, 0x7f0a058c

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    move-result-object v1

    .line 275
    .line 276
    if-eqz v1, :cond_b

    .line 277
    .line 278
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 285
    move-result v4

    .line 286
    .line 287
    if-eqz v4, :cond_a

    .line 288
    .line 289
    move/from16 v12, v18

    .line 290
    goto :goto_4

    .line 291
    .line 292
    :cond_a
    const/16 v12, 0x8

    .line 293
    .line 294
    .line 295
    :goto_4
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    :cond_b
    const v1, 0x7f0a058b

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    move-result-object v1

    .line 303
    .line 304
    instance-of v4, v1, Landroid/widget/ImageView;

    .line 305
    .line 306
    if-eqz v4, :cond_d

    .line 307
    .line 308
    .line 309
    invoke-direct {v0, v15, v3}, Lcom/narvii/feed/FeaturedFeedAdapter;->isDarkTheme(ILcom/narvii/model/Feed;)Z

    .line 310
    move-result v4

    .line 311
    .line 312
    if-eqz v4, :cond_c

    .line 313
    .line 314
    check-cast v1, Landroid/widget/ImageView;

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 318
    move-result-object v4

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 322
    move-result-object v4

    .line 323
    .line 324
    .line 325
    const v5, 0x7f08040e

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 329
    move-result-object v4

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    goto :goto_5

    .line 334
    .line 335
    :cond_c
    check-cast v1, Landroid/widget/ImageView;

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 339
    move-result-object v4

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 343
    move-result-object v4

    .line 344
    .line 345
    .line 346
    const v5, 0x7f08040a

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 350
    move-result-object v4

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    .line 355
    .line 356
    :cond_d
    :goto_5
    const v1, 0x7f0a0f36

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    move-result-object v1

    .line 361
    .line 362
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 363
    .line 364
    if-eqz v1, :cond_e

    .line 365
    .line 366
    instance-of v2, v3, Lcom/narvii/model/Item;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUsedForWiki(Z)V

    .line 370
    .line 371
    iget-object v2, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 375
    :cond_e
    return-void
.end method

.method private getLayoutId(I)I
    .locals 1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f0d0254

    goto :goto_2

    :cond_2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_SEPARATE_IMAGE:I

    if-ne p1, v0, :cond_3

    const p1, 0x7f0d0256

    goto :goto_2

    :cond_3
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-ne p1, v0, :cond_4

    const p1, 0x7f0d0257

    goto :goto_2

    :cond_4
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    if-ne p1, v0, :cond_5

    const p1, 0x7f0d025d

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_0
    const p1, 0x7f0d027c

    goto :goto_2

    :cond_7
    :goto_1
    const p1, 0x7f0d027b

    :goto_2
    return p1
.end method

.method private getRatio()F
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_MODE_3:F

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    const/4 v1, 0x6

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x3

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_MODE_2:F

    .line 21
    return v0

    .line 22
    .line 23
    :cond_2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_DEFAULT:F

    .line 24
    return v0

    .line 25
    .line 26
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 47
    move-result v2

    .line 48
    add-int/2addr v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    move v0, v1

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-direct {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenWidth()F

    .line 54
    move-result v2

    .line 55
    move v3, v1

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 63
    move-result v4

    .line 64
    .line 65
    if-ge v1, v4, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    check-cast v4, Lcom/narvii/model/Feed;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/narvii/model/Feed;->featureType()I

    .line 79
    move-result v4

    .line 80
    const/4 v5, 0x2

    .line 81
    .line 82
    if-ne v4, v5, :cond_5

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    int-to-float v1, v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 100
    move-result-object v4

    .line 101
    const/4 v5, 0x1

    .line 102
    .line 103
    const/high16 v6, 0x41d40000    # 26.5f

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 107
    move-result v4

    .line 108
    mul-float/2addr v1, v4

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenHeight()F

    .line 112
    move-result v4

    .line 113
    int-to-float v0, v0

    .line 114
    sub-float/2addr v4, v0

    .line 115
    sub-float/2addr v4, v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Lcom/narvii/feed/FeaturedFeedAdapter;->getFullScreenOffset(I)I

    .line 119
    move-result v0

    .line 120
    int-to-float v0, v0

    .line 121
    sub-float/2addr v4, v0

    .line 122
    div-float/2addr v4, v2

    .line 123
    return v4
.end method

.method private getRelativeSize(I)F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    const p1, 0x3f333333    # 0.7f

    .line 16
    return p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    .line 25
    const p1, 0x3f428f5c    # 0.76f

    .line 26
    return p1

    .line 27
    .line 28
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    return p1
.end method

.method private getScreenHeight()F
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Point;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 29
    .line 30
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 31
    int-to-float v0, v0

    .line 32
    return v0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    const/high16 v2, 0x44800000    # 1024.0f

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method private getScreenWidth()F
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Point;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 29
    .line 30
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 31
    int-to-float v0, v0

    .line 32
    return v0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    const/high16 v2, 0x44480000    # 800.0f

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method private isDarkTheme(ILcom/narvii/model/Feed;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    sget p2, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    .line 11
    .line 12
    if-eq p1, p2, :cond_2

    .line 13
    .line 14
    sget p2, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    .line 15
    .line 16
    if-eq p1, p2, :cond_2

    .line 17
    .line 18
    sget p2, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    .line 19
    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_2
    :goto_0
    return v0
.end method

.method private isImageFeed(I)Z
    .locals 1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isLastMiddleCell(Lcom/narvii/model/Feed;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 7
    .line 8
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->MIDDLE_FEED_COUNT:I

    .line 9
    .line 10
    add-int v3, v1, v2

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    if-le v0, v3, :cond_0

    .line 14
    add-int/2addr v1, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    return v4

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 25
    move-result v0

    .line 26
    sub-int/2addr v0, v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    return v4

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method private isMiddleCell(Lcom/narvii/model/Feed;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->MIDDLE_FEED_COUNT:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 9
    add-int/2addr v2, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    add-int/2addr v2, v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 15
    move-result v4

    .line 16
    .line 17
    if-ge v2, v4, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    return v3

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method private isTopFeed(I)Z
    .locals 1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private showAllContent(I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method private showBlogTypeIcon(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private showContent(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method private showDivider(ILcom/narvii/model/Feed;)Z
    .locals 1

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 3
    const/4 v0, 0x4

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeaturedFeedAdapter;->isLastMiddleCell(Lcom/narvii/model/Feed;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method private showReadMore(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private showTitle(I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/feed/featured"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->firstRequest:Z

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    const/4 p2, 0x0

    .line 10
    move v0, p2

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/model/Feed;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->featureType()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/model/Feed;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-ne v0, v2, :cond_1

    .line 46
    :cond_0
    const/4 p2, 0x1

    .line 47
    .line 48
    :cond_1
    iput-boolean p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->containPinFeed:Z

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "FeaturedList"

    return-object v0
.end method

.method public getFontSize(I)I
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0701b6

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0701b4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0701b3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0701b2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public getFullScreenOffset(I)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    const v0, 0x7f070414

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 3

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    .line 12
    return p1

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Blog;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    move-object p1, v0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    .line 35
    :goto_0
    iget v1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x4

    .line 41
    .line 42
    if-ne p1, v1, :cond_b

    .line 43
    .line 44
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 45
    const/4 v1, 0x3

    .line 46
    .line 47
    if-ne p1, v1, :cond_4

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_SEPARATE_IMAGE:I

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_3
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    .line 55
    :goto_1
    return p1

    .line 56
    .line 57
    :cond_4
    if-ne p1, v2, :cond_6

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_5
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    .line 65
    :goto_2
    return p1

    .line 66
    :cond_6
    const/4 v1, 0x5

    .line 67
    .line 68
    if-eq p1, v1, :cond_9

    .line 69
    const/4 v1, 0x6

    .line 70
    .line 71
    if-ne p1, v1, :cond_7

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_7
    if-eqz v0, :cond_8

    .line 75
    .line 76
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_8
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    .line 80
    :goto_3
    return p1

    .line 81
    .line 82
    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 83
    .line 84
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    .line 85
    goto :goto_5

    .line 86
    .line 87
    :cond_a
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    .line 88
    :goto_5
    return p1

    .line 89
    .line 90
    .line 91
    :cond_b
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isMiddleCell(Lcom/narvii/model/Feed;)Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-eqz p1, :cond_d

    .line 95
    .line 96
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 97
    .line 98
    if-ne p1, v2, :cond_d

    .line 99
    .line 100
    if-eqz v0, :cond_c

    .line 101
    .line 102
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    .line 103
    goto :goto_6

    .line 104
    .line 105
    :cond_c
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    .line 106
    :goto_6
    return p1

    .line 107
    .line 108
    :cond_d
    if-eqz v0, :cond_e

    .line 109
    .line 110
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_e
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    .line 114
    :goto_7
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 2

    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->VIEW_TYPE_COUNT_MODE_3:I

    return v0

    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->VIEW_TYPE_COUNT_NORMAL:I

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Feed;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->getItemType(Ljava/lang/Object;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getLayoutId(I)I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    return-object v1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/Feed;

    .line 28
    .line 29
    instance-of p3, p1, Lcom/narvii/model/Blog;

    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    move-object p3, p1

    .line 33
    .line 34
    check-cast p3, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    iget-object p3, p3, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    move-object p1, p3

    .line 40
    .line 41
    :cond_2
    sget p3, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    .line 42
    .line 43
    if-ne v0, p3, :cond_8

    .line 44
    .line 45
    .line 46
    const p3, 0x7f0a0021

    .line 47
    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const p3, 0x7f0a0e9e

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    check-cast p3, Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a044f

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    if-eqz p3, :cond_6

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    instance-of v1, p1, Lcom/narvii/model/Blog;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/model/Blog;

    .line 86
    .line 87
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    .line 88
    const/4 v1, 0x7

    .line 89
    .line 90
    if-ne p1, v1, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    const v1, 0x7f120f31

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    const v1, 0x7f121211

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_4
    instance-of v1, p1, Lcom/narvii/model/Blog;

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    check-cast p1, Lcom/narvii/model/Blog;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    goto :goto_0

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 150
    move-result p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    .line 155
    const/high16 p1, 0x3f400000    # 0.75f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 159
    .line 160
    :cond_7
    iget-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    goto :goto_4

    .line 169
    .line 170
    .line 171
    :cond_8
    const p3, 0x7f0a057b

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object p3

    .line 176
    .line 177
    check-cast p3, Lcom/narvii/feed/PopularFeedListItem;

    .line 178
    .line 179
    if-eqz p3, :cond_a

    .line 180
    .line 181
    .line 182
    const v2, 0x7f0a06eb

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 186
    move-result v1

    .line 187
    .line 188
    if-nez v1, :cond_9

    .line 189
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :goto_2
    move-object v3, v1

    .line 195
    goto :goto_3

    .line 196
    :cond_9
    const/4 v1, 0x0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 200
    move-result-object v1

    .line 201
    goto :goto_2

    .line 202
    :goto_3
    const/4 v4, 0x0

    .line 203
    const/4 v6, 0x1

    .line 204
    const/4 v7, 0x0

    .line 205
    move-object v1, p3

    .line 206
    move-object v5, p1

    .line 207
    .line 208
    .line 209
    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p3, v0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->configFeatureLayout(Lcom/narvii/feed/PopularFeedListItem;ILcom/narvii/model/Feed;)V

    .line 213
    :cond_a
    :goto_4
    return-object p2
.end method

.method public getMaxLines(I)I
    .locals 3

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    const/4 v1, 0x3

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    const/4 v2, 0x6

    if-eq p1, v0, :cond_3

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_SEPARATE_IMAGE:I

    if-ne p1, v0, :cond_4

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    if-ne p1, v0, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    if-ne p1, v0, :cond_7

    const/16 v1, 0xb

    :cond_7
    :goto_1
    return v1
.end method

.method public getPinCount()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    move v0, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/model/Feed;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->featureType()I

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v0
.end method

.method public getTopCellCount()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    move v0, v1

    .line 10
    move v2, v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v0, v3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/model/Feed;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->featureType()I

    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 45
    const/4 v3, 0x4

    .line 46
    .line 47
    if-ne v0, v3, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    move-result v0

    .line 56
    sub-int/2addr v0, v2

    .line 57
    const/4 v1, 0x3

    .line 58
    .line 59
    if-le v0, v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    move-result v0

    .line 69
    .line 70
    sub-int v1, v0, v2

    .line 71
    :goto_1
    return v1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    move-result v0

    .line 80
    sub-int/2addr v0, v2

    .line 81
    .line 82
    if-lez v0, :cond_4

    .line 83
    const/4 v1, 0x1

    .line 84
    :cond_4
    return v1
.end method

.method protected ignoreExtension()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onErrorRetry()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->resetList()V

    .line 4
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->firstRequest:Z

    .line 16
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "new"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 29
    :cond_1
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->firstRequest:Z

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->pageSize()I

    .line 27
    move-result p2

    .line 28
    .line 29
    if-ge p1, p2, :cond_0

    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    .line 34
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 40
    move-result p2

    .line 41
    or-int/2addr p1, p2

    .line 42
    .line 43
    iput-boolean p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->getItemType(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    const-string v0, "pinned"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    return-object p2
.end method

.method public resetList()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 7
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/narvii/feed/FeaturedResponse;

    return-object v0
.end method

.method public setDisplayMode(I)V
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    :goto_0
    return-void
.end method
