.class Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "CheckInRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/CheckInRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckInListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/CheckInRanking;",
        ">;"
    }
.end annotation


# instance fields
.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;"
        }
    .end annotation
.end field

.field oList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V
    .locals 1

    .line 232
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 233
    const-class v0, Lcom/narvii/model/CheckInRanking;

    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method private configCellUI(Lcom/narvii/model/CheckInRanking;Landroid/view/View;)V
    .locals 8

    .line 453
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    .line 454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->oList:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 461
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->getCellDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f080794

    const v4, 0x7f0701ac

    if-nez v0, :cond_4

    const v3, 0x7f080796

    const v4, 0x7f0701ae

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    const v3, 0x7f080795

    const v4, 0x7f0701ad

    .line 471
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v4, 0x7f090c21

    .line 473
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 475
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    float-to-int v0, v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 476
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f090a8e

    .line 480
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 482
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const v0, 0x7f090b9a

    .line 485
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 486
    iget-object v0, p1, Lcom/narvii/model/CheckInRanking;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    .line 487
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 489
    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :goto_2
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 492
    check-cast p2, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/CheckInRanking;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private createGridCell(Landroid/view/View;Landroid/view/ViewGroup;Lcom/narvii/model/CheckInRanking;)Landroid/view/View;
    .locals 11

    const-string v0, "account"

    .line 324
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 325
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 326
    iget-object v3, p3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 327
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const v4, 0x7f0b03e4

    .line 332
    invoke-virtual {p0, v4, p2, p1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :goto_3
    const p2, 0x7f09021d

    .line 335
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 336
    iget-object v4, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-direct {p0, p3, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->configCellUI(Lcom/narvii/model/CheckInRanking;Landroid/view/View;)V

    const p2, 0x7f090c22

    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridLayout;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    .line 341
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 344
    :cond_4
    iget-object v3, p3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 345
    :goto_4
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v5}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v5

    if-nez v5, :cond_6

    .line 346
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$102(Lcom/narvii/leaderboard/CheckInRankingListFragment;I)I

    .line 348
    :cond_6
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v5}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v5

    div-int v5, v3, v5

    .line 349
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v6

    rem-int v6, v3, v6

    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    const/4 v6, 0x4

    if-le v5, v6, :cond_8

    const/4 v5, 0x4

    .line 358
    :cond_8
    invoke-virtual {p2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    .line 359
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v7

    mul-int v7, v7, v5

    if-le v6, v7, :cond_9

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_9

    .line 362
    invoke-virtual {p2, v7}, Landroid/widget/GridLayout;->removeViewAt(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 365
    :cond_9
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 367
    :try_start_0
    invoke-virtual {p2, v5}, Landroid/widget/GridLayout;->setRowCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    nop

    .line 370
    :goto_6
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$200(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 371
    invoke-static {v8}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$200(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p2}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v9

    .line 370
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/widget/GridLayout;->setPadding(IIII)V

    .line 372
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v6

    mul-int v6, v6, v5

    if-le v6, v3, :cond_a

    goto :goto_7

    :cond_a
    iget-object v3, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v3}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    move-result v3

    mul-int v3, v3, v5

    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_12

    .line 374
    iget-object v6, p3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/User;

    .line 375
    invoke-virtual {p2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    if-le v7, v5, :cond_b

    invoke-virtual {p2, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_9

    :cond_b
    move-object v7, v2

    :goto_9
    if-nez v6, :cond_c

    if-eqz v7, :cond_10

    .line 378
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_c
    if-nez v7, :cond_d

    .line 382
    iget-object v7, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0b03a5

    invoke-virtual {v7, v8, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 383
    invoke-virtual {p2, v7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 385
    :cond_d
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 388
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f090c10

    .line 389
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v8, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 390
    iget-object v8, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 391
    iget-object v9, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    const v10, 0x7f0f0b28

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_e
    iget-object v9, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :goto_a
    iput-object v9, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const v9, 0x7f090764

    .line 392
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/widget/NicknameView;

    .line 393
    invoke-virtual {v9, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    if-eqz v8, :cond_f

    const v6, 0x7f0806f2

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    .line 394
    :goto_b
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_10
    :goto_c
    if-eqz v7, :cond_11

    .line 397
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 398
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$300(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 399
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_11

    .line 400
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$300(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    move-result v7

    const v8, 0x3dcccccd    # 0.1f

    mul-float v7, v7, v8

    float-to-int v7, v7

    .line 401
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v8, v7, 0x2

    invoke-virtual {v6, v7, v8, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_12
    return-object p1
.end method

.method private getCellDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-array p1, v0, [I

    .line 499
    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 501
    fill-array-data p1, :array_1

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    .line 503
    fill-array-data p1, :array_2

    .line 506
    :goto_0
    new-instance v0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;-><init>(Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;[I)V

    .line 516
    new-instance p1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 517
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 518
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 519
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        -0x714211
        -0xad5401
        -0x714211
    .end array-data

    :array_1
    .array-data 4
        -0x378414
        -0x37a802
        -0x196f01
    .end array-data

    :array_2
    .array-data 4
        -0x123072
        -0x1346bf
        -0x1533a6
    .end array-data
.end method

.method private reOrderUserList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 288
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 292
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public filterList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "account"

    .line 265
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 266
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 267
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 268
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 269
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/CheckInRanking;

    .line 270
    iget-object v4, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-virtual {v4, v3}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->isCellEmpty(Lcom/narvii/model/CheckInRanking;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 272
    iget-object v4, v3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 273
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 274
    invoke-direct {p0, v4, v0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->reOrderUserList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 277
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    .line 263
    :cond_5
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/CheckInRanking;

    if-eqz p1, :cond_0

    .line 318
    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->createGridCell(Landroid/view/View;Landroid/view/ViewGroup;Lcom/narvii/model/CheckInRanking;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 7

    .line 301
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 305
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 306
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/CheckInRanking;

    .line 307
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-virtual {v6, v5}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->isCellEmpty(Lcom/narvii/model/CheckInRanking;)Z

    move-result v5

    xor-int/2addr v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public onAttach()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    if-eqz p5, :cond_8

    .line 413
    instance-of v0, p3, Lcom/narvii/model/CheckInRanking;

    if-eqz v0, :cond_3

    .line 414
    move-object v1, p3

    check-cast v1, Lcom/narvii/model/CheckInRanking;

    .line 415
    iget v1, v1, Lcom/narvii/model/CheckInRanking;->minStreak:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "1MonthStreak"

    goto :goto_1

    :cond_1
    const-string v1, "2WeekStreak"

    goto :goto_1

    :cond_2
    const-string v1, "1WeekStreak"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "DaysStreak"

    .line 427
    :goto_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09021d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_6

    .line 428
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    iget-object p2, p1, Lcom/narvii/leaderboard/CheckInRankingListFragment;->leaderBoardHelper:Lcom/narvii/leaderboard/LeaderBoardHelper;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/leaderboard/LeaderBoardHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 429
    const-class p1, Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 431
    check-cast p3, Lcom/narvii/model/CheckInRanking;

    iget p2, p3, Lcom/narvii/model/CheckInRanking;->minStreak:I

    const-string p4, "min_streak"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    iget p2, p3, Lcom/narvii/model/CheckInRanking;->maxStreak:I

    const-string p4, "max_streak"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget-object p2, p3, Lcom/narvii/model/CheckInRanking;->title:Ljava/lang/String;

    const-string/jumbo p3, "title"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-nez p1, :cond_5

    return v4

    .line 436
    :cond_5
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 437
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 439
    :cond_6
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_8

    .line 440
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 441
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_7

    return v4

    :cond_7
    const-string p3, "Source"

    const-string p4, "Leaderboard"

    .line 443
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 445
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 449
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-static {v0}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$000(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 251
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;)V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->oList:Ljava/util/List;

    .line 256
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->oList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->filteredList:Ljava/util/List;

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->filteredList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-super {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 258
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFragmentVisible(Z)V
    .locals 0

    return-void
.end method
