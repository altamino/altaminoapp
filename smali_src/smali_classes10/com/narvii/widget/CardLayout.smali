.class public Lcom/narvii/widget/CardLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final MH:F = 1.0f

.field static final MW:F = 0.8f


# instance fields
.field card1:Landroid/view/View;

.field card2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 18
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result p2

    .line 17
    const/4 p3, 0x0

    .line 18
    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    mul-int/lit8 p2, p1, 0x2

    .line 22
    sub-int/2addr p4, p2

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    move-result p2

    .line 29
    int-to-float p2, p2

    .line 30
    .line 31
    .line 32
    const v0, 0x3f4ccccd    # 0.8f

    .line 33
    mul-float/2addr p2, v0

    .line 34
    float-to-int p2, p2

    .line 35
    add-int/2addr p4, p2

    .line 36
    .line 37
    div-int/lit8 p4, p4, 0x2

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 43
    move-result p2

    .line 44
    int-to-float p2, p2

    .line 45
    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    mul-float/2addr p2, v1

    .line 48
    float-to-int p2, p2

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 57
    .line 58
    add-int v2, p4, p1

    .line 59
    .line 60
    sub-int v3, p5, p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p4, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 67
    .line 68
    add-int v2, p4, p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p4, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 72
    .line 73
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 77
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    mul-float/2addr v1, v0

    .line 80
    float-to-int v0, v1

    .line 81
    .line 82
    sub-int v0, p1, v0

    .line 83
    add-int/2addr p4, v0

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iget-object p3, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 92
    add-int/2addr p1, p4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p4, p2, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 99
    add-int/2addr p1, p4

    .line 100
    sub-int/2addr p5, p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    sub-int/2addr p4, p1

    .line 106
    .line 107
    div-int/lit8 p4, p4, 0x2

    .line 108
    .line 109
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 110
    add-int/2addr p1, p4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 114
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    .line 27
    .line 28
    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    move-result v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2, v2}, Landroid/view/View;->measure(II)V

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 66
    move-result p2

    .line 67
    int-to-float p2, p2

    .line 68
    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    mul-float/2addr p2, v1

    .line 71
    float-to-int p2, p2

    .line 72
    add-int/2addr v0, p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 80
    :goto_0
    return-void
.end method
