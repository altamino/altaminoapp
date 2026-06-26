.class public Lcom/narvii/chat/p2a/PressRecordButton;
.super Landroid/view/View;
.source "PressRecordButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/p2a/PressRecordButton$PressListener;
    }
.end annotation


# instance fields
.field public cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

.field private paint:Landroid/graphics/Paint;

.field private pressed:Z

.field public pressedListener:Lcom/narvii/chat/p2a/PressRecordButton$PressListener;

.field private prevTime:J

.field private progress:F

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method private c(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 65
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 67
    iget-wide v4, v0, Lcom/narvii/chat/p2a/PressRecordButton;->prevTime:J

    const/high16 v6, 0x40400000    # 3.0f

    const-wide/16 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmp-long v10, v4, v7

    if-eqz v10, :cond_1

    sub-long v10, v2, v4

    const-wide/16 v12, 0x14

    cmp-long v14, v10, v12

    if-gez v14, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v9

    const v3, 0x41855604    # 16.667f

    div-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 68
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    const/high16 v10, 0x40a00000    # 5.0f

    .line 73
    iget v11, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    invoke-direct {p0, v6, v10, v11}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v5, v6, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 75
    iget-boolean v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    cmpg-float v10, v6, v9

    if-gez v10, :cond_2

    sub-float v10, v9, v6

    const v11, 0x3ca3d70a    # 0.02f

    mul-float v10, v10, v10

    const v12, 0x3e851eb8    # 0.26f

    mul-float v10, v10, v12

    add-float/2addr v10, v11

    mul-float v10, v10, v2

    add-float/2addr v6, v10

    .line 78
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 80
    :cond_2
    iget-boolean v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    const/4 v10, 0x0

    if-nez v6, :cond_3

    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    cmpl-float v11, v6, v10

    if-lez v11, :cond_3

    const v11, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v11

    sub-float/2addr v6, v2

    .line 81
    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 84
    :cond_3
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    const v6, -0x15edee

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    int-to-float v3, v4

    iget v4, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {p0, v6, v11, v4}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    move-result v4

    mul-float v4, v4, v3

    const v12, 0x3ec28f5c    # 0.38f

    iget v13, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    const/high16 v14, 0x3e800000    # 0.25f

    invoke-direct {p0, v14, v12, v13}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    move-result v12

    mul-float v12, v12, v3

    const/high16 v13, 0x3fc00000    # 1.5f

    mul-float v13, v13, v5

    sub-float/2addr v12, v13

    iget-object v13, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    iget v4, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    invoke-direct {p0, v6, v11, v4}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    move-result v4

    mul-float v4, v4, v3

    .line 89
    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    invoke-direct {p0, v14, v11, v6}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    move-result v6

    mul-float v3, v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    sub-float/2addr v3, v6

    .line 90
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    const v11, 0xffffff

    const/high16 v12, 0x437f0000    # 255.0f

    iget v13, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    invoke-direct {p0, v9, v14, v13}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    move-result v13

    mul-float v13, v13, v12

    float-to-int v12, v13

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v5, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v5, v0, Lcom/narvii/chat/p2a/PressRecordButton;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/narvii/chat/video/CameraRenderer;->getRecordDuration()J

    move-result-wide v5

    cmp-long v11, v5, v7

    if-lez v11, :cond_4

    .line 97
    iget-object v5, v0, Lcom/narvii/chat/p2a/PressRecordButton;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v5}, Lcom/narvii/chat/video/CameraRenderer;->getRecordTime()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v5, v5, v9

    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v6}, Lcom/narvii/chat/video/CameraRenderer;->getRecordDuration()J

    move-result-wide v11

    long-to-float v6, v11

    div-float/2addr v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 99
    :goto_2
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->rectF:Landroid/graphics/RectF;

    sub-float v11, v2, v3

    iput v11, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    .line 100
    iput v2, v6, Landroid/graphics/RectF;->right:F

    sub-float v2, v4, v3

    .line 101
    iput v2, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    .line 102
    iput v4, v6, Landroid/graphics/RectF;->bottom:F

    .line 103
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v4, v4, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 106
    iget v1, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_5

    cmpl-float v1, v1, v9

    if-nez v1, :cond_6

    .line 107
    :cond_5
    iput-wide v7, v0, Lcom/narvii/chat/p2a/PressRecordButton;->prevTime:J

    .line 109
    :cond_6
    iget v1, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_7

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressedListener:Lcom/narvii/chat/p2a/PressRecordButton$PressListener;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1, v2}, Lcom/narvii/chat/p2a/PressRecordButton$PressListener;->onPress(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_1
    return v1

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 59
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 54
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressedListener:Lcom/narvii/chat/p2a/PressRecordButton$PressListener;

    invoke-interface {p1, v1}, Lcom/narvii/chat/p2a/PressRecordButton$PressListener;->onPress(Z)Z

    .line 55
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method
