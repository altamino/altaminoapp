.class public Lcom/narvii/widget/NVDrawableAnimatedView;
.super Landroid/view/View;
.source "NVDrawableAnimatedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;,
        Lcom/narvii/widget/NVDrawableAnimatedView$Layer;,
        Lcom/narvii/widget/NVDrawableAnimatedView$LayerScaleType;,
        Lcom/narvii/widget/NVDrawableAnimatedView$AnimationType;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x4

.field public static final ALIGN_END:I = 0x10

.field public static final ALIGN_START:I = 0x8

.field public static final ALIGN_TOP:I = 0x2

.field public static final CENTER:I = 0x20

.field public static final CENTER_CROP:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0x80

.field public static final CENTER_INSIDE:I = 0x2

.field public static final CENTER_VERTICAL:I = 0x40

.field public static final FILL_PARENT:I = 0x1

.field public static final FITXY:I = 0x1

.field public static final NO_ANIMATION:I = 0x0

.field public static final NO_SCALE:I = 0x4

.field public static final ROTATE_ANTICLOCKWISE:I = 0x6

.field public static final ROTATE_CLOCKWISE:I = 0x5

.field public static final SCALE:I = 0x7

.field public static final TRANSLATE_DOWN:I = 0x4

.field public static final TRANSLATE_END:I = 0x2

.field public static final TRANSLATE_START:I = 0x1

.field public static final TRANSLATE_UP:I = 0x3


# instance fields
.field private layerInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVDrawableAnimatedView$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private vHeight:I

.field private vWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 81
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 91
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method private configLayerAnimator(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 5

    .line 360
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    new-array v0, v3, [F

    .line 377
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 378
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    goto :goto_3

    :cond_3
    :goto_0
    new-array v0, v3, [F

    .line 374
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    aput v3, v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v3, v2

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 375
    iput v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    goto :goto_3

    .line 368
    :cond_4
    :goto_1
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    iget v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_6

    new-array v3, v3, [I

    aput v2, v3, v2

    aput v0, v3, v1

    .line 370
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    int-to-float v0, v0

    .line 371
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    goto :goto_3

    .line 362
    :cond_5
    :goto_2
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    iget v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_6

    new-array v3, v3, [I

    aput v2, v3, v2

    aput v0, v3, v1

    .line 364
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    int-to-float v0, v0

    .line 365
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 380
    :cond_6
    :goto_3
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 381
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 382
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatMode:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 383
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatCount:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 384
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->startDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 385
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    :cond_7
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 390
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 391
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 392
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eqz v0, :cond_8

    .line 393
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView$1;-><init>(Lcom/narvii/widget/NVDrawableAnimatedView;Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    iget-object p1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private configLayerInfo(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 8

    .line 444
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_6

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->resId:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 447
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 448
    iget v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eq v5, v4, :cond_0

    if-ne v5, v3, :cond_1

    :cond_0
    iget v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    if-ge v5, v6, :cond_2

    :cond_1
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 450
    :goto_0
    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eq v6, v2, :cond_3

    if-ne v6, v1, :cond_4

    :cond_3
    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    iget v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    if-ge v6, v7, :cond_5

    :cond_4
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_1

    :cond_5
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 452
    :goto_1
    new-instance v7, Landroid/graphics/BitmapShader;

    invoke-direct {v7, v0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    .line 457
    :cond_6
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v0, v5, :cond_c

    const/4 v5, 0x6

    if-ne v0, v5, :cond_7

    goto :goto_4

    :cond_7
    if-eq v0, v4, :cond_b

    if-ne v0, v3, :cond_8

    goto :goto_3

    :cond_8
    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 470
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    .line 471
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    .line 472
    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    mul-float v3, v0, v2

    iput v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    mul-float v3, v1, v2

    .line 473
    iput v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    .line 474
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    add-float v5, v2, v3

    mul-float v0, v0, v5

    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    .line 475
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    .line 476
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 477
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_6

    .line 466
    :cond_a
    :goto_2
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_d

    .line 467
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_5

    .line 462
    :cond_b
    :goto_3
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_d

    .line 463
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    goto :goto_5

    .line 458
    :cond_c
    :goto_4
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_d

    .line 459
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    :cond_d
    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 480
    :goto_6
    invoke-direct {p0, p1, v0, v7}, Lcom/narvii/widget/NVDrawableAnimatedView;->layoutLayer(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;FF)V

    .line 482
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->configLayerAnimator(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 484
    iput-boolean v4, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->access$000(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 2

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private layoutLayer(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;FF)V
    .locals 10

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    iget v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 262
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v1, :cond_10

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    and-int/lit16 v1, v0, 0x80

    const/16 v6, 0x80

    if-ne v1, v6, :cond_2

    .line 315
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    sub-int v6, v0, v1

    if-lez v6, :cond_1

    sub-int/2addr v0, v1

    div-int/2addr v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 316
    :goto_0
    iget-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 317
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    goto :goto_2

    :cond_2
    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 319
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    sub-int v6, v0, v1

    if-lez v6, :cond_3

    sub-int/2addr v0, v1

    div-int/2addr v0, v5

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 320
    :goto_1
    iget-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 321
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 323
    :cond_4
    :goto_2
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    and-int/lit8 v1, v0, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v1, v5, :cond_6

    .line 324
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eq v0, v7, :cond_5

    if-eq v0, v4, :cond_5

    .line 325
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 326
    iget v4, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    int-to-float v4, v4

    mul-float v4, v4, p3

    int-to-float p3, v1

    add-float/2addr v4, p3

    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    int-to-float p3, p3

    invoke-static {v4, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    float-to-int p3, p3

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 328
    :cond_5
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_5

    :cond_6
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_a

    .line 330
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    int-to-float v1, v0

    iget v8, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    int-to-float v9, v8

    mul-float v9, v9, p3

    sub-float/2addr v1, v9

    cmpl-float v1, v1, v6

    if-lez v1, :cond_7

    int-to-float v0, v0

    int-to-float v1, v8

    mul-float v1, v1, p3

    sub-float/2addr v0, v1

    float-to-int p3, v0

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    .line 332
    :goto_3
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eq v0, v7, :cond_8

    if-eq v0, v4, :cond_8

    .line 333
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    sub-int/2addr p3, v1

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 334
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    sub-int/2addr p3, v1

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 336
    :cond_8
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    sub-int v1, p3, v0

    if-lez v1, :cond_9

    sub-int/2addr p3, v0

    goto :goto_4

    :cond_9
    const/4 p3, 0x0

    .line 337
    :goto_4
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    sub-int/2addr p3, v1

    int-to-float p3, p3

    add-float/2addr v0, p3

    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 339
    :cond_a
    :goto_5
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    and-int/lit8 v0, p3, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 340
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eq p3, v2, :cond_b

    if-eq p3, v5, :cond_b

    .line 341
    iget-object p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 342
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    int-to-float p2, v0

    add-float/2addr v1, p2

    iget p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    int-to-float p2, p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 344
    :cond_b
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    goto/16 :goto_c

    :cond_c
    const/16 v0, 0x10

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_1c

    .line 346
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    int-to-float v0, p3

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    int-to-float v4, v1

    mul-float v4, v4, p2

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_d

    int-to-float p3, p3

    int-to-float v0, v1

    mul-float v0, v0, p2

    sub-float/2addr p3, v0

    float-to-int p2, p3

    goto :goto_6

    :cond_d
    const/4 p2, 0x0

    .line 348
    :goto_6
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eq p3, v2, :cond_e

    if-eq p3, v5, :cond_e

    .line 349
    iget-object p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    sub-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 350
    iget p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    sub-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 352
    :cond_e
    iget p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    sub-int v0, p2, p3

    if-lez v0, :cond_f

    sub-int v3, p2, p3

    .line 353
    :cond_f
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    sub-int/2addr v3, p3

    int-to-float p3, v3

    add-float/2addr p2, p3

    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    goto/16 :goto_c

    .line 263
    :cond_10
    :goto_7
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    const/high16 p3, 0x3f800000    # 1.0f

    if-ne p2, v1, :cond_18

    .line 264
    iget p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    sub-int/2addr p2, v0

    div-int/2addr p2, v5

    .line 265
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v5

    .line 266
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    const/4 v6, 0x5

    if-eq v1, v6, :cond_11

    const/4 v6, 0x6

    if-ne v1, v6, :cond_14

    .line 267
    :cond_11
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    sub-int v7, v1, v6

    if-lez v7, :cond_12

    sub-int/2addr v1, v6

    div-int/2addr v1, v5

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    .line 268
    :goto_8
    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    sub-int v8, v6, v7

    if-lez v8, :cond_13

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 269
    :cond_13
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    sub-int/2addr v7, v1

    iget v8, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    sub-int/2addr v8, v3

    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 271
    :cond_14
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    int-to-float v1, v1

    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    int-to-float v3, v3

    mul-float v3, v3, p3

    div-float/2addr v1, v3

    .line 272
    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    int-to-float v3, v3

    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    int-to-float v6, v6

    mul-float v6, v6, p3

    div-float/2addr v3, v6

    .line 274
    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    if-ne v6, v4, :cond_15

    int-to-float p2, p2

    .line 275
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    int-to-float p2, v0

    .line 276
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_b

    :cond_15
    if-ne v6, v2, :cond_16

    .line 278
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 279
    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    int-to-float p2, p2

    .line 280
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    int-to-float p2, v0

    .line 281
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_b

    .line 283
    :cond_16
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 284
    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 285
    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    if-ne v2, v5, :cond_17

    .line 286
    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_9

    :cond_17
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 287
    :goto_9
    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 288
    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    int-to-float p2, p2

    .line 289
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    int-to-float p2, v0

    .line 290
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_b

    .line 293
    :cond_18
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    if-eq p2, v4, :cond_1b

    .line 294
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    int-to-float v0, v0

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v0, v1

    .line 295
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    int-to-float v1, v1

    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    int-to-float v3, v3

    mul-float v3, v3, p3

    div-float/2addr v1, v3

    if-ne p2, v2, :cond_19

    .line 297
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 298
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    goto :goto_b

    :cond_19
    if-ne p2, v5, :cond_1a

    .line 301
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_a

    :cond_1a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 302
    :goto_a
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 303
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 307
    :cond_1b
    :goto_b
    iget-object p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    sub-int v2, v0, v1

    add-int/2addr p3, v2

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 308
    iget p3, p2, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v1

    add-int/2addr p3, v2

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 309
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    sub-int v4, v2, v3

    add-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 310
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v3

    add-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 311
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    sub-int/2addr v0, v1

    int-to-float p3, v0

    add-float/2addr p2, p3

    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 312
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    sub-int/2addr v2, v3

    int-to-float p3, v2

    add-float/2addr p2, p3

    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    :cond_1c
    :goto_c
    return-void
.end method

.method private reconfiguration(Z)V
    .locals 3

    .line 492
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    if-eqz v1, :cond_2

    .line 499
    iget-boolean v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    goto :goto_0

    .line 502
    :cond_3
    invoke-direct {p0, v1}, Lcom/narvii/widget/NVDrawableAnimatedView;->configLayerInfo(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addLayer(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    .line 118
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public addLayerList(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    if-nez v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    return v0

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public getLayerCount()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 243
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 244
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->destroy()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    if-eqz v1, :cond_0

    .line 206
    iget-boolean v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->access$100(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 210
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    iget v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 217
    :cond_2
    iget-object v1, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 214
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 215
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 214
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    .line 195
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 196
    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    const/4 p1, 0x1

    .line 198
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 226
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 227
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    if-eqz v0, :cond_0

    .line 229
    iget-boolean v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 233
    invoke-static {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->access$200(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z

    goto :goto_0

    .line 235
    :cond_2
    invoke-static {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->access$300(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeLayer(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 181
    invoke-static {p1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->access$000(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public replaceLayerList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    if-nez v1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->access$000(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 163
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    if-nez v0, :cond_5

    goto :goto_1

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    .line 169
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    :cond_7
    :goto_2
    return-void
.end method
