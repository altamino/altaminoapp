.class public Lcom/tokenautocomplete/e;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private maxWidth:I

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    .line 5
    iput p2, p0, Lcom/tokenautocomplete/e;->maxWidth:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 8
    .line 9
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 10
    const/4 v0, -0x2

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/tokenautocomplete/e;->maxWidth:I

    .line 3
    .line 4
    const/high16 v1, -0x80000000

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    move-result v2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    move-result v2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tokenautocomplete/e;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    sub-int p2, p8, p6

    .line 9
    .line 10
    iget-object p3, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 14
    move-result p3

    .line 15
    sub-int/2addr p2, p3

    .line 16
    .line 17
    div-int/lit8 p2, p2, 0x2

    .line 18
    .line 19
    iget-object p3, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 23
    move-result p3

    .line 24
    sub-int/2addr p8, p3

    .line 25
    sub-int/2addr p8, p2

    .line 26
    int-to-float p2, p8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 38
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tokenautocomplete/e;->a()V

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    move-result p1

    .line 12
    .line 13
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 14
    .line 15
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 16
    .line 17
    sub-int p4, p2, p3

    .line 18
    sub-int/2addr p1, p4

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    div-int/lit8 p4, p1, 0x2

    .line 23
    sub-int/2addr p1, p4

    .line 24
    add-int/2addr p2, p1

    .line 25
    .line 26
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 27
    sub-int/2addr p3, p4

    .line 28
    .line 29
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 30
    .line 31
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 32
    add-int/2addr p2, p1

    .line 33
    .line 34
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 35
    .line 36
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 37
    sub-int/2addr p1, p4

    .line 38
    .line 39
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 45
    move-result p1

    .line 46
    return p1
.end method
