.class Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;
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
    name = "WrapCropBoundsRunnable"
.end annotation


# instance fields
.field private final mCenterDiffX:F

.field private final mCenterDiffY:F

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

.field private final mDurationMs:J

.field private final mOldScale:F

.field private final mOldX:F

.field private final mOldY:F

.field private final mStartTime:J

.field private final mWillBeImageInBoundsAfterTranslate:Z


# direct methods
.method public constructor <init>(Lcom/narvii/crop/CropImageView;JFFFFFFZ)V
    .locals 1

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 731
    iput-wide p2, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mStartTime:J

    .line 733
    iput p4, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldX:F

    .line 734
    iput p5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldY:F

    .line 735
    iput p6, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F

    .line 736
    iput p7, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F

    .line 737
    iput p8, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldScale:F

    .line 738
    iput p9, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F

    .line 739
    iput-boolean p10, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 744
    iget-object v0, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/crop/CropImageView;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 750
    iget-wide v3, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    .line 752
    iget v2, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F

    iget-wide v3, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/narvii/crop/CubicEasing;->easeOut(FFFF)F

    move-result v2

    .line 753
    iget v3, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F

    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v5, v5

    invoke-static {v1, v4, v3, v5}, Lcom/narvii/crop/CubicEasing;->easeOut(FFFF)F

    move-result v3

    .line 754
    iget v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F

    iget-wide v6, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v6, v6

    invoke-static {v1, v4, v5, v6}, Lcom/narvii/crop/CubicEasing;->easeInOut(FFFF)F

    move-result v4

    .line 756
    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    .line 757
    iget-object v1, v0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    const/4 v5, 0x0

    aget v5, v1, v5

    iget v6, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldX:F

    sub-float/2addr v5, v6

    sub-float/2addr v2, v5

    const/4 v5, 0x1

    aget v1, v1, v5

    iget v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldY:F

    sub-float/2addr v1, v5

    sub-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/narvii/crop/TransformImageView;->postTranslate(FF)V

    .line 758
    iget-boolean v1, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z

    if-nez v1, :cond_1

    .line 759
    iget v1, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldScale:F

    add-float/2addr v1, v4

    invoke-static {v0}, Lcom/narvii/crop/CropImageView;->access$000(Lcom/narvii/crop/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-static {v0}, Lcom/narvii/crop/CropImageView;->access$000(Lcom/narvii/crop/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/crop/CropImageView;->zoomInImage(FFF)V

    .line 761
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 762
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
