.class public Lcom/narvii/link/view/CommunityFrame;
.super Lcom/narvii/link/view/LoadTrackView;
.source "SourceFile"


# instance fields
.field communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

.field content:Landroid/view/View;

.field contentContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/view/LoadTrackView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0477

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a0378

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/link/view/CommunityInfoItem;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a039f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame;->contentContainer:Landroid/view/ViewGroup;

    .line 39
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/narvii/link/view/CommunityInfoItem;->setCommunity(Lcom/narvii/model/Community;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame;->content:Landroid/view/View;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/link/view/CommunityFrame;->contentContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    instance-of p2, p1, Lcom/narvii/link/ILoadTrackView;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/link/ILoadTrackView;

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/link/view/CommunityFrame$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/narvii/link/view/CommunityFrame$1;-><init>(Lcom/narvii/link/view/CommunityFrame;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/narvii/link/ILoadTrackView;->setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V

    .line 27
    :cond_0
    return-void
.end method

.method public isAllLoaded()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame;->content:Landroid/view/View;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/link/ILoadTrackView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/link/ILoadTrackView;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/link/ILoadTrackView;->isAllLoaded()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/link/view/LoadTrackView;->isAllLoaded()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method
