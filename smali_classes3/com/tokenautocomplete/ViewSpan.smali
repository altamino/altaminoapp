.class public Lcom/tokenautocomplete/ViewSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ViewSpan.java"


# instance fields
.field private maxWidth:I

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 21
    iput p2, p0, Lcom/tokenautocomplete/ViewSpan;->maxWidth:I

    .line 22
    iput-object p1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    .line 23
    iget-object p1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private prepView()V
    .locals 4

    .line 27
    iget v0, p0, Lcom/tokenautocomplete/ViewSpan;->maxWidth:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 28
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 30
    iget-object v3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 31
    iget-object v0, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tokenautocomplete/ViewSpan;->prepView()V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int p2, p8, p6

    .line 39
    iget-object p3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 40
    iget-object p3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p8, p3

    sub-int/2addr p8, p2

    int-to-float p2, p8

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    iget-object p2, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tokenautocomplete/ViewSpan;->prepView()V

    if-eqz p5, :cond_0

    .line 50
    iget-object p1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 51
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int p4, p2, p3

    sub-int/2addr p1, p4

    if-lez p1, :cond_0

    .line 53
    div-int/lit8 p4, p1, 0x2

    sub-int/2addr p1, p4

    add-int/2addr p2, p1

    .line 55
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p3, p4

    .line 56
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 57
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p2, p1

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 58
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p1, p4

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    return p1
.end method
