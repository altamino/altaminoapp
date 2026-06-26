.class public Lcom/narvii/widget/VersatileLoaderView;
.super Landroid/view/View;
.source "VersatileLoaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/VersatileLoaderView$SavedState;,
        Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;,
        Lcom/narvii/widget/VersatileLoaderView$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREOLD:I = 0x1e


# instance fields
.field public final DEFAULT_MIN_VALUE:I

.field private currentStatus:I

.field private doClip:Z

.field private fillDuration:J

.field private fillPaint:Landroid/graphics/Paint;

.field private finalPercentage:F

.field halfsqrt3:F

.field private initialTime:J

.field private innerFillColor:I

.field private mode:I

.field private outerFillColor:I

.field private outerLinePath:Landroid/graphics/Path;

.field private previousFramePercentage:F

.field private previousFramePercentageTime:J

.field private projectPath:Landroid/graphics/Path;

.field private final ratioForProjectionHeight:F

.field sqrt3:F

.field public stateChangeListener:Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;

.field private strokeColor:I

.field private strokePaint:Landroid/graphics/Paint;

.field private strokeWidth:F

.field transformPath1:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/VersatileLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/VersatileLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f59999a    # 0.85f

    .line 35
    iput p3, p0, Lcom/narvii/widget/VersatileLoaderView;->ratioForProjectionHeight:F

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/narvii/widget/VersatileLoaderView;->DEFAULT_MIN_VALUE:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    .line 80
    sget-object v1, Lcom/narvii/amino/R$styleable;->VersatileLoaderView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, -0xeb3401

    .line 81
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    const/4 p2, 0x3

    const v0, -0xff673b

    .line 82
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->outerFillColor:I

    const/4 p2, 0x5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->strokeWidth:F

    const/4 p2, 0x4

    const/high16 v0, -0x10000

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->strokeColor:I

    const/16 p2, 0x4b0

    .line 85
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillDuration:J

    const/4 p2, 0x2

    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->mode:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/narvii/widget/VersatileLoaderView;->initView()V

    return-void
.end method

.method private changeStatus(I)V
    .locals 1

    .line 280
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 281
    :cond_0
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    .line 282
    iget-object p1, p0, Lcom/narvii/widget/VersatileLoaderView;->stateChangeListener:Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;

    if-eqz p1, :cond_1

    .line 283
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    invoke-interface {p1, v0}, Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;->onStateChange(I)V

    :cond_1
    return-void
.end method

.method private filterMinValue(F)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, -0xe5e6

    .line 212
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    const v0, -0x60fce5

    .line 213
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->outerFillColor:I

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 216
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    goto :goto_0

    .line 218
    :cond_1
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    :goto_0
    return-void
.end method

.method private getPercentage(J)F
    .locals 4

    .line 236
    iget-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentageTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillDuration:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 239
    :cond_0
    iget p2, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p2, p1

    mul-float p1, p1, p2

    .line 240
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentageTime:J

    return p2
.end method

.method private initFillPaint()V
    .locals 2

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initStrikePaint()V
    .locals 2

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/VersatileLoaderView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/narvii/widget/VersatileLoaderView;->initFillPaint()V

    .line 98
    invoke-direct {p0}, Lcom/narvii/widget/VersatileLoaderView;->initStrikePaint()V

    .line 100
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 102
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->sqrt3:F

    .line 105
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->sqrt3:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->halfsqrt3:F

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    return-void
.end method

.method private neeKeepDrawing(J)Z
    .locals 0

    .line 276
    iget p1, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    iget p2, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private transformRect(Landroid/graphics/Canvas;FLandroid/view/View;FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p5, p5, v0

    add-float/2addr p4, p5

    .line 247
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    int-to-float p3, p5

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p4, p2, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method private transformTriangle(Landroid/graphics/Canvas;FLandroid/view/View;FFFF)V
    .locals 5

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v3, p5, v2

    add-float/2addr v3, p4

    const v4, 0x3f59999a    # 0.85f

    mul-float p5, p5, v4

    sub-float v4, p7, p6

    mul-float p2, p2, v4

    div-float/2addr p2, v1

    add-float/2addr p6, p2

    sub-float/2addr p7, p2

    .line 257
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 258
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    int-to-float v0, v0

    add-float/2addr p6, v0

    invoke-virtual {p2, p6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    mul-float p5, p5, v2

    add-float/2addr p4, p5

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    sub-float/2addr p7, v0

    invoke-virtual {p2, p7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 262
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x12

    if-ge p2, p3, :cond_0

    const/16 p3, 0xb

    if-lt p2, p3, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 264
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 266
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    if-eqz p2, :cond_1

    .line 268
    :try_start_0
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 126
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    iget v0, v8, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 129
    invoke-direct {v8, v1}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v8, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentageTime:J

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    sub-long v10, v2, v4

    .line 134
    invoke-direct {v8, v10, v11}, Lcom/narvii/widget/VersatileLoaderView;->getPercentage(J)F

    move-result v0

    .line 135
    iget v2, v8, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    const/4 v12, 0x2

    if-ne v2, v12, :cond_1

    .line 136
    iget v0, v8, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    :cond_1
    move v13, v0

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 145
    iget v3, v8, Lcom/narvii/widget/VersatileLoaderView;->mode:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v1, :cond_2

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    move v15, v3

    move v14, v6

    move v3, v0

    move v0, v5

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    iget v6, v8, Lcom/narvii/widget/VersatileLoaderView;->sqrt3:F

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 153
    iget v5, v8, Lcom/narvii/widget/VersatileLoaderView;->halfsqrt3:F

    mul-float v5, v5, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    div-float/2addr v0, v4

    int-to-float v6, v2

    sub-float/2addr v6, v5

    div-float/2addr v6, v4

    move v15, v5

    move v14, v6

    :goto_0
    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    if-gez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, v0

    .line 159
    :goto_1
    iget v0, v8, Lcom/narvii/widget/VersatileLoaderView;->mode:I

    if-ne v0, v1, :cond_4

    .line 160
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    div-float v1, v3, v4

    add-float/2addr v1, v6

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 161
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    div-float v1, v3, v4

    add-float/2addr v1, v6

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    add-float v1, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    add-float v2, v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 171
    :goto_2
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 172
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 173
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v7, v6, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move-object/from16 v3, p0

    move v4, v14

    move v5, v15

    .line 176
    invoke-direct/range {v0 .. v7}, Lcom/narvii/widget/VersatileLoaderView;->transformTriangle(Landroid/graphics/Canvas;FLandroid/view/View;FFFF)V

    .line 177
    iget-boolean v0, v8, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 183
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move-object/from16 v3, p0

    move v4, v14

    move v5, v15

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/VersatileLoaderView;->transformRect(Landroid/graphics/Canvas;FLandroid/view/View;FF)V

    .line 185
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 189
    invoke-direct {v8, v10, v11}, Lcom/narvii/widget/VersatileLoaderView;->neeKeepDrawing(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_3

    .line 192
    :cond_6
    invoke-direct {v8, v12}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    :goto_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 298
    check-cast p1, Lcom/narvii/widget/VersatileLoaderView$SavedState;

    .line 299
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 300
    iget p1, p1, Lcom/narvii/widget/VersatileLoaderView$SavedState;->finalPercentage:F

    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 290
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/narvii/widget/VersatileLoaderView$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/widget/VersatileLoaderView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 292
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    iput v0, v1, Lcom/narvii/widget/VersatileLoaderView$SavedState;->finalPercentage:F

    return-object v1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, v0}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    const-wide/16 v0, 0x0

    .line 230
    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    .line 232
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setNewFinalPercentage(F)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/narvii/widget/VersatileLoaderView;->filterMinValue(F)V

    .line 200
    invoke-virtual {p0}, Lcom/narvii/widget/VersatileLoaderView;->start()V

    return-void
.end method

.method public setStateChangeListener(Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/widget/VersatileLoaderView;->stateChangeListener:Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;

    return-void
.end method

.method public setToFinalFrame(F)V
    .locals 2

    .line 204
    invoke-direct {p0, p1}, Lcom/narvii/widget/VersatileLoaderView;->filterMinValue(F)V

    const-wide/16 v0, 0x1

    .line 205
    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    const/4 p1, 0x2

    .line 206
    invoke-direct {p0, p1}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 207
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 225
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
