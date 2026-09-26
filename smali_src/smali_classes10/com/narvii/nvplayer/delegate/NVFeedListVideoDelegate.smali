.class public Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;
.super Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 4
    return-void
.end method

.method private setCaptionVisibility(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->checkCaption()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/nvplayerview/controller/NVVideoListController;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0fa9

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v0

    .line 29
    .line 30
    :goto_0
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/nvplayerview/controller/NVVideoListController;

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-ne v0, v3, :cond_1

    .line 36
    move v1, v3

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v2, v1}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeBtnTop(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->checkCaption()Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    .line 62
    move-result p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_3
    return-void
.end method

.method protected checkCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCaptionId()I
    .locals 1

    const v0, 0x7f0a056c

    return v0
.end method

.method public removeVideoView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->setCaptionVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 8
    return-void
.end method
