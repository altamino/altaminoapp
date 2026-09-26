.class public Lcom/narvii/image/ImageLoadTracker;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public addImageView(Lcom/narvii/widget/NVImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-void
.end method

.method public addImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_3

    move-object p2, p0

    .line 5
    :cond_3
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-void
.end method

.method public isAllLoaded()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/image/ImageLoadTracker;->imageViewSet:Ljava/util/HashSet;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-ne v2, v1, :cond_1

    .line 35
    const/4 v0, 0x0

    .line 36
    return v0

    .line 37
    :cond_2
    return v1
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/image/ImageLoadTracker;->imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/image/ImageLoadTracker;->imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/image/ImageLoadTrackListener;->onLoadFinished()V

    .line 16
    :cond_0
    return-void
.end method

.method public setImageLoadTrackListener(Lcom/narvii/image/ImageLoadTrackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/image/ImageLoadTracker;->imageLoadTrackListener:Lcom/narvii/image/ImageLoadTrackListener;

    return-void
.end method
