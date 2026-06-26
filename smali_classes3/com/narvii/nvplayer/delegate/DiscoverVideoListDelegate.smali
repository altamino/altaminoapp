.class public Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;
.super Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;
.source "DiscoverVideoListDelegate.java"


# static fields
.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x1


# instance fields
.field private columnAdapterItemPos:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->columnAdapterItemPos:I

    return-void
.end method


# virtual methods
.method protected debugEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected forceRefreshPlayerPosition()V
    .locals 4

    .line 119
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->getDesiredPlayerPosition(Z)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 120
    iput v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 121
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->removeVideoView()V

    .line 123
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    new-instance v1, Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;-><init>(Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    new-instance v1, Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;-><init>(Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;
    .locals 2

    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 29
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 30
    iget v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->columnAdapterItemPos:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090ae4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method protected getChildAtInRandom(Lcom/narvii/nvplayerview/delegate/IVideoListView;IZ)Landroid/view/View;
    .locals 6

    .line 39
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 40
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 43
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090ae4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v3, 0x7f090c87

    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    if-ne v0, p2, :cond_1

    .line 48
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    :cond_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 52
    iput v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->columnAdapterItemPos:I

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDesiredPlayerPosition()I
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->getDesiredPlayerPosition(Z)I

    move-result v0

    return v0
.end method

.method protected getDesiredPlayerPosition(Z)I
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 70
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 71
    iget-object v3, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v4}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, -0x1

    const v5, 0x7fffffff

    :goto_0
    if-ltz v3, :cond_6

    .line 72
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-virtual {p0, v6, v3, p1}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->getChildAtInRandom(Lcom/narvii/nvplayerview/delegate/IVideoListView;IZ)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v6, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const v7, 0x7f090c87

    .line 79
    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090c82

    .line 87
    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 91
    :cond_3
    check-cast v6, Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v7, :cond_5

    .line 92
    invoke-virtual {v6}, Lcom/narvii/nvplayer/NVMediaSource;->containValidVideo()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 93
    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x1

    .line 94
    aget v8, v1, v6

    div-int/lit8 v9, v2, 0x2

    if-ge v8, v9, :cond_4

    aget v8, v1, v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    if-le v8, v9, :cond_4

    .line 95
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result p1

    add-int/2addr p1, v3

    return p1

    .line 98
    :cond_4
    aget v6, v1, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v5, :cond_5

    .line 101
    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v4}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    move v5, v6

    .line 71
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getStep()I

    move-result v6

    sub-int/2addr v3, v6

    goto :goto_0

    :cond_6
    return v4
.end method

.method public onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V
    .locals 0

    .line 111
    iput p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    if-nez p2, :cond_0

    .line 112
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->forceRefreshPlayerPosition()V

    :cond_0
    return-void
.end method
