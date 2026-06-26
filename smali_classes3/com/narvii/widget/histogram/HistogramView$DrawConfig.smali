.class final Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
.super Ljava/lang/Object;
.source "HistogramView.kt"


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

.field private final hintView:Landroid/view/View;

.field private final labelPaint:Landroid/graphics/Paint;

.field private final linePaint:Landroid/graphics/Paint;

.field private final pillarPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/histogram/HistogramView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    iput p3, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    const p2, 0x3c23d70a    # 0.01f

    .line 300
    iput p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    .line 301
    iget p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    iput p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    .line 302
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    .line 303
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    .line 304
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->pillarPaint:Landroid/graphics/Paint;

    .line 305
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintBgPaint:Landroid/graphics/Paint;

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/lib/R$layout;->histogram_hint_view:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "inflate(context, R.layou\u2026istogram_hint_view, null)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintView:Landroid/view/View;

    .line 309
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintView:Landroid/view/View;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    const-string v0, "#F0F0F0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    const-string v0, "#B3B3B3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 320
    iget-object p2, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/narvii/widget/histogram/HistogramView;->access$getLabelTextSize$p(Lcom/narvii/widget/histogram/HistogramView;)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->pillarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 323
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->pillarPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final getBottom()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    return v0
.end method

.method public final getCurPercentage()F
    .locals 1

    .line 300
    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    return v0
.end method

.method public final getCurTop()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    return v0
.end method

.method public final getHintBgPaint()Landroid/graphics/Paint;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getHintView()Landroid/view/View;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->hintView:Landroid/view/View;

    return-object v0
.end method

.method public final getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->labelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getPillarPaint()Landroid/graphics/Paint;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->pillarPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final setBottom(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    return-void
.end method

.method public final setCurPercentage(F)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    return-void
.end method

.method public final setCurTop(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    return-void
.end method

.method public final setPercentage(F)V
    .locals 2

    .line 330
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curPercentage:F

    .line 331
    iget v0, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->height:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->curTop:I

    return-void
.end method
