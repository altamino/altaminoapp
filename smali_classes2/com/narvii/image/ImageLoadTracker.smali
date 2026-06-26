.class public Lcom/narvii/image/ImageLoadTracker;
.super Ljava/lang/Object;
.source "ImageLoadTracker.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

.field imageViewSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/narvii/widget/NVImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addImageView(Lcom/narvii/widget/NVImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-void
.end method

.method public addImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_3

    move-object p2, p0

    .line 42
    :cond_3
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-void
.end method

.method public isAllLoaded()Z
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 20
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/narvii/image/ImageLoadTracker;->imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/narvii/image/ImageLoadTracker;->imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

    invoke-interface {p1}, Lcom/narvii/image/ImageLoadTrackListener;->onLoadFinished()V

    :cond_0
    return-void
.end method

.method public setImageLoadTrackListener(Lcom/narvii/image/ImageLoadTrackListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/image/ImageLoadTracker;->imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

    return-void
.end method
