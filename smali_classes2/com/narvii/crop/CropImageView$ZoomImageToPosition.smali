.class Lcom/narvii/crop/CropImageView$ZoomImageToPosition;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/crop/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomImageToPosition"
.end annotation


# instance fields
.field private final mCropImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/crop/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeltaScale:F

.field private final mDestX:F

.field private final mDestY:F

.field private final mDurationMs:J

.field private final mOldScale:F

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Lcom/narvii/crop/CropImageView;JFFFF)V
    .locals 2

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mStartTime:J

    .line 792
    iput-wide p2, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDurationMs:J

    .line 793
    iput p4, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mOldScale:F

    .line 794
    iput p5, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDeltaScale:F

    .line 795
    iput p6, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDestX:F

    .line 796
    iput p7, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDestY:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 801
    iget-object v0, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mCropImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/crop/CropImageView;

    if-nez v0, :cond_0

    return-void

    .line 806
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 807
    iget-wide v3, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDurationMs:J

    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    const/4 v2, 0x0

    .line 808
    iget v3, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDeltaScale:F

    iget-wide v4, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDurationMs:J

    long-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/narvii/crop/CubicEasing;->easeInOut(FFFF)F

    move-result v2

    .line 810
    iget-wide v3, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDurationMs:J

    long-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 811
    iget v1, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mOldScale:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDestX:F

    iget v3, p0, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;->mDestY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/crop/CropImageView;->zoomInImage(FFF)V

    .line 812
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds()V

    :goto_0
    return-void
.end method
