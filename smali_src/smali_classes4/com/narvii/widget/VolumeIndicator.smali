.class public Lcom/narvii/widget/VolumeIndicator;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/widget/VolumeIndicator$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/widget/VolumeIndicator$1;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/widget/VolumeIndicator;->update:Ljava/lang/Runnable;

    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    sput-object v0, Lcom/narvii/widget/VolumeIndicator;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    const p2, -0xa12900

    .line 7
    .line 8
    iput p2, p0, Lcom/narvii/widget/VolumeIndicator;->color:I

    .line 9
    .line 10
    const/high16 p2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/widget/VolumeIndicator;->descendRate:F

    .line 13
    const/4 p2, 0x4

    .line 14
    .line 15
    iput p2, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    .line 28
    .line 29
    const/high16 p2, 0x40a00000    # 5.0f

    .line 30
    mul-float/2addr p1, p2

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 38
    .line 39
    new-instance p1, Landroid/graphics/Paint;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    .line 45
    .line 46
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    .line 52
    const/4 p2, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/VolumeIndicator;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/VolumeIndicator;->descendRate:F

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/VolumeIndicator;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/VolumeIndicator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/VolumeIndicator;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/VolumeIndicator;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    return-void
.end method

.method static bridge synthetic f()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/widget/VolumeIndicator;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic g()Ljava/util/HashSet;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getSize(II)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p0, p1

    .line 15
    :goto_0
    return p0
.end method

.method static bridge synthetic h(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/narvii/widget/VolumeIndicator;->scheduled:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v3

    .line 26
    sub-int/2addr v3, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v4

    .line 31
    sub-int/2addr v3, v4

    .line 32
    int-to-float v1, v1

    .line 33
    int-to-float v3, v3

    .line 34
    .line 35
    const/high16 v4, 0x3f000000    # 0.5f

    .line 36
    .line 37
    mul-float v5, v3, v4

    .line 38
    add-float/2addr v1, v5

    .line 39
    int-to-float v2, v2

    .line 40
    .line 41
    .line 42
    const v5, 0x3f4ccccd    # 0.8f

    .line 43
    mul-float/2addr v5, v2

    .line 44
    .line 45
    iget v6, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 46
    int-to-float v6, v6

    .line 47
    div-float/2addr v5, v6

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 51
    move-result v3

    .line 52
    .line 53
    const/high16 v5, 0x40000000    # 2.0f

    .line 54
    div-float/2addr v3, v5

    .line 55
    .line 56
    iget v5, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 57
    .line 58
    iget v6, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 59
    int-to-float v6, v6

    .line 60
    mul-float/2addr v5, v6

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 64
    move-result v5

    .line 65
    .line 66
    iget-object v6, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v7, p0, Lcom/narvii/widget/VolumeIndicator;->color:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    const/4 v6, 0x0

    .line 73
    .line 74
    :goto_0
    if-ge v6, v5, :cond_0

    .line 75
    int-to-float v7, v0

    .line 76
    int-to-float v8, v6

    .line 77
    add-float/2addr v8, v4

    .line 78
    mul-float/2addr v8, v2

    .line 79
    .line 80
    iget v9, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 81
    int-to-float v9, v9

    .line 82
    div-float/2addr v8, v9

    .line 83
    add-float/2addr v7, v8

    .line 84
    .line 85
    iget-object v8, p0, Lcom/narvii/widget/VolumeIndicator;->paint:Landroid/graphics/Paint;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v7, v1, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x41f00000    # 30.0f

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    .line 5
    mul-float/2addr v1, v0

    .line 6
    float-to-int v0, v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/widget/VolumeIndicator;->getSize(II)I

    .line 18
    move-result p1

    .line 19
    .line 20
    const/high16 v0, 0x40a00000    # 5.0f

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/VolumeIndicator;->dp:F

    .line 23
    mul-float/2addr v1, v0

    .line 24
    float-to-int v0, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p2}, Lcom/narvii/widget/VolumeIndicator;->getSize(II)I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method

.method public setValue(FZ)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 5
    int-to-float v1, v1

    .line 6
    mul-float/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    .line 16
    .line 17
    cmpl-float v2, v2, v1

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget v2, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 22
    .line 23
    .line 24
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 25
    move-result v2

    .line 26
    .line 27
    iput v2, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 31
    .line 32
    :goto_0
    iget v2, p0, Lcom/narvii/widget/VolumeIndicator;->current:F

    .line 33
    .line 34
    iget v3, p0, Lcom/narvii/widget/VolumeIndicator;->indicatorCount:I

    .line 35
    int-to-float v3, v3

    .line 36
    mul-float/2addr v2, v3

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eq v0, v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    :cond_1
    if-eqz p2, :cond_2

    .line 48
    const/4 p2, 0x1

    .line 49
    .line 50
    if-le v2, p2, :cond_2

    .line 51
    .line 52
    iget v0, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/widget/VolumeIndicator;->descendRate:F

    .line 55
    mul-float/2addr p1, v1

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 59
    move-result p1

    .line 60
    .line 61
    iput p1, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    .line 62
    .line 63
    sget-object p1, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    sget-boolean p1, Lcom/narvii/widget/VolumeIndicator;->scheduled:Z

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    sget-object p1, Lcom/narvii/widget/VolumeIndicator;->handler:Landroid/os/Handler;

    .line 73
    .line 74
    sget-object v0, Lcom/narvii/widget/VolumeIndicator;->update:Ljava/lang/Runnable;

    .line 75
    .line 76
    const-wide/16 v1, 0xc8

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    .line 81
    sput-boolean p2, Lcom/narvii/widget/VolumeIndicator;->scheduled:Z

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    iput v1, p0, Lcom/narvii/widget/VolumeIndicator;->descendValue:F

    .line 85
    .line 86
    sget-object p1, Lcom/narvii/widget/VolumeIndicator;->scheduleList:Ljava/util/HashSet;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_3
    :goto_1
    return-void
.end method
