.class public final Lcom/narvii/video/widget/FrameItemMaskView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private clipRadius:F

.field private clipRightEnd:F

.field private isLeftEdge:Z

.field private isRightEdge:Z

.field private isShowBorder:Z

.field private isShowRound:Z

.field private final path:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 7
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 16
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, -0x1

    .line 18
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 20
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 25
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, -0x1

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final drawBorderPath(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowBorder:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x4

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    move v4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v4, p3

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    move v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v5, p4

    .line 16
    .line 17
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 18
    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    const/high16 p5, -0x3b860000    # -1000.0f

    .line 22
    :cond_2
    move v6, p5

    .line 23
    move-object v1, p0

    .line 24
    move v2, p1

    .line 25
    move v3, p2

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder(ZZZZF)V

    .line 29
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    mul-float/2addr v0, v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    mul-float/2addr v2, v1

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    .line 30
    neg-float v3, v1

    .line 31
    .line 32
    add-float v4, v0, v1

    .line 33
    .line 34
    iget-boolean v5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isLeftEdge:Z

    .line 35
    const/4 v6, 0x0

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    move v3, v6

    .line 39
    .line 40
    :cond_0
    iget-boolean v5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isRightEdge:Z

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    move v4, v0

    .line 44
    .line 45
    :cond_1
    iget-boolean v5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowRound:Z

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget v5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 50
    sub-float/2addr v5, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    .line 57
    cmpg-float v1, v5, v1

    .line 58
    .line 59
    if-gez v1, :cond_3

    .line 60
    .line 61
    iget v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 62
    .line 63
    cmpl-float v5, v1, v6

    .line 64
    .line 65
    if-lez v5, :cond_3

    .line 66
    .line 67
    iget v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    .line 68
    .line 69
    sub-float v5, v1, v4

    .line 70
    .line 71
    cmpg-float v5, v5, v6

    .line 72
    .line 73
    if-gez v5, :cond_2

    .line 74
    const/4 v3, 0x2

    .line 75
    int-to-float v3, v3

    .line 76
    mul-float/2addr v3, v4

    .line 77
    .line 78
    sub-float v3, v1, v3

    .line 79
    :cond_2
    move v4, v1

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 83
    move-result v1

    .line 84
    const/4 v5, 0x1

    .line 85
    .line 86
    const/high16 v6, 0x40000000    # 2.0f

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 91
    .line 92
    sub-float v3, v0, v3

    .line 93
    int-to-float v5, v5

    .line 94
    sub-float/2addr v3, v5

    .line 95
    sub-float/2addr v0, v4

    .line 96
    add-float/2addr v0, v5

    .line 97
    sub-float/2addr v2, v6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3, v6, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 104
    int-to-float v1, v5

    .line 105
    add-float/2addr v3, v1

    .line 106
    sub-float/2addr v4, v1

    .line 107
    sub-float/2addr v2, v6

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3, v6, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    .line 112
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowRound:Z

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 119
    .line 120
    iget v2, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    .line 121
    .line 122
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 131
    .line 132
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/FrameItemMaskView;->drawBorderPath(Landroid/graphics/Canvas;)V

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 144
    .line 145
    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/FrameItemMaskView;->drawBorderPath(Landroid/graphics/Canvas;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    return-void
.end method

.method public final setBorderStyle(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method public final updateBorder(ZZZZF)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowRound:Z

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowBorder:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isLeftEdge:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isRightEdge:Z

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    return-void
.end method
