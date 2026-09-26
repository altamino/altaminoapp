.class Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    iput-wide p2, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide p1

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mStartTime:J

    .line 19
    .line 20
    iput p4, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldX:F

    .line 21
    .line 22
    iput p5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldY:F

    .line 23
    .line 24
    iput p6, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F

    .line 25
    .line 26
    iput p7, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F

    .line 27
    .line 28
    iput p8, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldScale:F

    .line 29
    .line 30
    iput p9, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F

    .line 31
    .line 32
    iput-boolean p10, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/crop/CropImageView;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mStartTime:J

    .line 20
    sub-long/2addr v1, v5

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 24
    move-result-wide v1

    .line 25
    long-to-float v1, v1

    .line 26
    .line 27
    iget v2, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F

    .line 28
    .line 29
    iget-wide v3, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 30
    long-to-float v3, v3

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v4, v2, v3}, Lcom/narvii/crop/CubicEasing;->easeOut(FFFF)F

    .line 35
    move-result v2

    .line 36
    .line 37
    iget v3, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F

    .line 38
    .line 39
    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 40
    long-to-float v5, v5

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v4, v3, v5}, Lcom/narvii/crop/CubicEasing;->easeOut(FFFF)F

    .line 44
    move-result v3

    .line 45
    .line 46
    iget v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F

    .line 47
    .line 48
    iget-wide v6, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 49
    long-to-float v6, v6

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v4, v5, v6}, Lcom/narvii/crop/CubicEasing;->easeInOut(FFFF)F

    .line 53
    move-result v4

    .line 54
    .line 55
    iget-wide v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 56
    long-to-float v5, v5

    .line 57
    .line 58
    cmpg-float v1, v1, v5

    .line 59
    .line 60
    if-gez v1, :cond_2

    .line 61
    .line 62
    iget-object v1, v0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    .line 63
    const/4 v5, 0x0

    .line 64
    .line 65
    aget v5, v1, v5

    .line 66
    .line 67
    iget v6, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldX:F

    .line 68
    sub-float/2addr v5, v6

    .line 69
    sub-float/2addr v2, v5

    .line 70
    const/4 v5, 0x1

    .line 71
    .line 72
    aget v1, v1, v5

    .line 73
    .line 74
    iget v5, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldY:F

    .line 75
    sub-float/2addr v1, v5

    .line 76
    sub-float/2addr v3, v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2, v3}, Lcom/narvii/crop/TransformImageView;->postTranslate(FF)V

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z

    .line 82
    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    iget v1, p0, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;->mOldScale:F

    .line 86
    add-float/2addr v1, v4

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/narvii/crop/CropImageView;->c(Lcom/narvii/crop/CropImageView;)Landroid/graphics/RectF;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/narvii/crop/CropImageView;->c(Lcom/narvii/crop/CropImageView;)Landroid/graphics/RectF;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 102
    move-result v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/crop/CropImageView;->zoomInImage(FFF)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds()Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-nez v1, :cond_2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_2
    return-void
.end method
