.class public Lcom/narvii/widget/shadow/ShadowConfig;
.super Ljava/lang/Object;
.source "ShadowConfig.java"


# instance fields
.field public circleShadowPaint:Landroid/graphics/Paint;

.field public contentBounds:Landroid/graphics/RectF;

.field public cornerShadowPaintLB:Landroid/graphics/Paint;

.field public cornerShadowPaintLT:Landroid/graphics/Paint;

.field public cornerShadowPaintRB:Landroid/graphics/Paint;

.field public cornerShadowPaintRT:Landroid/graphics/Paint;

.field public cornerShadowPathLB:Landroid/graphics/Path;

.field public cornerShadowPathLT:Landroid/graphics/Path;

.field public cornerShadowPathRB:Landroid/graphics/Path;

.field public cornerShadowPathRT:Landroid/graphics/Path;

.field public edgeShadowPaintLB:Landroid/graphics/Paint;

.field public edgeShadowPaintLT:Landroid/graphics/Paint;

.field public edgeShadowPaintRB:Landroid/graphics/Paint;

.field public edgeShadowPaintRT:Landroid/graphics/Paint;

.field public innerBounds:Landroid/graphics/RectF;

.field public outerBoundsCircle:Landroid/graphics/RectF;

.field public outerBoundsLB:Landroid/graphics/RectF;

.field public outerBoundsLT:Landroid/graphics/RectF;

.field public outerBoundsRB:Landroid/graphics/RectF;

.field public outerBoundsRT:Landroid/graphics/RectF;

.field public shadowCornerRadius:F

.field public shadowEndColor:I

.field public shadowMiddleColor:I

.field public shadowOffsetX:I

.field public shadowOffsetY:I

.field public shadowSize:I

.field public shadowStartColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FI[II)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 51
    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 52
    iput p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    const/4 p1, 0x0

    .line 53
    aget p2, p4, p1

    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    const/4 p2, 0x1

    .line 54
    aget p2, p4, p2

    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 55
    invoke-static {p5}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    const/16 p3, 0xff

    if-ne p2, p3, :cond_0

    .line 57
    div-int/lit8 p2, p2, 0x2

    :cond_0
    if-ne p2, p3, :cond_1

    int-to-float p3, p2

    const/high16 p4, 0x437f0000    # 255.0f

    div-float/2addr p3, p4

    .line 59
    invoke-static {p5, p3}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, p5

    :goto_0
    iput p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    int-to-float p2, p2

    const/high16 p3, 0x43ff0000    # 510.0f

    div-float/2addr p2, p3

    .line 60
    invoke-static {p5, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    const p2, 0x3b808081

    .line 61
    invoke-static {p5, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    .line 63
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    .line 64
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    .line 65
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    .line 66
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 68
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLB:Landroid/graphics/Paint;

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRT:Landroid/graphics/Paint;

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRB:Landroid/graphics/Paint;

    .line 72
    new-instance p2, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->circleShadowPaint:Landroid/graphics/Paint;

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 74
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLB:Landroid/graphics/Paint;

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRT:Landroid/graphics/Paint;

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRB:Landroid/graphics/Paint;

    .line 78
    invoke-direct {p0}, Lcom/narvii/widget/shadow/ShadowConfig;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 85
    :cond_0
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    goto :goto_2

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    goto :goto_3

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 102
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    if-nez v0, :cond_4

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    goto :goto_4

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 107
    :goto_4
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    goto :goto_5

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_5
    return-void
.end method

.method private prepareCircleShadowPaint(Landroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v0, p0

    .line 151
    iget-object v1, v0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 152
    iget-object v1, v0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v3, 0x3f666666    # 0.9f

    mul-float v1, v1, v3

    iget-object v3, v0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    .line 154
    new-instance v13, Landroid/graphics/RadialGradient;

    iget-object v6, v0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v6, v0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v6, v0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v9, v6, v5

    const/4 v5, 0x4

    new-array v10, v5, [I

    const/4 v6, 0x0

    aput v6, v10, v6

    iget v11, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    const/4 v12, 0x1

    aput v11, v10, v12

    iget v11, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    const/4 v14, 0x2

    aput v11, v10, v14

    iget v11, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    const/4 v15, 0x3

    aput v11, v10, v15

    new-array v11, v5, [F

    aput v2, v11, v6

    aput v1, v11, v12

    aput v4, v11, v14

    aput v3, v11, v15

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method private prepareCornerShadowPaint(Landroid/graphics/Paint;F)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    .line 161
    iget v2, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    div-float v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 163
    new-instance v8, Landroid/graphics/RadialGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v9, v7, [I

    const/4 v10, 0x0

    aput v10, v9, v10

    iget v11, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    const/4 v12, 0x1

    aput v11, v9, v12

    iget v11, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    const/4 v13, 0x2

    aput v11, v9, v13

    iget v11, v0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    const/4 v14, 0x3

    aput v11, v9, v14

    new-array v7, v7, [F

    aput v1, v7, v10

    aput v2, v7, v12

    aput v4, v7, v13

    aput v3, v7, v14

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    move v2, v5

    move v3, v6

    move/from16 v4, p2

    move-object v5, v9

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method private prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V
    .locals 10

    .line 168
    new-instance v8, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/4 v0, 0x3

    new-array v5, v0, [I

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    const/4 v9, 0x0

    aput v1, v5, v9

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    const/4 v3, 0x1

    aput v1, v5, v3

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    const/4 v3, 0x2

    aput v1, v5, v3

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V
    .locals 3

    .line 142
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 143
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, p3

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    .line 145
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 146
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x43870000    # 270.0f

    sub-float/2addr v0, p3

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr p3, v2

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public prepareShadow()V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    :goto_0
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v3, v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 117
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-ltz v1, :cond_2

    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v1, v1

    int-to-float v1, v1

    :goto_2
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v3, v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 119
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_4

    :cond_4
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    :goto_4
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    if-ltz v2, :cond_5

    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v3, v3

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_5

    :cond_5
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    int-to-float v2, v2

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 121
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    if-ltz v1, :cond_6

    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    goto :goto_6

    :cond_6
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v1, v1

    int-to-float v1, v1

    :goto_6
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-ltz v2, :cond_7

    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v3, v3

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_7

    :cond_7
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v2

    int-to-float v2, v2

    :goto_7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    neg-int v2, v1

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 124
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 125
    :goto_8
    iget-object v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    mul-float v6, v6, v2

    sub-float/2addr v5, v6

    cmpl-float v2, v5, v4

    if-lez v2, :cond_9

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    .line 126
    :goto_9
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    const v5, 0x402ccccd    # 2.7f

    if-eqz v0, :cond_a

    const/4 v6, 0x0

    goto :goto_a

    :cond_a
    const v6, 0x402ccccd    # 2.7f

    :goto_a
    invoke-direct {p0, v2, v3, v6}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 127
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    if-eqz v1, :cond_b

    const/4 v6, 0x0

    goto :goto_b

    :cond_b
    const v6, 0x402ccccd    # 2.7f

    :goto_b
    invoke-direct {p0, v2, v3, v6}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 128
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    const v1, 0x402ccccd    # 2.7f

    :goto_c
    invoke-direct {p0, v2, v3, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 129
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    const v4, 0x402ccccd    # 2.7f

    :goto_d
    invoke-direct {p0, v1, v2, v4}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 130
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 131
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLB:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 132
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRT:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 133
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRB:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 134
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->circleShadowPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCircleShadowPaint(Landroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 136
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLB:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 137
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRT:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 138
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRB:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 174
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 175
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 176
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 177
    invoke-direct {p0}, Lcom/narvii/widget/shadow/ShadowConfig;->init()V

    return-void
.end method
