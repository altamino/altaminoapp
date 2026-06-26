.class public Lcom/narvii/widget/VerticalSeekBarWrapper;
.super Landroid/widget/FrameLayout;
.source "VerticalSeekBarWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyViewRotation(II)V
    .locals 9

    .line 120
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 123
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/widget/VerticalSeekBar;->getRotationAngle()I

    move-result v3

    .line 125
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v4

    .line 126
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v5

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr p1, v6

    .line 129
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v5

    int-to-float p1, p1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float p1, p1, v6

    .line 130
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int/2addr p2, v7

    .line 132
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x2

    .line 133
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 137
    :cond_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    :goto_1
    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 138
    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    const/16 p2, 0x5a

    if-eq v3, p2, :cond_4

    const/16 p2, 0x10e

    if-eq v3, p2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    .line 152
    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    if-eqz v1, :cond_3

    .line 154
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    int-to-float p1, v4

    .line 155
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    :cond_3
    int-to-float p2, v5

    add-float/2addr p2, p1

    neg-float p1, p2

    .line 157
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 158
    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x42b40000    # 90.0f

    .line 142
    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    if-eqz v1, :cond_5

    int-to-float p2, v5

    add-float/2addr p2, p1

    .line 144
    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 145
    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    :cond_5
    neg-float p1, p1

    .line 147
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    int-to-float p1, v4

    .line 148
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;
    .locals 3

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 167
    :goto_0
    instance-of v2, v0, Lcom/narvii/widget/VerticalSeekBar;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/narvii/widget/VerticalSeekBar;

    :cond_1
    return-object v1
.end method

.method private onSizeChangedTraditionalRotation(IIII)V
    .locals 8

    .line 39
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 44
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    .line 46
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v2, p2, v2

    const/4 v4, 0x0

    .line 47
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v0, v4, v4}, Landroid/widget/SeekBar;->measure(II)V

    .line 52
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v5

    sub-int v1, p1, v1

    .line 54
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 55
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 53
    invoke-virtual {v0, v6, v2}, Landroid/widget/SeekBar;->measure(II)V

    const/16 v2, 0x33

    .line 57
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method private onSizeChangedUseViewRotation(IIII)V
    .locals 5

    .line 66
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, p2, v2

    const/4 v3, 0x0

    .line 72
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v1, p1, v1

    .line 73
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/widget/SeekBar;->measure(II)V

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/VerticalSeekBarWrapper;->applyViewRotation(II)V

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method private useViewRotation()Z
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method applyViewRotation()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/VerticalSeekBarWrapper;->applyViewRotation(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 82
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/narvii/widget/VerticalSeekBar;

    move-result-object v0

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-eqz v0, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v5

    const/4 v7, 0x0

    .line 93
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int/2addr v4, v6

    .line 94
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 96
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/widget/SeekBar;->measure(II)V

    .line 98
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v1

    .line 99
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->measure(II)V

    .line 102
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v1

    .line 103
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v0

    :goto_0
    add-int/2addr v1, v5

    .line 106
    invoke-static {v1, p1, v7}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result p1

    add-int/2addr v0, v6

    .line 107
    invoke-static {v0, p2, v7}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result p2

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/widget/VerticalSeekBarWrapper;->onSizeChangedUseViewRotation(IIII)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/widget/VerticalSeekBarWrapper;->onSizeChangedTraditionalRotation(IIII)V

    :goto_0
    return-void
.end method
