.class public Lcom/narvii/link/view/LoadTrackView;
.super Landroid/widget/FrameLayout;
.source "LoadTrackView.java"

# interfaces
.implements Lcom/narvii/link/ILoadTrackView;


# instance fields
.field protected imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

.field protected loadFinishListener:Lcom/narvii/link/LoadFinishListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Lcom/narvii/image/ImageLoadTracker;

    invoke-direct {p1}, Lcom/narvii/image/ImageLoadTracker;-><init>()V

    iput-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 20
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    new-instance v0, Lcom/narvii/link/view/LoadTrackView$1;

    invoke-direct {v0, p0}, Lcom/narvii/link/view/LoadTrackView$1;-><init>(Lcom/narvii/link/view/LoadTrackView;)V

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->setImageLoadTrackListener(Lcom/narvii/image/ImageLoadTrackListener;)V

    return-void
.end method


# virtual methods
.method protected checkIfAllLoadFinished()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/link/view/LoadTrackView;->isAllLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    invoke-interface {v0}, Lcom/narvii/link/LoadFinishListener;->onLoadFinished()V

    :cond_0
    return-void
.end method

.method public isAllLoaded()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    invoke-virtual {v0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    move-result v0

    return v0
.end method

.method public setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 36
    invoke-virtual {p0}, Lcom/narvii/link/view/LoadTrackView;->checkIfAllLoadFinished()V

    return-void
.end method
