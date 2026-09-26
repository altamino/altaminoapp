.class public Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;
.super Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 4
    .line 5
    const-string p1, "EngagementArea"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->areaName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method protected getCaptionId()I
    .locals 1

    const v0, 0x7f0a0e51

    return v0
.end method

.method protected initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/controller/FeedDetailVideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/controller/FeedDetailVideoController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    .line 6
    return-object v0
.end method

.method protected initVideoView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    .line 7
    return-void
.end method

.method public onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 4
    return-void
.end method

.method public refreshPlayerPosition()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 18
    move-result v2

    .line 19
    sub-int/2addr v0, v2

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_0
    const v1, 0x7f0a0fac

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayingUrl()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 68
    .line 69
    const/high16 v1, -0x1000000

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 76
    const/4 v1, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    nop

    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method protected showBlurAsBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
