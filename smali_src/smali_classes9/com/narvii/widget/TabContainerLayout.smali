.class public Lcom/narvii/widget/TabContainerLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mode:I

.field private scrollDivideEqual:Z

.field private segmentControl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/TabContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/narvii/widget/TabContainerLayout;->mode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->scrollDivideEqual:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->segmentControl:Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/TabContainerLayout;->mode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/narvii/widget/TabContainerLayout;->scrollDivideEqual:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    sub-int v0, p4, p2

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    move v3, v2

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v4

    .line 29
    .line 30
    if-ge v2, v4, :cond_3

    .line 31
    .line 32
    if-gt v3, v0, :cond_5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    move-result v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v5

    .line 45
    .line 46
    div-int v5, v0, v5

    .line 47
    .line 48
    if-le v4, v5, :cond_2

    .line 49
    goto :goto_2

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    move-result v4

    .line 58
    add-int/2addr v3, v4

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 71
    move-result p1

    .line 72
    div-int/2addr v0, p1

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 76
    move-result p1

    .line 77
    .line 78
    if-ge v1, p1, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-nez p1, :cond_4

    .line 85
    return-void

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 89
    move-result p2

    .line 90
    .line 91
    sub-int p2, v0, p2

    .line 92
    .line 93
    div-int/lit8 p2, p2, 0x2

    .line 94
    .line 95
    mul-int p3, v0, v1

    .line 96
    add-int/2addr p3, p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 100
    move-result p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    move-result p4

    .line 105
    add-int/2addr p4, p3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    move-result p5

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    move-result v2

    .line 114
    add-int/2addr p5, v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 124
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/widget/TabContainerLayout;->mode:I

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    if-ne p1, p2, :cond_2

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->segmentControl:Z

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    const/4 p1, 0x0

    .line 14
    move p2, p1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ge p1, v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-le v0, p2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    move-result p2

    .line 39
    .line 40
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 56
    int-to-float p1, p1

    .line 57
    .line 58
    .line 59
    const v0, 0x3f4ccccd    # 0.8f

    .line 60
    mul-float/2addr v0, p1

    .line 61
    float-to-int v0, v0

    .line 62
    .line 63
    .line 64
    const v1, 0x3f19999a    # 0.6f

    .line 65
    mul-float/2addr p1, v1

    .line 66
    float-to-int p1, p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    move-result v1

    .line 71
    mul-int/2addr p2, v1

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 79
    move-result p1

    .line 80
    .line 81
    const/high16 p2, 0x40000000    # 2.0f

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 85
    move-result p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 93
    move-result p2

    .line 94
    .line 95
    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 97
    :cond_2
    return-void
.end method

.method public setScrollDivideEqual(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->scrollDivideEqual:Z

    return-void
.end method

.method public setSegmentControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->segmentControl:Z

    return-void
.end method
