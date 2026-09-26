.class Lcom/narvii/widget/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# static fields
.field private static final ZOOM_TIME:F = 500.0f


# instance fields
.field private bitmapX:F

.field private bitmapY:F

.field private endTouch:Landroid/graphics/PointF;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private startTime:J

.field private startTouch:Landroid/graphics/PointF;

.field private startZoom:F

.field private stretchImageToSuper:Z

.field private targetZoom:F

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TouchImageView;FFFZ)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->ANIMATE_ZOOM:Lcom/narvii/widget/TouchImageView$State;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->startTime:J

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->l(Lcom/narvii/widget/TouchImageView;)F

    .line 27
    move-result v0

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->startZoom:F

    .line 30
    .line 31
    iput p2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->targetZoom:F

    .line 32
    .line 33
    iput-boolean p5, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    .line 34
    const/4 p2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p3, p4, p2}, Lcom/narvii/widget/TouchImageView;->C(Lcom/narvii/widget/TouchImageView;FFZ)Landroid/graphics/PointF;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    iget p3, p2, Landroid/graphics/PointF;->x:F

    .line 41
    .line 42
    iput p3, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 43
    .line 44
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 45
    .line 46
    iput p2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p3, p2}, Lcom/narvii/widget/TouchImageView;->B(Lcom/narvii/widget/TouchImageView;FF)Landroid/graphics/PointF;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    iput-object p2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 53
    .line 54
    new-instance p2, Landroid/graphics/PointF;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->q(Lcom/narvii/widget/TouchImageView;)I

    .line 58
    move-result p3

    .line 59
    .line 60
    div-int/lit8 p3, p3, 0x2

    .line 61
    int-to-float p3, p3

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->p(Lcom/narvii/widget/TouchImageView;)I

    .line 65
    move-result p1

    .line 66
    .line 67
    div-int/lit8 p1, p1, 0x2

    .line 68
    int-to-float p1, p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 72
    .line 73
    iput-object p2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    .line 74
    return-void
.end method

.method private calculateDeltaScale(F)D
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->startZoom:F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->targetZoom:F

    .line 5
    sub-float/2addr v1, v0

    .line 6
    mul-float/2addr p1, v1

    .line 7
    add-float/2addr v0, p1

    .line 8
    float-to-double v0, v0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->l(Lcom/narvii/widget/TouchImageView;)F

    .line 14
    move-result p1

    .line 15
    float-to-double v2, p1

    .line 16
    div-double/2addr v0, v2

    .line 17
    return-wide v0
.end method

.method private interpolate()F
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->startTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    .line 10
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 11
    div-float/2addr v0, v1

    .line 12
    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method private translateImageToCenterTouchPosition(F)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 3
    .line 4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    .line 7
    .line 8
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 9
    sub-float/2addr v3, v1

    .line 10
    mul-float/2addr v3, p1

    .line 11
    add-float/2addr v1, v3

    .line 12
    .line 13
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 16
    sub-float/2addr v2, v0

    .line 17
    mul-float/2addr p1, v2

    .line 18
    add-float/2addr v0, p1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 23
    .line 24
    iget v3, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2, v3}, Lcom/narvii/widget/TouchImageView;->B(Lcom/narvii/widget/TouchImageView;FF)Landroid/graphics/PointF;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 37
    sub-float/2addr v1, v3

    .line 38
    .line 39
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 40
    sub-float/2addr v0, p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->interpolate()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->calculateDeltaScale(F)D

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    iget v4, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 13
    .line 14
    iget v5, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 15
    .line 16
    iget-boolean v6, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    .line 17
    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView;->z(Lcom/narvii/widget/TouchImageView;DFFZ)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->u(Lcom/narvii/widget/TouchImageView;)V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 54
    .line 55
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    .line 57
    cmpg-float v0, v0, v1

    .line 58
    .line 59
    if-gez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p0}, Lcom/narvii/widget/TouchImageView;->t(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 68
    .line 69
    sget-object v1, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 73
    :goto_0
    return-void
.end method
