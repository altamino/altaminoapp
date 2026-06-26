.class public Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.super Ljava/lang/Object;
.source "NVVideoListDelegate.java"

# interfaces
.implements Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/nvplayerview/ISurfaceListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;


# static fields
.field private static final STORY_VIDEO_RATIO:F = 0.5625f

.field protected static final TAG:Ljava/lang/String; = "NVVideoListDelegate"


# instance fields
.field protected active:Z

.field protected areaName:Ljava/lang/String;

.field protected currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

.field defaultListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

.field protected desView:Landroid/view/View;

.field protected lastScrollState:I

.field protected listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

.field protected mContext:Landroid/app/Activity;

.field protected mNVContext:Lcom/narvii/app/NVContext;

.field protected mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field protected mPlayerPosition:I

.field protected mSurface:Landroid/view/Surface;

.field protected mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

.field protected mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

.field protected playerPositionChanged:Z

.field protected prepared:Z

.field private refreshPlayerPosRunnable:Ljava/lang/Runnable;

.field private runnable:Ljava/lang/Runnable;

.field videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    .line 156
    new-instance v0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosRunnable:Ljava/lang/Runnable;

    .line 483
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->defaultListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    .line 683
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->runnable:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 75
    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 77
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public static markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V
    .locals 7

    .line 710
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 712
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 714
    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-void
.end method

.method public static markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "IZ)V"
        }
    .end annotation

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 720
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 721
    invoke-virtual {v1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    :cond_1
    new-instance p2, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {p2}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 727
    iput-object v0, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 729
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 730
    sget v0, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 731
    sget p1, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 732
    sget p1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {p0, p1, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 733
    sget p1, Lcom/narvii/lib/R$id;->video_tag_scaleType:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 734
    sget p1, Lcom/narvii/lib/R$id;->video_tag_cover_media:I

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 735
    sget p1, Lcom/narvii/lib/R$id;->video_tag_clickable:I

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 737
    :cond_2
    sget p1, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 738
    sget p1, Lcom/narvii/lib/R$id;->video_tag_media:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 739
    sget p1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 740
    sget p1, Lcom/narvii/lib/R$id;->video_tag_scaleType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 741
    sget p1, Lcom/narvii/lib/R$id;->video_tag_cover_media:I

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 742
    sget p1, Lcom/narvii/lib/R$id;->video_tag_clickable:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private setExitSharedElementCallback()V
    .locals 2

    .line 751
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 819
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected debugEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected forceBlur()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected forceRefreshPlayerPosition()V
    .locals 4

    .line 905
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getDesiredPlayerPosition()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 906
    iput v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 907
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 908
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 909
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    new-instance v1, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    new-instance v1, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;
    .locals 0

    .line 836
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDesiredPlayerPosition()I
    .locals 15

    .line 513
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 520
    iget-object v3, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 521
    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    .line 522
    :goto_0
    iget-object v10, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v10}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getLastVisiblePosition()I

    move-result v10

    iget-object v11, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v11}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v10, v11

    if-gt v5, v10, :cond_9

    .line 523
    iget-object v10, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-virtual {p0, v10, v5}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_2

    .line 527
    :cond_1
    sget v11, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    goto/16 :goto_2

    .line 530
    :cond_2
    sget v11, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_2

    .line 534
    :cond_3
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 535
    sget v12, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {v10, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    goto/16 :goto_2

    .line 539
    :cond_4
    check-cast v10, Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v11, :cond_8

    .line 540
    invoke-virtual {v10}, Lcom/narvii/nvplayer/NVMediaSource;->containValidVideo()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 541
    invoke-virtual {v11, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 542
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->vertical()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    .line 543
    aget v12, v2, v10

    div-int/lit8 v13, v3, 0x2

    if-ge v12, v13, :cond_5

    aget v12, v2, v10

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v12, v14

    if-le v12, v13, :cond_5

    .line 544
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v0

    :goto_1
    add-int/2addr v0, v5

    return v0

    .line 547
    :cond_5
    aget v10, v2, v10

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v9, :cond_8

    .line 550
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v7}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v5

    move v9, v10

    goto :goto_2

    .line 555
    :cond_6
    aget v10, v2, v6

    div-int/lit8 v12, v4, 0x2

    if-ge v10, v12, :cond_7

    aget v10, v2, v6

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v10, v12

    div-int/lit8 v12, v3, 0x2

    if-le v10, v12, :cond_7

    .line 556
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_1

    .line 558
    :cond_7
    aget v10, v2, v6

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v8, :cond_8

    .line 561
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v7}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v5

    move v8, v10

    .line 522
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getStep()I

    move-result v10

    add-int/2addr v5, v10

    goto/16 :goto_0

    :cond_9
    if-eq v7, v1, :cond_a

    .line 568
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {p0, v0, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object v0

    .line 569
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage()I

    move-result v2

    if-ge v0, v2, :cond_a

    return v1

    :cond_a
    return v7
.end method

.method public getPlayerPos()I
    .locals 1

    .line 889
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    return v0
.end method

.method public getPlayerPosition()I
    .locals 1

    .line 867
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    return v0
.end method

.method protected getStep()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoView()Lcom/narvii/nvplayerview/NVVideoView;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-object v0
.end method

.method protected getVisibilityPercentage()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getVisibilityPercentage(Landroid/view/View;)I
    .locals 1

    .line 901
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->vertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/nvplayerview/Utils;->getVisibilityPercentage(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/narvii/nvplayerview/Utils;->getVisibilityHorizontalPercentage(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;
    .locals 1

    .line 747
    new-instance v0, Lcom/narvii/nvplayerview/controller/NVVideoListController;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayerview/controller/NVVideoListController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    return-object v0
.end method

.method protected initVideoView()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    return-void
.end method

.method public synthetic lambda$onLayoutChange$1$NVVideoListDelegate(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$refreshPlayerPosition$0$NVVideoListDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 442
    sget p2, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    .line 443
    instance-of v0, p2, Lcom/narvii/nvplayer/NVMediaSource;

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    check-cast p2, Lcom/narvii/nvplayer/NVMediaSource;

    .line 447
    iget-object v0, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, v1

    .line 448
    :goto_1
    sget v0, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget v0, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/NVObject;

    .line 449
    :goto_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/narvii/nvplayerview/listener/VideoViewClickListener;->interceptClickEvent(Lcom/narvii/model/NVObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 450
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    invoke-interface {p1, p2, v1}, Lcom/narvii/nvplayerview/listener/VideoViewClickListener;->onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V

    goto :goto_3

    .line 452
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->defaultListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    invoke-interface {p1, p2, v1}, Lcom/narvii/nvplayerview/listener/VideoViewClickListener;->onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V

    :goto_3
    return-void
.end method

.method public listViewFirstBecomeVisible()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected listViewOnScroll()V
    .locals 4

    .line 159
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage(Landroid/view/View;)I

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v2}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v2, v3}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 173
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 174
    iput v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    :cond_4
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 194
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz p1, :cond_8

    .line 196
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_0

    .line 197
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setExitSharedElementCallback()V

    .line 200
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    if-nez p1, :cond_1

    return-void

    .line 203
    :cond_1
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x12c

    if-ne v0, v1, :cond_2

    .line 204
    new-instance v0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    invoke-interface {p1, v0, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 207
    :cond_2
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 208
    sget v0, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 211
    :cond_3
    sget v0, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/nvplayer/NVMediaSource;

    .line 212
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    move-result v0

    if-nez v0, :cond_5

    .line 213
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    new-instance v0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    invoke-interface {p1, v0, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0, p1, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 216
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 217
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, v1, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(ZZ)V

    .line 220
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {p1, v1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onActiveChanged(Z)V

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    .line 222
    :cond_8
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 223
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onCachedBytesRead(JJ)V
    .locals 0

    .line 616
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz p1, :cond_0

    .line 618
    new-instance p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;

    invoke-direct {p1, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 186
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onErrorDebug(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 783
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 788
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 789
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p4, p2, :cond_1

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p5, p2, :cond_2

    .line 790
    :cond_1
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 791
    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 792
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    new-instance p3, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;

    invoke-direct {p3, p0, p1}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 3

    .line 101
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 102
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V

    .line 104
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoView;

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 105
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->initVideoView()V

    .line 106
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->addDebugVideoView()V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 112
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 113
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->init()V

    .line 114
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->prepared:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 609
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setErrorText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerStateChanged(ZI)V

    .line 601
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setPlayerStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPositionDiscontinuity(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setPreloadStrategyInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 140
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 143
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 144
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    new-instance v1, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onRenderFirstFrameInterval(J)V
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setFromSettingToFirstFrameText(J)V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->onRenderedFirstFrame()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->resume()V

    :cond_0
    return-void
.end method

.method public onScroll(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 0

    .line 94
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listViewOnScroll()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V
    .locals 0

    .line 86
    iput p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    if-nez p2, :cond_0

    .line 87
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->forceRefreshPlayerPosition()V

    :cond_0
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 580
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setResolutionText(II)V

    :cond_0
    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSizeChanged(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public onVideoSupportLowResVideo(Z)V
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSupportLowRes(Z)V

    :cond_0
    return-void
.end method

.method public prepared()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->prepared:Z

    return v0
.end method

.method protected quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 848
    iget-object v0, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 849
    invoke-virtual {p2}, Lcom/narvii/nvplayer/NVMediaSource;->clone()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v0

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 852
    iget-object p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    .line 853
    iget-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-interface {p1, p2, v0, p3}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 855
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    goto :goto_0

    .line 857
    :cond_0
    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 858
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-interface {p1, v0, p2, p3}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public refreshPlayerPosition()V
    .locals 15

    .line 260
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-nez v1, :cond_1

    goto/16 :goto_f

    .line 266
    :cond_1
    iget v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    if-eqz v1, :cond_2

    return-void

    .line 269
    :cond_2
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->isShown()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    .line 270
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    if-eq v0, v1, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->reset()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    .line 276
    iget v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_e

    .line 277
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0, v5, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 279
    invoke-virtual {p0, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage(Landroid/view/View;)I

    move-result v5

    .line 280
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage()I

    move-result v6

    if-lt v5, v6, :cond_e

    .line 281
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v1, :cond_b

    .line 286
    sget v1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v4

    goto :goto_0

    :cond_6
    sget v1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    .line 287
    :goto_0
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v5}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 289
    invoke-virtual {v5, v1}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 290
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    invoke-virtual {v5, v1}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 291
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    .line 293
    sget v1, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    sget v0, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_7
    if-eqz v0, :cond_8

    .line 296
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_9

    .line 301
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->findShownInAdapter(Landroid/view/View;)Lcom/narvii/logging/Area;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 302
    invoke-interface {v0}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 303
    invoke-interface {v0}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_a

    .line 307
    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->areaName:Ljava/lang/String;

    .line 309
    :cond_a
    invoke-virtual {v5, v4}, Lcom/narvii/nvplayer/NVMediaSource;->setAreaName(Ljava/lang/String;)V

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 314
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    .line 316
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 317
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const-wide/16 v4, 0x3e8

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-interface {v2, v0, v1, v3}, Lcom/narvii/nvplayer/INVPlayer;->seekTo(JZ)V

    .line 319
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 320
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_d
    return-void

    .line 326
    :cond_e
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getDesiredPlayerPosition()I

    move-result v2

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NVVideoListDelegate"

    invoke-static {v6, v5}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v1, :cond_25

    .line 328
    iget v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    if-eq v2, v5, :cond_25

    .line 329
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v5, v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_f

    return-void

    .line 333
    :cond_f
    sget v6, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    sget v6, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_10
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_11

    return-void

    .line 337
    :cond_11
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-nez v7, :cond_12

    return-void

    .line 340
    :cond_12
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 341
    sget v7, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_13

    return-void

    .line 345
    :cond_13
    check-cast v7, Lcom/narvii/nvplayer/NVMediaSource;

    .line 346
    invoke-virtual {v7}, Lcom/narvii/nvplayer/NVMediaSource;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v8

    .line 347
    sget v9, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_14

    move-object v9, v4

    goto :goto_3

    :cond_14
    sget v9, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/NVObject;

    .line 348
    :goto_3
    instance-of v10, v9, Lcom/narvii/model/Blog;

    if-eqz v10, :cond_15

    move-object v11, v9

    check-cast v11, Lcom/narvii/model/Blog;

    invoke-virtual {v11}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 349
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/high16 v11, 0x3f100000    # 0.5625f

    invoke-virtual {v8, v11}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    goto :goto_4

    .line 351
    :cond_15
    iget-object v11, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    invoke-static {v12, v8}, Lcom/narvii/nvplayerview/Utils;->predictRatio(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;)F

    move-result v8

    invoke-virtual {v11, v8}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 354
    :goto_4
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_16

    instance-of v8, v9, Lcom/narvii/model/Feed;

    if-eqz v8, :cond_16

    .line 355
    move-object v8, v9

    check-cast v8, Lcom/narvii/model/Feed;

    invoke-virtual {v8}, Lcom/narvii/model/Feed;->getStrategyInfo()Ljava/lang/String;

    move-result-object v8

    const-class v11, Lcom/narvii/model/StrategyInfo;

    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/StrategyInfo;

    if-eqz v8, :cond_16

    .line 356
    iget-object v8, v8, Lcom/narvii/model/StrategyInfo;->debugInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v8, :cond_16

    .line 357
    iget-object v11, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v11, v8}, Lcom/narvii/nvplayerview/NVVideoView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 361
    :cond_16
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 363
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 364
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v8, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 365
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    sget v11, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {v8, v11, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 366
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    sget v11, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v8, v11, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 368
    :cond_17
    iput-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    .line 369
    sget v8, Lcom/narvii/lib/R$id;->video_tag_scaleType:I

    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_18

    const/4 v8, 0x0

    goto :goto_5

    .line 370
    :cond_18
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 371
    :goto_5
    iget-object v11, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v11, v8}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    .line 372
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    if-eqz v10, :cond_19

    move-object v11, v9

    check-cast v11, Lcom/narvii/model/Blog;

    iget v11, v11, Lcom/narvii/model/Blog;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_19

    const/4 v11, 0x4

    goto :goto_6

    :cond_19
    const/4 v11, 0x0

    :goto_6
    invoke-interface {v8, v11}, Lcom/narvii/nvplayerview/controller/IVideoController;->setUIVisibility(I)V

    .line 373
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 375
    instance-of v11, v6, Lcom/narvii/widget/NVImageView;

    if-eqz v11, :cond_1a

    .line 376
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    move-object v13, v6

    check-cast v13, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v12, v13}, Lcom/narvii/nvplayerview/NVVideoView;->setNVImage(Lcom/narvii/widget/NVImageView;)V

    goto :goto_7

    .line 378
    :cond_1a
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v12, v4}, Lcom/narvii/nvplayerview/NVVideoView;->setNVImage(Lcom/narvii/widget/NVImageView;)V

    .line 381
    :goto_7
    instance-of v12, v8, Landroid/widget/FrameLayout;

    if-nez v12, :cond_1d

    instance-of v12, v8, Lcom/github/mmin18/widget/FlexLayout;

    if-eqz v12, :cond_1b

    goto :goto_9

    .line 389
    :cond_1b
    new-instance v12, Landroid/widget/FrameLayout;

    iget-object v13, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 391
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    instance-of v14, v8, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_1c

    .line 393
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 394
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 395
    invoke-virtual {v8, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_8

    .line 397
    :cond_1c
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    :goto_8
    invoke-virtual {v12, v6, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p0, v12, v8, v13}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 382
    :cond_1d
    :goto_9
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 383
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v13, v13, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v13, :cond_1e

    .line 384
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    :cond_1e
    iget-object v13, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p0, v8, v13, v12}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :goto_a
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoCornerEnable()Z

    move-result v8

    if-eqz v8, :cond_1f

    if-eqz v10, :cond_1f

    move-object v8, v9

    check-cast v8, Lcom/narvii/model/Blog;

    invoke-virtual {v8}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v8

    if-eqz v8, :cond_1f

    if-eqz v11, :cond_1f

    .line 405
    move-object v8, v6

    check-cast v8, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0, v8}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setVideoViewCornerRadius(Lcom/narvii/widget/NVImageView;)V

    .line 408
    :cond_1f
    invoke-virtual {v7, v9}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 409
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    invoke-virtual {v7, v8}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    if-eqz v6, :cond_20

    .line 412
    invoke-static {v6}, Lcom/narvii/logging/LogUtils;->findShownInAdapter(Landroid/view/View;)Lcom/narvii/logging/Area;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 413
    invoke-interface {v8}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_20

    .line 414
    invoke-interface {v8}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_20
    move-object v8, v4

    :goto_b
    if-nez v8, :cond_21

    .line 418
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->areaName:Ljava/lang/String;

    .line 420
    :cond_21
    invoke-virtual {v7, v8}, Lcom/narvii/nvplayer/NVMediaSource;->setAreaName(Ljava/lang/String;)V

    .line 422
    iget-object v8, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v8, v3}, Lcom/narvii/nvplayerview/NVVideoView;->hidePlayButton(Z)V

    .line 423
    invoke-virtual {v6, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 424
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-virtual {p0, v6, v7, v4}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 426
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    sget v8, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {v6, v8, v7}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 427
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    sget v7, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v6, v7, v9}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 428
    iput v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 429
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->startPreload()V

    .line 432
    sget v2, Lcom/narvii/lib/R$id;->video_tag_clickable:I

    invoke-virtual {v5, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 433
    instance-of v6, v2, Ljava/lang/Boolean;

    if-eqz v6, :cond_22

    .line 434
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz v10, :cond_23

    .line 435
    check-cast v9, Lcom/narvii/model/Blog;

    invoke-virtual {v9}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v2, 0x0

    goto :goto_c

    :cond_22
    const/4 v2, 0x1

    :cond_23
    :goto_c
    if-eqz v2, :cond_24

    .line 440
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 441
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    new-instance v6, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;

    invoke-direct {v6, p0, v5}, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    .line 456
    :cond_24
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 458
    :goto_d
    iput-boolean v3, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    .line 460
    :cond_25
    iget-boolean v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    if-eqz v2, :cond_2a

    iget v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    if-eq v2, v1, :cond_2a

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->showBlurAsBackground()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 461
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    iget v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    invoke-interface {v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_26

    return-void

    .line 465
    :cond_26
    sget v2, Lcom/narvii/lib/R$id;->video_tag_cover_media:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    return-void

    .line 469
    :cond_27
    sget v5, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_28

    goto :goto_e

    :cond_28
    sget v4, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/narvii/model/NVObject;

    .line 470
    :goto_e
    instance-of v1, v4, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_29

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v0, 0x1

    .line 471
    :cond_29
    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v4}, Lcom/narvii/nvplayerview/NVVideoView;->getNvImageView()Lcom/narvii/widget/NVImageView;

    move-result-object v4

    .line 472
    instance-of v5, v4, Lcom/narvii/widget/ISecretImage;

    if-eqz v5, :cond_2a

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->forceBlur()Z

    move-result v5

    if-eqz v5, :cond_2a

    if-eqz v1, :cond_2a

    if-nez v0, :cond_2a

    .line 473
    check-cast v4, Lcom/narvii/widget/ISecretImage;

    check-cast v2, Lcom/narvii/model/Media;

    const/high16 v0, 0x600000

    invoke-interface {v4, v2, v3, v0}, Lcom/narvii/widget/ISecretImage;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    :cond_2a
    :goto_f
    return-void
.end method

.method public removeVideoView()V
    .locals 4

    .line 801
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getNvImageView()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 805
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v2, v1}, Lcom/narvii/nvplayerview/NVVideoView;->hidePlayButton(Z)V

    .line 807
    :cond_0
    instance-of v2, v0, Lcom/narvii/widget/ISecretImage;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->forceBlur()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    move-object v2, v0

    check-cast v2, Lcom/narvii/widget/ISecretImage;

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getMedia()Lcom/narvii/model/Media;

    move-result-object v0

    const/high16 v3, 0x600000

    invoke-interface {v2, v0, v1, v3}, Lcom/narvii/widget/ISecretImage;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, v1, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 811
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 812
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->resetDebugVideoView()V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 872
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    const/4 v0, -0x1

    .line 874
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 875
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    return-void
.end method

.method public resetVideoView()V
    .locals 0

    .line 884
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->reset()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    if-eqz p1, :cond_3

    .line 242
    invoke-interface {p1, p0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    if-eqz p1, :cond_1

    .line 246
    invoke-interface {p1, p0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->removeOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz p1, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setVideoViewClickListener(Lcom/narvii/nvplayerview/listener/VideoViewClickListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    return-void
.end method

.method protected setVideoViewCornerRadius(Lcom/narvii/widget/NVImageView;)V
    .locals 4

    .line 831
    iget p1, p1, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 832
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/16 v1, 0x8

    new-array v1, v1, [F

    int-to-float v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setCornerRadiusArray([FI)V

    return-void
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$shouldPauseForPageAboveVideo(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method protected shouldPlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showBlurAsBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startPreload()V
    .locals 8

    .line 644
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->supportPreload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getTotalCountInAdapter()I

    move-result v0

    .line 651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_3

    .line 654
    iget v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    add-int/2addr v5, v3

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ge v5, v0, :cond_2

    .line 656
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v7, v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getItemInAdapter(I)Ljava/lang/Object;

    move-result-object v5

    .line 657
    instance-of v7, v5, Lcom/narvii/model/Feed;

    if-eqz v7, :cond_2

    .line 658
    check-cast v5, Lcom/narvii/model/Feed;

    .line 659
    invoke-virtual {v5, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v6, :cond_2

    .line 660
    invoke-virtual {v5, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    .line 661
    invoke-virtual {v5}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 662
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 670
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v2, v1}, Lcom/narvii/nvplayer/INVPlayer;->preload(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected supportPreload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 2

    .line 676
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 677
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 706
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method protected vertical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected videoCornerEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
