.class public Lcom/narvii/widget/ScaleView;
.super Landroid/widget/LinearLayout;
.source "ScaleView.java"


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 21
    sget-object v1, Lcom/narvii/lib/R$styleable;->ScaleView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 23
    sget v1, Lcom/narvii/lib/R$styleable;->ScaleView_scalef:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 24
    sget v0, Lcom/narvii/lib/R$styleable;->ScaleView_designScreenWidth:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 28
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge p1, v0, :cond_0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 30
    iput p1, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 114
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/narvii/widget/ScaleView;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/narvii/widget/ScaleView;->scale:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 118
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eq v0, p1, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return v1
.end method

.method public getScale()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 72
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    int-to-float p5, p5

    div-float/2addr p5, v0

    float-to-int p5, p5

    add-int/2addr p5, p3

    int-to-float p4, p4

    div-float/2addr p4, v0

    float-to-int p4, p4

    add-int/2addr p4, p2

    :cond_0
    move v4, p4

    move v5, p5

    .line 79
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x12

    if-lt p4, p5, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 80
    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p4

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p5

    .line 89
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBottom(I)V

    .line 90
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setRight(I)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 92
    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 94
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setBottom(I)V

    .line 95
    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setRight(I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 54
    iget v4, p0, Lcom/narvii/widget/ScaleView;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_0

    int-to-float p1, v2

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 55
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    int-to-float p2, v3

    .line 57
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 63
    iget p1, p0, Lcom/narvii/widget/ScaleView;->scale:F

    cmpl-float p1, p1, v5

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/narvii/widget/ScaleView;->scale:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 65
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
