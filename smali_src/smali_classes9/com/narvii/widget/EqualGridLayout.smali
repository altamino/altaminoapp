.class public Lcom/narvii/widget/EqualGridLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field columnCount:I

.field rowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->EqualGridLayout:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->EqualGridLayout_column_count:I

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    move-result p2

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/widget/EqualGridLayout;->columnCount:I

    .line 19
    .line 20
    sget p2, Lcom/narvii/lib/R$styleable;->EqualGridLayout_row_count:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    move-result p1

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/widget/EqualGridLayout;->rowCount:I

    .line 27
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result p2

    .line 9
    sub-int/2addr p1, p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result p2

    .line 14
    sub-int/2addr p1, p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    move-result p3

    .line 23
    sub-int/2addr p2, p3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    move-result p3

    .line 28
    sub-int/2addr p2, p3

    .line 29
    .line 30
    iget p3, p0, Lcom/narvii/widget/EqualGridLayout;->columnCount:I

    .line 31
    div-int/2addr p1, p3

    .line 32
    .line 33
    iget p3, p0, Lcom/narvii/widget/EqualGridLayout;->rowCount:I

    .line 34
    div-int/2addr p2, p3

    .line 35
    const/4 p3, 0x0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    move-result p4

    .line 40
    .line 41
    if-ge p3, p4, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object p4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 49
    move-result p5

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/widget/EqualGridLayout;->columnCount:I

    .line 52
    .line 53
    rem-int v0, p3, v0

    .line 54
    mul-int/2addr v0, p1

    .line 55
    add-int/2addr p5, v0

    .line 56
    .line 57
    add-int v0, p5, p1

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    move-result p5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 71
    move-result v0

    .line 72
    sub-int/2addr p5, v0

    .line 73
    .line 74
    iget v0, p0, Lcom/narvii/widget/EqualGridLayout;->columnCount:I

    .line 75
    .line 76
    rem-int v0, p3, v0

    .line 77
    mul-int/2addr v0, p1

    .line 78
    .line 79
    sub-int v0, p5, v0

    .line 80
    .line 81
    sub-int p5, v0, p1

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 85
    move-result v1

    .line 86
    .line 87
    iget v2, p0, Lcom/narvii/widget/EqualGridLayout;->columnCount:I

    .line 88
    .line 89
    div-int v2, p3, v2

    .line 90
    mul-int/2addr v2, p2

    .line 91
    add-int/2addr v1, v2

    .line 92
    .line 93
    add-int v2, v1, p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, p5, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 97
    .line 98
    add-int/lit8 p3, p3, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result p2

    .line 12
    sub-int/2addr p1, p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result p2

    .line 17
    sub-int/2addr p1, p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v0

    .line 26
    sub-int/2addr p2, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v0

    .line 31
    sub-int/2addr p2, v0

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-ge v0, v1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget v2, p0, Lcom/narvii/widget/EqualGridLayout;->columnCount:I

    .line 45
    .line 46
    div-int v2, p1, v2

    .line 47
    .line 48
    const/high16 v3, 0x40000000    # 2.0f

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 52
    move-result v2

    .line 53
    .line 54
    iget v4, p0, Lcom/narvii/widget/EqualGridLayout;->rowCount:I

    .line 55
    .line 56
    div-int v4, p2, v4

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
