.class public Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;
.super Lcom/narvii/livelayer/LiveLayerOnlineBar;
.source "CBBLiveLayerOnlineBar.java"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->forceHideOnlineTextLayout:Z

    const/4 p2, 0x2

    .line 20
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 21
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 22
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    .line 23
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->getForceRequestWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->getForceRequestHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    :cond_0
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    return-void
.end method


# virtual methods
.method protected getForceRequestHeight()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    return v0
.end method

.method protected getForceRequestWidth()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    return v0
.end method

.method protected getPreloadAvatarSize()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    return v0
.end method
