.class public Lcom/narvii/link/view/CommunityFrame;
.super Lcom/narvii/link/view/LoadTrackView;
.source "CommunityFrame.java"


# instance fields
.field communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

.field content:Landroid/view/View;

.field contentContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/link/view/LoadTrackView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0442

    .line 20
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0902b2

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/link/view/CommunityInfoItem;

    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    .line 24
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    iget-object v0, v0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    const p1, 0x7f0902d2

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame;->contentContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    invoke-virtual {v0, p2}, Lcom/narvii/link/view/CommunityInfoItem;->setCommunity(Lcom/narvii/model/Community;)V

    .line 30
    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame;->content:Landroid/view/View;

    .line 31
    iget-object p2, p0, Lcom/narvii/link/view/CommunityFrame;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    instance-of p2, p1, Lcom/narvii/link/ILoadTrackView;

    if-eqz p2, :cond_0

    .line 33
    check-cast p1, Lcom/narvii/link/ILoadTrackView;

    new-instance p2, Lcom/narvii/link/view/CommunityFrame$1;

    invoke-direct {p2, p0}, Lcom/narvii/link/view/CommunityFrame$1;-><init>(Lcom/narvii/link/view/CommunityFrame;)V

    invoke-interface {p1, p2}, Lcom/narvii/link/ILoadTrackView;->setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V

    :cond_0
    return-void
.end method

.method public isAllLoaded()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame;->content:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/link/ILoadTrackView;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Lcom/narvii/link/ILoadTrackView;

    invoke-interface {v0}, Lcom/narvii/link/ILoadTrackView;->isAllLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/narvii/link/view/LoadTrackView;->isAllLoaded()Z

    move-result v0

    return v0
.end method
