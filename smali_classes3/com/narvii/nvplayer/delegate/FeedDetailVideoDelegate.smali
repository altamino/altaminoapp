.class public Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;
.super Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;
.source "FeedDetailVideoDelegate.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    const-string p1, "EngagementArea"

    .line 21
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->areaName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getCaptionId()I
    .locals 1

    const v0, 0x7f090b5b

    return v0
.end method

.method protected initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;
    .locals 1

    .line 31
    new-instance v0, Lcom/narvii/nvplayer/controller/FeedDetailVideoController;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/controller/FeedDetailVideoController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    return-object v0
.end method

.method protected initVideoView()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    return-void
.end method

.method public onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    return-void
.end method

.method public refreshPlayerPosition()V
    .locals 4

    .line 36
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    .line 37
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 38
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090c87

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-nez v0, :cond_3

    return-void

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected showBlurAsBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
