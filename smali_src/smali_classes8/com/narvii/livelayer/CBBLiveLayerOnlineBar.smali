.class public Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;
.super Lcom/narvii/livelayer/LiveLayerOnlineBar;
.source "SourceFile"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f070242

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    .line 21
    const/4 p1, 0x1

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->forceHideOnlineTextLayout:Z

    .line 24
    const/4 p2, 0x2

    .line 25
    .line 26
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 27
    .line 28
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->getForceRequestWidth()I

    .line 42
    move-result p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->getForceRequestHeight()I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected getForceRequestHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    return v0
.end method

.method protected getForceRequestWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    return v0
.end method

.method protected getPreloadAvatarSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;->size:I

    return v0
.end method
