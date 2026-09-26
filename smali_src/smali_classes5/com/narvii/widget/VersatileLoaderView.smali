.class public Lcom/narvii/widget/VersatileLoaderView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/VersatileLoaderView$State;,
        Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;,
        Lcom/narvii/widget/VersatileLoaderView$SavedState;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/VersatileLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/VersatileLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f59999a    # 0.85f

    iput p3, p0, Lcom/narvii/widget/VersatileLoaderView;->ratioForProjectionHeight:F

    const/4 p3, 0x0

    iput p3, p0, Lcom/narvii/widget/VersatileLoaderView;->DEFAULT_MIN_VALUE:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    .line 4
    sget-object v1, Lcom/narvii/amino/R$styleable;->VersatileLoaderView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, -0xeb3401

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    const/4 p2, 0x3

    const v0, -0xff673b

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->outerFillColor:I

    const/4 p2, 0x5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->strokeWidth:F

    const/4 p2, 0x4

    const/high16 v0, -0x10000

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->strokeColor:I

    const/16 p2, 0x4b0

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillDuration:J

    const/4 p2, 0x2

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VersatileLoaderView;->mode:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-direct {p0}, Lcom/narvii/widget/VersatileLoaderView;->initView()V

    return-void
.end method

.method private changeStatus(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->stateChangeListener:Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;->onStateChange(I)V

    .line 15
    :cond_1
    return-void
.end method

.method private filterMinValue(F)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, -0xe5e6

    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    const v0, -0x60fce5

    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->outerFillColor:I

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    :goto_0
    return-void
.end method

.method private getPercentage(J)F
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentageTime:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    long-to-float p1, p1

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillDuration:J

    .line 7
    long-to-float p2, v0

    .line 8
    div-float/2addr p1, p2

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    cmpg-float v0, p1, p2

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    move p1, p2

    .line 15
    .line 16
    :cond_0
    iget p2, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    .line 19
    mul-float/2addr v0, p1

    .line 20
    add-float/2addr p2, v0

    .line 21
    .line 22
    const/high16 p1, 0x42c80000    # 100.0f

    .line 23
    div-float/2addr p2, p1

    .line 24
    mul-float/2addr p1, p2

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 33
    sub-long/2addr v0, v2

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentageTime:J

    .line 36
    return p2
.end method

.method private initFillPaint()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    return-void
.end method

.method private initStrikePaint()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->strokePaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/VersatileLoaderView;->strokeColor:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/VersatileLoaderView;->initFillPaint()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/VersatileLoaderView;->initStrikePaint()V

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Path;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Path;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 28
    .line 29
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    move-result-wide v0

    .line 34
    double-to-float v0, v0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->sqrt3:F

    .line 37
    .line 38
    const/high16 v1, 0x40000000    # 2.0f

    .line 39
    div-float/2addr v0, v1

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->halfsqrt3:F

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 46
    return-void
.end method

.method private neeKeepDrawing(J)Z
    .locals 0

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

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    sub-float/2addr v0, p2

    .line 4
    mul-float/2addr p5, v0

    .line 5
    add-float/2addr p4, p5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 9
    move-result p2

    .line 10
    int-to-float p2, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 14
    move-result p5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    move-result p3

    .line 19
    sub-int/2addr p5, p3

    .line 20
    int-to-float p3, p5

    .line 21
    const/4 p5, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p5, p4, p2, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 25
    return-void
.end method

.method private transformTriangle(Landroid/graphics/Canvas;FLandroid/view/View;FFFF)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    sub-float/2addr v2, p2

    .line 15
    .line 16
    mul-float v3, p5, v2

    .line 17
    add-float/2addr v3, p4

    .line 18
    .line 19
    .line 20
    const v4, 0x3f59999a    # 0.85f

    .line 21
    mul-float/2addr p5, v4

    .line 22
    .line 23
    sub-float v4, p7, p6

    .line 24
    mul-float/2addr p2, v4

    .line 25
    div-float/2addr p2, v1

    .line 26
    add-float/2addr p6, p2

    .line 27
    sub-float/2addr p7, p2

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 35
    int-to-float v0, v0

    .line 36
    add-float/2addr p6, v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 45
    move-result p3

    .line 46
    int-to-float p3, p3

    .line 47
    div-float/2addr p3, v1

    .line 48
    mul-float/2addr p5, v2

    .line 49
    add-float/2addr p4, p5

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 55
    sub-float/2addr p7, v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 64
    .line 65
    iget-boolean p2, p0, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    :try_start_0
    iget-object p2, p0, Lcom/narvii/widget/VersatileLoaderView;->transformPath1:Landroid/graphics/Path;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    const/4 p1, 0x0

    .line 75
    .line 76
    iput-boolean p1, p0, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    .line 77
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    iget v0, v8, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v8, v1}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v2

    .line 20
    .line 21
    iget-wide v4, v8, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 22
    sub-long/2addr v2, v4

    .line 23
    .line 24
    iput-wide v2, v8, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentageTime:J

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    iget-wide v4, v8, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 31
    .line 32
    sub-long v10, v2, v4

    .line 33
    .line 34
    .line 35
    invoke-direct {v8, v10, v11}, Lcom/narvii/widget/VersatileLoaderView;->getPercentage(J)F

    .line 36
    move-result v0

    .line 37
    .line 38
    iget v2, v8, Lcom/narvii/widget/VersatileLoaderView;->currentStatus:I

    .line 39
    const/4 v12, 0x2

    .line 40
    .line 41
    if-ne v2, v12, :cond_1

    .line 42
    .line 43
    iget v0, v8, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    .line 44
    .line 45
    const/high16 v2, 0x42c80000    # 100.0f

    .line 46
    div-float/2addr v0, v2

    .line 47
    :cond_1
    move v13, v0

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v2

    .line 56
    .line 57
    iget v3, v8, Lcom/narvii/widget/VersatileLoaderView;->mode:I

    .line 58
    .line 59
    const/high16 v4, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-ne v3, v1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 69
    move-result v3

    .line 70
    sub-int/2addr v0, v3

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 74
    move-result v3

    .line 75
    sub-int/2addr v0, v3

    .line 76
    int-to-float v0, v0

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 80
    move-result v3

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 84
    move-result v5

    .line 85
    sub-int/2addr v3, v5

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 89
    move-result v5

    .line 90
    sub-int/2addr v3, v5

    .line 91
    int-to-float v3, v3

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 95
    move-result v5

    .line 96
    int-to-float v5, v5

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 100
    move-result v6

    .line 101
    int-to-float v6, v6

    .line 102
    move v15, v3

    .line 103
    move v14, v6

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 108
    move-result v3

    .line 109
    int-to-float v3, v3

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 113
    move-result v5

    .line 114
    int-to-float v5, v5

    .line 115
    mul-float/2addr v5, v4

    .line 116
    .line 117
    iget v6, v8, Lcom/narvii/widget/VersatileLoaderView;->sqrt3:F

    .line 118
    div-float/2addr v5, v6

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 122
    move-result v3

    .line 123
    .line 124
    iget v5, v8, Lcom/narvii/widget/VersatileLoaderView;->halfsqrt3:F

    .line 125
    mul-float/2addr v5, v3

    .line 126
    int-to-float v0, v0

    .line 127
    sub-float/2addr v0, v3

    .line 128
    div-float/2addr v0, v4

    .line 129
    int-to-float v6, v2

    .line 130
    sub-float/2addr v6, v5

    .line 131
    div-float/2addr v6, v4

    .line 132
    move v15, v5

    .line 133
    move v14, v6

    .line 134
    move v5, v0

    .line 135
    move v0, v3

    .line 136
    :goto_0
    const/4 v3, 0x0

    .line 137
    .line 138
    cmpg-float v6, v5, v3

    .line 139
    .line 140
    if-gez v6, :cond_3

    .line 141
    move v6, v3

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    move v6, v5

    .line 144
    .line 145
    :goto_1
    iget v3, v8, Lcom/narvii/widget/VersatileLoaderView;->mode:I

    .line 146
    .line 147
    if-ne v3, v1, :cond_4

    .line 148
    .line 149
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 150
    .line 151
    div-float v3, v0, v4

    .line 152
    add-float/2addr v3, v6

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    .line 157
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 161
    move-result v3

    .line 162
    .line 163
    sub-int v3, v2, v3

    .line 164
    int-to-float v3, v3

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    .line 169
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 173
    move-result v3

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 177
    move-result v4

    .line 178
    sub-int/2addr v3, v4

    .line 179
    int-to-float v3, v3

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 183
    move-result v4

    .line 184
    sub-int/2addr v2, v4

    .line 185
    int-to-float v2, v2

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    .line 190
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_4
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 197
    .line 198
    div-float v2, v0, v4

    .line 199
    add-float/2addr v2, v6

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    .line 204
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 205
    .line 206
    add-float v2, v14, v15

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 210
    move-result v3

    .line 211
    int-to-float v3, v3

    .line 212
    .line 213
    sub-float v3, v2, v3

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    .line 218
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 219
    .line 220
    add-float v3, v6, v0

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 224
    move-result v4

    .line 225
    int-to-float v4, v4

    .line 226
    sub-float/2addr v2, v4

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    .line 231
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 235
    .line 236
    :goto_2
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 240
    .line 241
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    .line 242
    .line 243
    iget-object v2, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 247
    .line 248
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 255
    .line 256
    add-float v7, v6, v0

    .line 257
    .line 258
    move-object/from16 v0, p0

    .line 259
    .line 260
    move-object/from16 v1, p1

    .line 261
    move v2, v13

    .line 262
    .line 263
    move-object/from16 v3, p0

    .line 264
    move v4, v14

    .line 265
    move v5, v15

    .line 266
    .line 267
    .line 268
    invoke-direct/range {v0 .. v7}, Lcom/narvii/widget/VersatileLoaderView;->transformTriangle(Landroid/graphics/Canvas;FLandroid/view/View;FFFF)V

    .line 269
    .line 270
    iget-boolean v0, v8, Lcom/narvii/widget/VersatileLoaderView;->doClip:Z

    .line 271
    .line 272
    if-eqz v0, :cond_5

    .line 273
    .line 274
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 275
    .line 276
    iget v1, v8, Lcom/narvii/widget/VersatileLoaderView;->innerFillColor:I

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    .line 281
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->projectPath:Landroid/graphics/Path;

    .line 282
    .line 283
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    .line 291
    .line 292
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    .line 294
    move-object/from16 v0, p0

    .line 295
    .line 296
    move-object/from16 v1, p1

    .line 297
    move v2, v13

    .line 298
    .line 299
    move-object/from16 v3, p0

    .line 300
    move v4, v14

    .line 301
    move v5, v15

    .line 302
    .line 303
    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/VersatileLoaderView;->transformRect(Landroid/graphics/Canvas;FLandroid/view/View;FF)V

    .line 305
    .line 306
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 307
    .line 308
    iget v1, v8, Lcom/narvii/widget/VersatileLoaderView;->outerFillColor:I

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    .line 313
    iget-object v0, v8, Lcom/narvii/widget/VersatileLoaderView;->outerLinePath:Landroid/graphics/Path;

    .line 314
    .line 315
    iget-object v1, v8, Lcom/narvii/widget/VersatileLoaderView;->fillPaint:Landroid/graphics/Paint;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 322
    .line 323
    .line 324
    invoke-direct {v8, v10, v11}, Lcom/narvii/widget/VersatileLoaderView;->neeKeepDrawing(J)Z

    .line 325
    move-result v0

    .line 326
    .line 327
    if-eqz v0, :cond_6

    .line 328
    .line 329
    .line 330
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 331
    goto :goto_3

    .line 332
    .line 333
    .line 334
    :cond_6
    invoke-direct {v8, v12}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 335
    :goto_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/VersatileLoaderView$SavedState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/widget/VersatileLoaderView$SavedState;->finalPercentage:F

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/widget/VersatileLoaderView$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/widget/VersatileLoaderView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/VersatileLoaderView;->finalPercentage:F

    .line 12
    .line 13
    iput v0, v1, Lcom/narvii/widget/VersatileLoaderView$SavedState;->finalPercentage:F

    .line 14
    return-object v1
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/widget/VersatileLoaderView;->previousFramePercentage:F

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 15
    return-void
.end method

.method public setNewFinalPercentage(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/VersatileLoaderView;->filterMinValue(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/VersatileLoaderView;->start()V

    .line 7
    return-void
.end method

.method public setStateChangeListener(Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/VersatileLoaderView;->stateChangeListener:Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;

    return-void
.end method

.method public setToFinalFrame(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/VersatileLoaderView;->filterMinValue(F)V

    .line 4
    .line 5
    const-wide/16 v0, 0x1

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 8
    const/4 p1, 0x2

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 15
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/widget/VersatileLoaderView;->changeStatus(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/narvii/widget/VersatileLoaderView;->initialTime:J

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 14
    return-void
.end method
