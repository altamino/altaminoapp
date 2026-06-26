.class public Lcom/narvii/widget/CheckMarkView;
.super Landroid/view/View;
.source "CheckMarkView.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0xfe3794

.field private static final DEFAULT_DURATION:I = 0xc8

.field private static final RATIO_HEIGHT_WIDTH:F = 0.8333333f


# instance fields
.field private allDistance:F

.field animator:Landroid/animation/ValueAnimator;

.field private centerPoint:Landroid/graphics/Point;

.field private checkColor:I

.field private drawedDistance:F

.field private duration:I

.field private height:I

.field private isChecked:Z

.field private isRunningAnimation:Z

.field private leftDistance:F

.field private marKPoints:[Landroid/graphics/Point;

.field private markPath:Landroid/graphics/Path;

.field private paint:Landroid/graphics/Paint;

.field private rightDistance:F

.field private runedPercent:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CheckMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/CheckMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p2}, Lcom/narvii/widget/CheckMarkView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/widget/CheckMarkView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    return p1
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .locals 9

    .line 128
    iget-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isChecked:Z

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 132
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    iget v1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 133
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->allDistance:F

    iget v4, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    mul-float v0, v0, v4

    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 134
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    mul-float v5, v5, v6

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    .line 135
    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    aget-object v7, v0, v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v6

    div-float/2addr v7, v1

    add-float/2addr v5, v7

    .line 137
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    iput-boolean v3, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 142
    iget p1, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 143
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    goto/16 :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 148
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    iget v1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    iget v4, p0, Lcom/narvii/widget/CheckMarkView;->rightDistance:F

    add-float v5, v1, v4

    const/4 v6, 0x2

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 151
    iget-object v2, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v5, v2, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    aget-object v7, v2, v6

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, v2, v3

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v8, v0, v1

    mul-float v7, v7, v8

    div-float/2addr v7, v4

    add-float/2addr v5, v7

    .line 152
    aget-object v7, v2, v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    aget-object v8, v2, v3

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v2

    int-to-float v2, v8

    sub-float/2addr v0, v1

    mul-float v2, v2, v0

    div-float/2addr v2, v4

    sub-float/2addr v7, v2

    .line 154
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 155
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v2, v1, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    iget p1, p0, Lcom/narvii/widget/CheckMarkView;->allDistance:F

    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 160
    iput-boolean v3, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 163
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object v3, v1, v6

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 166
    iput-boolean v2, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Point;

    .line 62
    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 63
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 64
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 65
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 68
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    const v0, -0xfe3794

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->centerPoint:Landroid/graphics/Point;

    .line 75
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    const/16 p1, 0xc8

    .line 77
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->duration:I

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 210
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/narvii/widget/CheckMarkView;->drawCheckMark(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->width:I

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->height:I

    .line 100
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->centerPoint:Landroid/graphics/Point;

    iget p2, p0, Lcom/narvii/widget/CheckMarkView;->width:I

    const/4 p3, 0x2

    div-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 101
    iget p2, p0, Lcom/narvii/widget/CheckMarkView;->height:I

    div-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 103
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    const p5, 0x3dcccccd    # 0.1f

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Point;->x:I

    .line 104
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p1, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    const p5, 0x3f160419    # 0.586f

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Point;->y:I

    .line 105
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x3eaa7efa    # 0.333f

    mul-float p5, p5, v0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p1, Landroid/graphics/Point;->x:I

    .line 106
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p1, p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x3f666666    # 0.9f

    mul-float p5, p5, v0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p1, Landroid/graphics/Point;->y:I

    .line 107
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p1, p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p1, Landroid/graphics/Point;->x:I

    .line 108
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p1, p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x3e8d4fdf    # 0.276f

    mul-float p5, p5, v0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p1, Landroid/graphics/Point;->y:I

    .line 111
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p5, p1, p4

    iget p5, p5, Landroid/graphics/Point;->x:I

    aget-object p1, p1, p2

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p5, p1

    int-to-double v0, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p5, p1, p4

    iget p5, p5, Landroid/graphics/Point;->y:I

    aget-object p1, p1, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p5, p1

    int-to-double p1, p5

    .line 112
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    .line 113
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p2, p1, p3

    iget p2, p2, Landroid/graphics/Point;->x:I

    aget-object p1, p1, p4

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iget-object p5, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    aget-object p3, p5, p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    aget-object p4, p5, p4

    iget p4, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p4

    int-to-double p3, p3

    .line 114
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr p1, p3

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->rightDistance:F

    .line 115
    iget p1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    iget p2, p0, Lcom/narvii/widget/CheckMarkView;->rightDistance:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->allDistance:F

    .line 117
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/narvii/widget/CheckMarkView;->width:I

    int-to-float p2, p2

    const p3, 0x3f555555

    mul-float p2, p2, p3

    const/high16 p3, 0x3e800000    # 0.25f

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public reset(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 200
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    .line 201
    invoke-virtual {p0, p1}, Lcom/narvii/widget/CheckMarkView;->showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isChecked:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 178
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 179
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/narvii/widget/CheckMarkView;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/widget/CheckMarkView$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/CheckMarkView$1;-><init>(Lcom/narvii/widget/CheckMarkView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
