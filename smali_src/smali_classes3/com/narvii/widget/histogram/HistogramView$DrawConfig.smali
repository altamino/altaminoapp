.class final Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/histogram/HistogramView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawConfig"
.end annotation


# instance fields
.field private bottom:I

.field private curPercentage:F

.field private curTop:I

.field private height:I

.field private final hintBgPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hintView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final labelPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final linePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pillarPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/histogram/HistogramView;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    .line 10
    .line 11
    .line 12
    const p3, 0x3c23d70a    # 0.01f

    .line 13
    .line 14
    iput p3, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    .line 15
    .line 16
    iput p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/Paint;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    new-instance p3, Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .line 30
    iput-object p3, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->pillarPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    new-instance v1, Landroid/graphics/Paint;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintBgPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    sget v3, Lcom/narvii/lib/R$layout;->histogram_hint_view:I

    .line 51
    const/4 v4, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    const-string v3, "inflate(...)"

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    iput-object v2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintView:Landroid/view/View;

    .line 63
    .line 64
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    const/4 v4, -0x2

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v2, 0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    .line 82
    const-string v3, "#F0F0F0"

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    .line 91
    const/high16 v3, 0x40800000    # 4.0f

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    .line 99
    const-string p2, "#B3B3B3"

    .line 100
    .line 101
    .line 102
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    move-result p2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 110
    move-result p2

    .line 111
    .line 112
    if-eqz p2, :cond_0

    .line 113
    .line 114
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_0
    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lcom/narvii/widget/histogram/HistogramView;->access$getLabelTextSize$p(Lcom/narvii/widget/histogram/HistogramView;)F

    .line 124
    move-result p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    .line 132
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    return-void
.end method


# virtual methods
.method public final getBottom()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    return v0
.end method

.method public final getCurPercentage()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    return v0
.end method

.method public final getCurTop()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    return v0
.end method

.method public final getHintBgPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getHintView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintView:Landroid/view/View;

    return-object v0
.end method

.method public final getLabelPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getLinePaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getPillarPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->pillarPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final setBottom(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    return-void
.end method

.method public final setCurPercentage(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    return-void
.end method

.method public final setCurTop(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    return-void
.end method

.method public final setPercentage(F)V
    .locals 2

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    return-void
.end method
