.class public Lcom/narvii/widget/VolumeIndicator;
.super Landroid/view/View;
.source "VolumeIndicator.java"


# static fields
.field private static final DESCEND_INTERVAL:I = 0xc8

.field private static final handler:Landroid/os/Handler;

.field private static scheduleList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/narvii/widget/VolumeIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private static scheduled:Z

.field private static final update:Ljava/lang/Runnable;


# instance fields
.field private color:I

.field private current:F

.field private descendRate:F

.field private descendValue:F

.field private dp:F

.field private indicatorCount:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    .line 24
    new-instance v0, Lcom/narvii/widget/VolumeIndicator$1;

    invoke-direct {v0}, Lcom/narvii/widget/VolumeIndicator$1;-><init>()V

    sput-object v0, Lcom/narvii/widget/VolumeIndicator;->update:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/widget/VolumeIndicator;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0xa12900

    .line 47
    iput p2, p0, Lcom/narvii/widget/VolumeIndicator;->color:I

    const/high16 p2, 0x3f000000    # 0.5f

    .line 51
    iput p2, p0, Lcom/narvii/widget/VolumeIndicator;->descendRate:F

    const/4 p2, 0x4

    .line 52
    iput p2, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    .line 58
    iget p1, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    .line 60
    iget-object p1, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object p1, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .line 18
    sget-object v0, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Lcom/narvii/widget/VolumeIndicator;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/widget/VolumeIndicator;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/widget/VolumeIndicator;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/widget/VolumeIndicator;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/narvii/widget/VolumeIndicator;->descendRate:F

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/widget/VolumeIndicator;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    return p0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 18
    sget-object v0, Lcom/narvii/widget/VolumeIndicator;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 18
    sput-boolean p0, Lcom/narvii/widget/VolumeIndicator;->scheduled:Z

    return p0
.end method

.method private static getSize(II)I
    .locals 2

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    add-float/2addr v1, v5

    int-to-float v2, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v2

    .line 119
    iget v6, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 121
    iget v5, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    iget v6, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 122
    iget-object v6, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/narvii/widget/VolumeIndicator;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    int-to-float v7, v0

    int-to-float v8, v6

    add-float/2addr v8, v4

    mul-float v8, v8, v2

    .line 124
    iget v9, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 125
    iget-object v8, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v1, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 66
    iget v0, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Lcom/narvii/widget/VolumeIndicator;->getSize(II)I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Lcom/narvii/widget/VolumeIndicator;->getSize(II)I

    move-result p2

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setValue(FZ)V
    .locals 4

    .line 88
    iget v0, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    iget v1, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 89
    iget v2, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 90
    iget v2, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    goto :goto_0

    .line 92
    :cond_0
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 94
    :goto_0
    iget v2, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    iget v3, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-le v2, p2, :cond_2

    .line 99
    iget v0, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    iget v1, p0, Lcom/narvii/widget/VolumeIndicator;->descendRate:F

    mul-float p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    .line 100
    sget-object p1, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-boolean p1, Lcom/narvii/widget/VolumeIndicator;->scheduled:Z

    if-nez p1, :cond_3

    .line 102
    sget-object p1, Lcom/narvii/widget/VolumeIndicator;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/narvii/widget/VolumeIndicator;->update:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    sput-boolean p2, Lcom/narvii/widget/VolumeIndicator;->scheduled:Z

    goto :goto_1

    .line 106
    :cond_2
    iput v1, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    .line 107
    sget-object p1, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method
