.class public Lcom/narvii/widget/TouchImageView;
.super Lcom/narvii/widget/FullsizeImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TouchImageView$ZoomVariables;,
        Lcom/narvii/widget/TouchImageView$CompatScroller;,
        Lcom/narvii/widget/TouchImageView$Fling;,
        Lcom/narvii/widget/TouchImageView$DoubleTapZoom;,
        Lcom/narvii/widget/TouchImageView$ScaleListener;,
        Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;,
        Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;,
        Lcom/narvii/widget/TouchImageView$GestureListener;,
        Lcom/narvii/widget/TouchImageView$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/narvii/widget/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/narvii/widget/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I

.field private zoomDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 98
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 99
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 103
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 98
    iput-object p2, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 99
    iput-object p2, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 108
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/widget/TouchImageView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/narvii/widget/TouchImageView;->zoomDisabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/widget/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->setState(Lcom/narvii/widget/TouchImageView$State;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/widget/TouchImageView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/widget/TouchImageView;FFF)F
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/TouchImageView;->getFixDragTrans(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/narvii/widget/TouchImageView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    return-void
.end method

.method static synthetic access$2100(Lcom/narvii/widget/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/widget/TouchImageView;DFFZ)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/narvii/widget/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/widget/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/narvii/widget/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2700(Lcom/narvii/widget/TouchImageView;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/narvii/widget/TouchImageView;)[F
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->fling:Lcom/narvii/widget/TouchImageView$Fling;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$Fling;)Lcom/narvii/widget/TouchImageView$Fling;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->fling:Lcom/narvii/widget/TouchImageView$Fling;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->state:Lcom/narvii/widget/TouchImageView$State;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    return p0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1270
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    .line 1273
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private fitImageToView()V
    .locals 15

    .line 557
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 558
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 565
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 566
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 571
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    .line 572
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 574
    sget-object v5, Lcom/narvii/widget/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v5, v6, :cond_6

    if-eq v5, v10, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    if-eq v5, v8, :cond_4

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 597
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v3, v1

    .line 587
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    move v3, v1

    goto :goto_1

    .line 580
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 604
    :goto_1
    iget v5, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v6, v5

    mul-float v12, v1, v2

    sub-float/2addr v6, v12

    .line 605
    iget v12, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float v13, v12

    mul-float v14, v3, v4

    sub-float/2addr v13, v14

    int-to-float v5, v5

    sub-float/2addr v5, v6

    .line 606
    iput v5, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    int-to-float v5, v12

    sub-float/2addr v5, v13

    .line 607
    iput v5, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    .line 608
    invoke-virtual {p0}, Lcom/narvii/widget/TouchImageView;->isZoomed()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v5, :cond_7

    .line 612
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 613
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    div-float/2addr v13, v1

    invoke-virtual {v0, v6, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 614
    iput v11, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    goto :goto_2

    .line 622
    :cond_7
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9

    .line 623
    :cond_8
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 626
    :cond_9
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 631
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v3, 0x0

    iget v5, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    div-float/2addr v5, v2

    iget v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    mul-float v5, v5, v2

    aput v5, v1, v3

    .line 632
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    div-float/2addr v3, v4

    mul-float v3, v3, v2

    aput v3, v1, v8

    .line 637
    aget v4, v1, v10

    .line 638
    aget v10, v1, v7

    .line 643
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    mul-float v5, v1, v2

    .line 644
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v6

    const/4 v3, 0x2

    .line 645
    iget v7, p0, Lcom/narvii/widget/TouchImageView;->prevViewWidth:I

    iget v8, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/narvii/widget/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 650
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    iget v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    mul-float v4, v1, v2

    .line 651
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result v5

    const/4 v2, 0x5

    .line 652
    iget v6, p0, Lcom/narvii/widget/TouchImageView;->prevViewHeight:I

    iget v7, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    move-object v1, p0

    move v3, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/widget/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 657
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 659
    :goto_2
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    .line 660
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private fixScaleTrans()V
    .locals 5

    .line 477
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    .line 478
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 479
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v2, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v2, 0x5

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private fixTrans()V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 458
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    .line 459
    aget v0, v0, v2

    .line 461
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/narvii/widget/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    .line 462
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/narvii/widget/TouchImageView;->getFixTrans(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method private getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private getFixTrans(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, p2

    if-gtz v1, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    const/4 p3, 0x0

    :goto_0
    cmpg-float v1, p1, p2

    if-gez v1, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v0
.end method

.method private getImageHeight()F
    .locals 2

    .line 520
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    .line 516
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private printMatrixInfo()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1293
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private savePreviousImageValues()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 242
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 243
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    .line 244
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    .line 245
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewHeight:I

    .line 246
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewWidth:I

    :cond_0
    return-void
.end method

.method private scaleImage(DFFZ)V
    .locals 4

    if-eqz p5, :cond_0

    .line 946
    iget p5, p0, Lcom/narvii/widget/TouchImageView;->superMinScale:F

    .line 947
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->superMaxScale:F

    goto :goto_0

    .line 950
    :cond_0
    iget p5, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    .line 951
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    .line 954
    :goto_0
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    float-to-double v2, v1

    .line 955
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    double-to-float v2, v2

    iput v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 956
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 957
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p5

    if-gez v0, :cond_2

    .line 960
    iput p5, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    .line 964
    :cond_2
    :goto_1
    iget-object p5, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 965
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method private setState(Lcom/narvii/widget/TouchImageView$State;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->state:Lcom/narvii/widget/TouchImageView$State;

    return-void
.end method

.method private setViewSize(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_0

    .line 679
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 112
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 113
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->context:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/narvii/widget/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/narvii/widget/TouchImageView$ScaleListener;-><init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 115
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/narvii/widget/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/narvii/widget/TouchImageView$GestureListener;-><init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 116
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 117
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 118
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 119
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 120
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 123
    :cond_0
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 124
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    const/high16 p1, 0x3f400000    # 0.75f

    .line 125
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->superMinScale:F

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 126
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->superMaxScale:F

    .line 127
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 128
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    sget-object p1, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->setState(Lcom/narvii/widget/TouchImageView$State;)V

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    .line 131
    new-instance p1, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;

    invoke-direct {p1, p0, v2}, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$1;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 2

    .line 1106
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1110
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1111
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    .line 1114
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 1115
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 1116
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 5

    .line 1079
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1080
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1083
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1084
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1085
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    .line 1086
    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float p1, p1, v0

    .line 1087
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    .line 1088
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 1091
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1092
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1095
    :cond_1
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .locals 2

    int-to-float p6, p6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p4, p6

    if-gez v1, :cond_0

    .line 710
    iget-object p2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    int-to-float p3, p7

    const/4 p4, 0x0

    aget p4, p2, p4

    mul-float p3, p3, p4

    sub-float/2addr p6, p3

    mul-float p6, p6, v0

    aput p6, p2, p1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    cmpl-float v1, p2, p7

    if-lez v1, :cond_1

    .line 716
    iget-object p2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    sub-float/2addr p4, p6

    mul-float p4, p4, v0

    neg-float p3, p4

    aput p3, p2, p1

    goto :goto_0

    :cond_1
    cmpl-float p7, p3, p7

    if-eqz p7, :cond_2

    .line 725
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    mul-float p5, p5, v0

    add-float/2addr p2, p5

    div-float/2addr p2, p3

    .line 726
    iget-object p3, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    mul-float p2, p2, p4

    mul-float p6, p6, v0

    sub-float/2addr p2, p6

    neg-float p2, p2

    aput p2, p3, p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 5

    .line 741
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 742
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 744
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return v4

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    return v4

    .line 750
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    if-lez p1, :cond_2

    return v4

    :cond_2
    return v3
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .locals 0

    .line 736
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TouchImageView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public getCurrentZoom()F
    .locals 1

    .line 332
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 306
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 323
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    .line 429
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 433
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 434
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 436
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    .line 437
    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 438
    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 7

    .line 224
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, v1, v1, v0}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 228
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 231
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 232
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    iget v6, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    invoke-direct {v4, v5, v1, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoomed()Z
    .locals 2

    .line 216
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    .line 287
    iput-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 288
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_0

    .line 289
    iget v1, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scale:F

    iget v2, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusX:F

    iget v3, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusY:F

    iget-object v0, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

    .line 292
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/FullsizeImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 525
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 532
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 533
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 534
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 535
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 536
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 537
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/widget/TouchImageView;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 538
    invoke-direct {p0, p2, v3, v0}, Lcom/narvii/widget/TouchImageView;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 543
    iget p1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    iget p2, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 548
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 527
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 267
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 268
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    const-string v0, "matrix"

    .line 270
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 271
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    const-string v0, "matchViewWidth"

    .line 273
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    const-string v0, "viewHeight"

    .line 274
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewHeight:I

    const-string v0, "viewWidth"

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewWidth:I

    const-string v0, "imageRendered"

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v0, "instanceState"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    const-string v2, "saveScale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 255
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    const-string v2, "matchViewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 256
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    const-string v2, "matchViewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 257
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    const-string v2, "viewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    const-string v2, "viewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 260
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const-string v2, "matrix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 261
    iget-boolean v1, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v2, "imageRendered"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public resetZoom()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 348
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 349
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 169
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 176
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 161
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 162
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 155
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 182
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 183
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    .line 314
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    .line 315
    iget p1, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->superMaxScale:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 1

    .line 340
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    .line 341
    iget p1, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->superMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 188
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    .line 191
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 192
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 196
    iget-boolean p1, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p0, p0}, Lcom/narvii/widget/TouchImageView;->setZoom(Lcom/narvii/widget/TouchImageView;)V

    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollPosition(FF)V
    .locals 1

    .line 449
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/widget/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 357
    invoke-virtual {p0, p1, v0, v0}, Lcom/narvii/widget/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7

    .line 389
    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView$ZoomVariables;-><init>(Lcom/narvii/widget/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 395
    invoke-virtual {p0, p4}, Lcom/narvii/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/TouchImageView;->resetZoom()V

    float-to-double v2, p1

    .line 398
    iget p1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView;->scaleImage(DFFZ)V

    .line 399
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 400
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v0

    mul-float p2, p2, v0

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    .line 401
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    const/4 p2, 0x5

    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result p4

    mul-float p3, p3, p4

    iget p4, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float p4, p4

    mul-float p4, p4, v1

    sub-float/2addr p3, p4

    neg-float p3, p3

    aput p3, p1, p2

    .line 402
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 403
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    .line 404
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lcom/narvii/widget/TouchImageView;)V
    .locals 3

    .line 413
    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getCurrentZoom()F

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/narvii/widget/TouchImageView;->zoomDisabled:Z

    return-void
.end method
