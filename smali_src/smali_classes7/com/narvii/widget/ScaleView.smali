.class public Lcom/narvii/widget/ScaleView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/lib/R$styleable;->ScaleView:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    sget v1, Lcom/narvii/lib/R$styleable;->ScaleView_scalef:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 22
    .line 23
    sget v0, Lcom/narvii/lib/R$styleable;->ScaleView_designScreenWidth:I

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    if-ge p1, v0, :cond_0

    .line 43
    int-to-float p1, p1

    .line 44
    int-to-float v0, v0

    .line 45
    div-float/2addr p1, v0

    .line 46
    .line 47
    iput p1, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 22
    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    move-result v1

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 19
    div-float/2addr v1, v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    move-result v2

    .line 24
    .line 25
    iget v3, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 26
    div-float/2addr v2, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, p1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eq v0, p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 41
    :cond_1
    return v1
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpl-float v1, v0, v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    sub-int/2addr p4, p2

    .line 10
    sub-int/2addr p5, p3

    .line 11
    int-to-float p5, p5

    .line 12
    div-float/2addr p5, v0

    .line 13
    float-to-int p5, p5

    .line 14
    add-int/2addr p5, p3

    .line 15
    int-to-float p4, p4

    .line 16
    div-float/2addr p4, v0

    .line 17
    float-to-int p4, p4

    .line 18
    add-int/2addr p4, p2

    .line 19
    :cond_0
    move v4, p4

    .line 20
    move v5, p5

    .line 21
    move-object v0, p0

    .line 22
    move v1, p1

    .line 23
    move v2, p2

    .line 24
    move v3, p3

    .line 25
    .line 26
    .line 27
    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 28
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result v3

    .line 17
    .line 18
    iget v4, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 19
    .line 20
    const/high16 v5, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float v6, v4, v5

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    int-to-float p1, v2

    .line 26
    div-float/2addr p1, v4

    .line 27
    float-to-int p1, p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result p1

    .line 32
    int-to-float p2, v3

    .line 33
    .line 34
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 35
    div-float/2addr p2, v0

    .line 36
    float-to-int p2, p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 44
    .line 45
    iget p1, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 46
    .line 47
    cmpl-float p1, p1, v5

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    move-result p1

    .line 54
    int-to-float p1, p1

    .line 55
    .line 56
    iget p2, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 57
    mul-float/2addr p1, p2

    .line 58
    float-to-int p1, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    move-result p2

    .line 63
    int-to-float p2, p2

    .line 64
    .line 65
    iget v0, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 66
    mul-float/2addr p2, v0

    .line 67
    float-to-int p2, p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 71
    :cond_1
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ScaleView;->scale:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method
