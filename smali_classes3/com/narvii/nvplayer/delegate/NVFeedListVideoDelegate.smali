.class public Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;
.super Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.source "NVFeedListVideoDelegate.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-void
.end method

.method private setCaptionVisibility(I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->checkCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    instance-of v0, v0, Lcom/narvii/nvplayerview/controller/NVVideoListController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f090c84

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    check-cast v2, Lcom/narvii/nvplayerview/controller/NVVideoListController;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeBtnTop(Z)V

    .line 26
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->checkCaption()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->getCaptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

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

    const v0, 0x7f090435

    return v0
.end method

.method public removeVideoView()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;->setCaptionVisibility(I)V

    .line 35
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    return-void
.end method
