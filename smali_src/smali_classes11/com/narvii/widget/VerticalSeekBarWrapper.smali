.class public Lcom/narvii/widget/VerticalSeekBarWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyViewRotation(II)V
    .locals 9

    .line 2
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/widget/VerticalSeekBar;->getRotationAngle()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr p1, v6

    .line 9
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v5

    int-to-float p1, p1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr p1, v6

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int/2addr p2, v7

    .line 11
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x2

    .line 12
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    move p2, v6

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    :goto_1
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->N0(Landroid/view/View;F)V

    .line 15
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->O0(Landroid/view/View;F)V

    const/16 p2, 0x5a

    if-eq v3, p2, :cond_4

    const/16 p2, 0x10e

    if-eq v3, p2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    .line 16
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->Q0(Landroid/view/View;F)V

    if-eqz v1, :cond_3

    .line 17
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->X0(Landroid/view/View;F)V

    int-to-float p1, v4

    .line 18
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->Y0(Landroid/view/View;F)V

    goto :goto_2

    :cond_3
    int-to-float p2, v5

    add-float/2addr p2, p1

    neg-float p1, p2

    .line 19
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->X0(Landroid/view/View;F)V

    .line 20
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->Y0(Landroid/view/View;F)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x42b40000    # 90.0f

    .line 21
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->Q0(Landroid/view/View;F)V

    if-eqz v1, :cond_5

    int-to-float p2, v5

    add-float/2addr p2, p1

    .line 22
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->X0(Landroid/view/View;F)V

    .line 23
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->Y0(Landroid/view/View;F)V

    goto :goto_2

    :cond_5
    neg-float p1, p1

    .line 24
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->X0(Landroid/view/View;F)V

    int-to-float p1, v4

    .line 25
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->Y0(Landroid/view/View;F)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    .line 16
    :goto_0
    instance-of v2, v0, Lcom/narvii/widget/VerticalSeekBar;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    move-object v1, v0

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/widget/VerticalSeekBar;

    .line 22
    :cond_1
    return-object v1
.end method

.method private onSizeChangedTraditionalRotation(IIII)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v3

    .line 24
    add-int/2addr v2, v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    const/4 v4, -0x2

    .line 32
    .line 33
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 34
    .line 35
    sub-int v2, p2, v2

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v5

    .line 41
    .line 42
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 52
    move-result v5

    .line 53
    .line 54
    sub-int v1, p1, v1

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result v6

    .line 59
    .line 60
    const/high16 v7, -0x80000000

    .line 61
    .line 62
    .line 63
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result v6

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 68
    move-result v2

    .line 69
    .line 70
    const/high16 v7, 0x40000000    # 2.0f

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->measure(II)V

    .line 78
    .line 79
    const/16 v2, 0x33

    .line 80
    .line 81
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result v1

    .line 86
    sub-int/2addr v1, v5

    .line 87
    .line 88
    div-int/lit8 v1, v1, 0x2

    .line 89
    .line 90
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 97
    return-void
.end method

.method private onSizeChangedUseViewRotation(IIII)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v3

    .line 24
    add-int/2addr v2, v3

    .line 25
    .line 26
    sub-int v2, p2, v2

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v2

    .line 32
    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    move-result v2

    .line 38
    .line 39
    sub-int v1, p1, v1

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result v1

    .line 44
    .line 45
    const/high16 v3, -0x80000000

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/VerticalSeekBarWrapper;->applyViewRotation(II)V

    .line 56
    .line 57
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 59
    return-void
.end method

.method private useViewRotation()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method


# virtual methods
.method applyViewRotation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/VerticalSeekBarWrapper;->applyViewRotation(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/high16 v5, 0x40000000    # 2.0f

    .line 25
    .line 26
    if-eq v1, v5, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    move-result v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 34
    move-result v6

    .line 35
    add-int/2addr v5, v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    move-result v6

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    move-result v7

    .line 44
    add-int/2addr v6, v7

    .line 45
    sub-int/2addr v3, v5

    .line 46
    const/4 v7, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result v1

    .line 55
    sub-int/2addr v4, v6

    .line 56
    .line 57
    .line 58
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v3

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 63
    move-result v2

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->useViewRotation()Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    move-result v0

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    move-result v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    move-result v0

    .line 93
    :goto_0
    add-int/2addr v1, v5

    .line 94
    .line 95
    .line 96
    invoke-static {v1, p1, v7}, Landroidx/core/view/ViewCompat;->r0(III)I

    .line 97
    move-result p1

    .line 98
    add-int/2addr v0, v6

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p2, v7}, Landroidx/core/view/ViewCompat;->r0(III)I

    .line 102
    move-result p2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 106
    goto :goto_1

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 110
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->useViewRotation()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/widget/VerticalSeekBarWrapper;->onSizeChangedUseViewRotation(IIII)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/widget/VerticalSeekBarWrapper;->onSizeChangedTraditionalRotation(IIII)V

    .line 14
    :goto_0
    return-void
.end method
