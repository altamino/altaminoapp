.class public Lcom/narvii/feed/FeaturedFeedAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "FeaturedFeedAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


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

    .line 97
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    .line 98
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    const-string p1, "config"

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "account"

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->accountService:Lcom/narvii/account/AccountService;

    if-nez p2, :cond_0

    .line 102
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    goto :goto_0

    .line 104
    :cond_0
    iput p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 105
    iput p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v13, p3

    if-nez v14, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenWidth()F

    move-result v1

    .line 344
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_NORMAL:F

    mul-float v2, v2, v1

    .line 345
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getRatio()F

    move-result v2

    mul-float v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 348
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenWidth()F

    move-result v1

    .line 349
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_NORMAL:F

    mul-float v2, v2, v1

    .line 351
    :cond_2
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-direct {v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 353
    :cond_3
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    float-to-int v2, v2

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getPinCount()I

    move-result v1

    const/16 v16, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_4

    .line 357
    sget v1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 359
    :cond_4
    sget v1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 362
    :goto_1
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_6

    .line 363
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    .line 364
    iget-object v1, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {v1}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 366
    :cond_5
    iget-object v1, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {v1}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 369
    :cond_6
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v3, v1, Lcom/narvii/list/NVListFragment;

    if-eqz v3, :cond_8

    .line 370
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_7

    .line 371
    check-cast v1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 373
    :cond_7
    check-cast v1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 376
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f0800da

    if-lt v1, v2, :cond_9

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 379
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :goto_2
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showTitle(I)Z

    move-result v4

    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showContent(I)Z

    move-result v5

    .line 385
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->combineContentAndTitle(I)Z

    move-result v6

    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showReadMore(I)Z

    move-result v7

    .line 386
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->showBlogTypeIcon(I)Z

    move-result v8

    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->getRelativeSize(I)F

    move-result v9

    .line 387
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->changeLine(I)Z

    move-result v10

    invoke-direct {v0, v15, v13}, Lcom/narvii/feed/FeaturedFeedAdapter;->showDivider(ILcom/narvii/model/Feed;)Z

    move-result v11

    invoke-virtual {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->getFontSize(I)I

    move-result v17

    invoke-virtual {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->getMaxLines(I)I

    move-result v18

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    const/16 v19, 0x0

    move/from16 v12, v17

    move-object v14, v13

    move/from16 v13, v18

    .line 384
    invoke-virtual/range {v1 .. v13}, Lcom/narvii/feed/PopularFeedListItem;->setFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZZZZFZZII)V

    .line 388
    invoke-direct {v0, v15, v14}, Lcom/narvii/feed/FeaturedFeedAdapter;->isDarkTheme(ILcom/narvii/model/Feed;)Z

    move-result v1

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-virtual {v2, v1}, Lcom/narvii/feed/PopularFeedListItem;->setDarkTheme(Z)V

    .line 389
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    if-eqz v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v1}, Lcom/narvii/feed/PopularFeedListItem;->setProgress(Z)V

    const v1, 0x7f090457

    .line 391
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 393
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_b
    const v1, 0x7f090452

    .line 396
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 398
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const v1, 0x7f090455

    .line 400
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 402
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-direct {v0, v15}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v12, 0x0

    goto :goto_4

    :cond_d
    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const v1, 0x7f090454

    .line 405
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 406
    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_10

    .line 407
    invoke-direct {v0, v15, v3}, Lcom/narvii/feed/FeaturedFeedAdapter;->isDarkTheme(ILcom/narvii/model/Feed;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 408
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080304

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 410
    :cond_f
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    :goto_5
    const v1, 0x7f090c10

    .line 414
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v1, :cond_11

    .line 416
    instance-of v2, v3, Lcom/narvii/model/Item;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUsedForWiki(Z)V

    .line 417
    iget-object v2, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_11
    return-void
.end method

.method private getLayoutId(I)I
    .locals 1

    .line 319
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 327
    :cond_1
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f0b0227

    goto :goto_2

    .line 329
    :cond_2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_SEPARATE_IMAGE:I

    if-ne p1, v0, :cond_3

    const p1, 0x7f0b0229

    goto :goto_2

    .line 331
    :cond_3
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-ne p1, v0, :cond_4

    const p1, 0x7f0b022a

    goto :goto_2

    .line 333
    :cond_4
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    if-ne p1, v0, :cond_5

    const p1, 0x7f0b0230

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_0
    const p1, 0x7f0b0252

    goto :goto_2

    :cond_7
    :goto_1
    const p1, 0x7f0b0251

    :goto_2
    return p1
.end method

.method private getRatio()F
    .locals 7

    .line 423
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 424
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_MODE_3:F

    return v0

    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 444
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_MODE_2:F

    return v0

    .line 446
    :cond_2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->RATIO_DEFAULT:F

    return v0

    .line 427
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 428
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 430
    :goto_1
    invoke-direct {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenWidth()F

    move-result v2

    const/4 v3, 0x0

    .line 433
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 434
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Feed;

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->featureType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    int-to-float v1, v3

    const/high16 v4, 0x41d40000    # 26.5f

    .line 440
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    mul-float v1, v1, v4

    .line 441
    invoke-direct {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getScreenHeight()F

    move-result v4

    int-to-float v0, v0

    sub-float/2addr v4, v0

    sub-float/2addr v4, v1

    invoke-virtual {p0, v3}, Lcom/narvii/feed/FeaturedFeedAdapter;->getFullScreenOffset(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    div-float/2addr v4, v2

    return v4
.end method

.method private getRelativeSize(I)F
    .locals 1

    .line 522
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x3f333333    # 0.7f

    return p1

    .line 524
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x3f428f5c    # 0.76f

    return p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method private getScreenHeight()F
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 559
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 561
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 562
    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x44800000    # 1024.0f

    .line 564
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getScreenWidth()F
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 549
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 550
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 551
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 552
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x44480000    # 800.0f

    .line 554
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private isDarkTheme(ILcom/narvii/model/Feed;)Z
    .locals 1

    .line 450
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 453
    :cond_0
    sget p2, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    if-eq p1, p2, :cond_2

    sget p2, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    if-eq p1, p2, :cond_2

    sget p2, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private isImageFeed(I)Z
    .locals 1

    .line 463
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

    .line 304
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->MIDDLE_FEED_COUNT:I

    add-int v3, v1, v2

    const/4 v4, 0x1

    if-le v0, v3, :cond_0

    add-int/2addr v1, v2

    .line 305
    invoke-virtual {p0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return v4

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return v4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isMiddleCell(Lcom/narvii/model/Feed;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 294
    :goto_0
    sget v2, Lcom/narvii/feed/FeaturedFeedAdapter;->MIDDLE_FEED_COUNT:I

    if-ge v1, v2, :cond_1

    .line 295
    iget v2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    add-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 296
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isTopFeed(I)Z
    .locals 1

    .line 473
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

    .line 481
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private showBlogTypeIcon(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private showContent(I)Z
    .locals 1

    .line 507
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private showDivider(ILcom/narvii/model/Feed;)Z
    .locals 1

    .line 607
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/narvii/feed/FeaturedFeedAdapter;->isLastMiddleCell(Lcom/narvii/model/Feed;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private showReadMore(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private showTitle(I)Z
    .locals 2

    .line 497
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isImageFeed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 137
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/feed/featured"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 277
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 278
    iget-boolean p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->firstRequest:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 280
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 281
    iput v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 282
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    if-nez v0, :cond_0

    .line 283
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->containPinFeed:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    .line 614
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    if-ne p1, v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070149

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 618
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isTopFeed(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 619
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 621
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070146

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 615
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070145

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getFullScreenOffset(I)I
    .locals 2

    .line 600
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070200

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 3

    .line 173
    check-cast p1, Lcom/narvii/model/Feed;

    .line 174
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 175
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    return p1

    .line 177
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_1

    move-object p1, v0

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 182
    :goto_0
    iget v1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    invoke-virtual {p0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    if-ne p1, v1, :cond_b

    .line 183
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    if-eqz v0, :cond_3

    .line 184
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_SEPARATE_IMAGE:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    :goto_1
    return p1

    :cond_4
    if-ne p1, v2, :cond_6

    if-eqz v0, :cond_5

    .line 186
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    goto :goto_2

    :cond_5
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    :goto_2
    return p1

    :cond_6
    const/4 v1, 0x5

    if-eq p1, v1, :cond_9

    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 190
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    goto :goto_3

    :cond_8
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    :goto_3
    return p1

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 188
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    goto :goto_5

    :cond_a
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    :goto_5
    return p1

    .line 192
    :cond_b
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->isMiddleCell(Lcom/narvii/model/Feed;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    if-ne p1, v2, :cond_d

    if-eqz v0, :cond_c

    .line 193
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    goto :goto_6

    :cond_c
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    :goto_6
    return p1

    :cond_d
    if-eqz v0, :cond_e

    .line 195
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    goto :goto_7

    :cond_e
    sget p1, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    :goto_7
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 2

    .line 254
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 255
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->VIEW_TYPE_COUNT_MODE_3:I

    return v0

    .line 257
    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->VIEW_TYPE_COUNT_NORMAL:I

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 203
    instance-of v0, p1, Lcom/narvii/model/Feed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    .line 205
    invoke-direct {p0, v0}, Lcom/narvii/feed/FeaturedFeedAdapter;->getLayoutId(I)I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 208
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 210
    check-cast p1, Lcom/narvii/model/Feed;

    .line 211
    instance-of p3, p1, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/narvii/model/Blog;

    iget-object p3, p3, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz p3, :cond_2

    move-object p1, p3

    .line 215
    :cond_2
    sget p3, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    if-ne v0, p3, :cond_9

    const p3, 0x7f090015

    const/4 v0, 0x1

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p3, 0x7f090b9a

    .line 217
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090366

    .line 218
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_6

    .line 220
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    instance-of v1, p1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0e06

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f1107

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
    :cond_4
    instance-of v1, p1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 231
    iget-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 232
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 234
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p1, p3, :cond_8

    .line 235
    iget-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p1}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 237
    :cond_8
    iget-object p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p1}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_9
    const p3, 0x7f090444

    .line 240
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/feed/PopularFeedListItem;

    if-eqz p3, :cond_b

    const v2, 0x7f090571

    .line 243
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v1

    :goto_2
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p3

    move-object v5, p1

    .line 242
    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 245
    invoke-direct {p0, p3, v0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->configFeatureLayout(Lcom/narvii/feed/PopularFeedListItem;ILcom/narvii/model/Feed;)V

    :cond_b
    :goto_3
    return-object p2
.end method

.method public getMaxLines(I)I
    .locals 3

    .line 627
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_IMAGE:I

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq p1, v0, :cond_6

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_IMAGE:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_IMAGE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_TEXT:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_MIDDLE_TEXT:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 634
    :cond_1
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_IMAGE:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 636
    :cond_2
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_TOP_SEPARATE_IMAGE:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 638
    :cond_3
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_NORMAL_TEXT:I

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 640
    :cond_4
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    .line 642
    :cond_5
    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_FULLSCREEN_TEXT:I

    if-ne p1, v0, :cond_6

    const/16 v1, 0xb

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x3

    :cond_7
    :goto_1
    return v1
.end method

.method public getPinCount()I
    .locals 4

    .line 586
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 587
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->featureType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTopCellCount()I
    .locals 5

    .line 570
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 571
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->featureType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_1
    iget v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 579
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, v2

    :goto_1
    return v1

    .line 581
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    const/4 v1, 0x1

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

    .line 150
    invoke-virtual {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->resetList()V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 272
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->firstRequest:Z

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 161
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 3
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

    .line 262
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->firstRequest:Z

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 264
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->pageSize()I

    move-result p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 265
    iget-boolean p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 266
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    sget v0, Lcom/narvii/feed/FeaturedFeedAdapter;->FEATURE_TYPE_PIN:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "pinned"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p2
.end method

.method public resetList()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 145
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

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

    .line 132
    const-class v0, Lcom/narvii/feed/FeaturedResponse;

    return-object v0
.end method

.method public setDisplayMode(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 118
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    goto :goto_0

    .line 120
    :cond_0
    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 121
    iput p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->oldLayout:I

    :goto_0
    return-void
.end method
