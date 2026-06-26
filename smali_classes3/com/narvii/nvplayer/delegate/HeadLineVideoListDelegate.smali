.class public Lcom/narvii/nvplayer/delegate/HeadLineVideoListDelegate;
.super Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.source "HeadLineVideoListDelegate.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public refreshPlayerPosition()V
    .locals 2

    .line 19
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    .line 21
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getNvImageView()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    :cond_0
    return-void
.end method
