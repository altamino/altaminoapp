.class public Lcom/narvii/link/view/LoadTrackView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/link/ILoadTrackView;


# instance fields
.field protected imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

.field protected loadFinishListener:Lcom/narvii/link/LoadFinishListener;


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
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/image/ImageLoadTracker;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lcom/narvii/image/ImageLoadTracker;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/link/view/LoadTrackView$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/link/view/LoadTrackView$1;-><init>(Lcom/narvii/link/view/LoadTrackView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->setImageLoadTrackListener(Lcom/narvii/image/ImageLoadTrackListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected checkIfAllLoadFinished()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/link/view/LoadTrackView;->isAllLoaded()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/link/LoadFinishListener;->onLoadFinished()V

    .line 16
    :cond_0
    return-void
.end method

.method public isAllLoaded()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/link/view/LoadTrackView;->checkIfAllLoadFinished()V

    .line 6
    return-void
.end method
