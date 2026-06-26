.class public Lcom/narvii/widget/AutoScaleTextView;
.super Landroid/widget/TextView;
.source "AutoScaleTextView.java"


# instance fields
.field private defaultAtHeight:I

.field private defaultAtWidth:I

.field private defaultSize:I

.field private excludePadding:Z

.field private maxSize:I

.field private minSize:I

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v0, Lcom/narvii/lib/R$styleable;->AutoScaleTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultSize:I

    iput p2, p0, Lcom/narvii/widget/AutoScaleTextView;->size:I

    .line 29
    sget p2, Lcom/narvii/lib/R$styleable;->AutoScaleTextView_defaultAtWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultAtWidth:I

    .line 30
    sget p2, Lcom/narvii/lib/R$styleable;->AutoScaleTextView_defaultAtHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultAtHeight:I

    .line 31
    sget p2, Lcom/narvii/lib/R$styleable;->AutoScaleTextView_maxScaleTextSize:I

    iget v1, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/AutoScaleTextView;->maxSize:I

    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->AutoScaleTextView_minScaleTextSize:I

    iget v1, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/AutoScaleTextView;->minSize:I

    .line 33
    sget p2, Lcom/narvii/lib/R$styleable;->AutoScaleTextView_excludePadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/AutoScaleTextView;->excludePadding:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setSize(II)V
    .locals 4

    .line 39
    iget v0, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultAtWidth:I

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xffff

    const/4 v3, 0x0

    if-lez v0, :cond_1

    if-lez p1, :cond_3

    if-ge p1, v2, :cond_3

    .line 42
    iget-boolean p2, p0, Lcom/narvii/widget/AutoScaleTextView;->excludePadding:Z

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 47
    :cond_0
    iget p2, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultSize:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    int-to-float p1, p1

    mul-float p2, p2, p1

    iget p1, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultAtWidth:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    .line 49
    :cond_1
    iget p1, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultAtHeight:I

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p2, v2, :cond_3

    .line 52
    iget-boolean p1, p0, Lcom/narvii/widget/AutoScaleTextView;->excludePadding:Z

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 57
    :cond_2
    iget p1, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultSize:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    int-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/narvii/widget/AutoScaleTextView;->defaultAtHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_6

    .line 61
    iget p2, p0, Lcom/narvii/widget/AutoScaleTextView;->minSize:I

    if-ge p1, p2, :cond_4

    move p1, p2

    .line 62
    :cond_4
    iget p2, p0, Lcom/narvii/widget/AutoScaleTextView;->maxSize:I

    if-le p1, p2, :cond_5

    move p1, p2

    .line 63
    :cond_5
    iget p2, p0, Lcom/narvii/widget/AutoScaleTextView;->size:I

    if-eq p1, p2, :cond_6

    int-to-float p2, p1

    .line 64
    invoke-virtual {p0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    iput p1, p0, Lcom/narvii/widget/AutoScaleTextView;->size:I

    :cond_6
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/AutoScaleTextView;->setSize(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_1
    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_3

    .line 75
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 76
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/narvii/widget/AutoScaleTextView;->setSize(II)V

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
