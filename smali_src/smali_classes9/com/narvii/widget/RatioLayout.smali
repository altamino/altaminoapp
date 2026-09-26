.class public Lcom/narvii/widget/RatioLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private ratio:F

.field private ratioInsidePadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->RatioLayout:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->RatioLayout_ratio:I

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 17
    move-result p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/widget/RatioLayout;->ratio:F

    .line 20
    .line 21
    sget p2, Lcom/narvii/lib/R$styleable;->RatioLayout_ratioInsidePadding:I

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    iput-boolean p2, p0, Lcom/narvii/widget/RatioLayout;->ratioInsidePadding:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result p2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/widget/RatioLayout;->ratioInsidePadding:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr p2, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 25
    move-result v0

    .line 26
    sub-int/2addr p2, v0

    .line 27
    int-to-float p2, p2

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/widget/RatioLayout;->ratio:F

    .line 30
    mul-float/2addr p2, v0

    .line 31
    float-to-int p2, p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v0

    .line 36
    add-int/2addr p2, v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    move-result v0

    .line 41
    add-int/2addr p2, v0

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    move-result p2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    int-to-float p2, p2

    .line 48
    .line 49
    iget v0, p0, Lcom/narvii/widget/RatioLayout;->ratio:F

    .line 50
    mul-float/2addr p2, v0

    .line 51
    float-to-int p2, p2

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 55
    move-result p2

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 66
    move-result p1

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/narvii/widget/RatioLayout;->ratioInsidePadding:Z

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    move-result v0

    .line 75
    sub-int/2addr p1, v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    move-result v0

    .line 80
    sub-int/2addr p1, v0

    .line 81
    int-to-float p1, p1

    .line 82
    .line 83
    iget v0, p0, Lcom/narvii/widget/RatioLayout;->ratio:F

    .line 84
    div-float/2addr p1, v0

    .line 85
    float-to-int p1, p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 89
    move-result v0

    .line 90
    add-int/2addr p1, v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 94
    move-result v0

    .line 95
    add-int/2addr p1, v0

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 99
    move-result p1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    int-to-float p1, p1

    .line 102
    .line 103
    iget v0, p0, Lcom/narvii/widget/RatioLayout;->ratio:F

    .line 104
    div-float/2addr p1, v0

    .line 105
    float-to-int p1, p1

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 109
    move-result p1

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 113
    return-void
.end method
