.class public Lcom/narvii/widget/ShrinkLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field shrinkView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "shrink"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/widget/ShrinkLayout;->isRtl()Z

    .line 8
    move-result p2

    .line 9
    .line 10
    const/16 p3, 0x8

    .line 11
    const/4 p4, 0x0

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    move p2, p4

    .line 15
    move p5, p2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-ge p2, v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result v1

    .line 30
    .line 31
    if-ne v1, p3, :cond_0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    move-result v0

    .line 43
    .line 44
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    add-int/2addr v0, v2

    .line 46
    .line 47
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 48
    add-int/2addr v0, v1

    .line 49
    add-int/2addr p5, v0

    .line 50
    .line 51
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    sub-int p2, p1, p5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 58
    move-result p5

    .line 59
    sub-int/2addr p2, p5

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 68
    move-result p5

    .line 69
    .line 70
    if-ge p4, p5, :cond_6

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/widget/ShrinkLayout;->isRtl()Z

    .line 74
    move-result p5

    .line 75
    .line 76
    if-eqz p5, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 80
    move-result p5

    .line 81
    sub-int/2addr p5, p4

    .line 82
    .line 83
    add-int/lit8 p5, p5, -0x1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    move-result-object p5

    .line 88
    goto :goto_3

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 92
    move-result-object p5

    .line 93
    .line 94
    .line 95
    :goto_3
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 96
    move-result v0

    .line 97
    .line 98
    if-ne v0, p3, :cond_4

    .line 99
    goto :goto_4

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    .line 107
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 108
    add-int/2addr v1, p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 112
    move-result v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 116
    move-result v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 120
    move-result v4

    .line 121
    sub-int/2addr v3, v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 125
    move-result v4

    .line 126
    sub-int/2addr v3, v4

    .line 127
    .line 128
    .line 129
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 130
    move-result v4

    .line 131
    sub-int/2addr v3, v4

    .line 132
    .line 133
    div-int/lit8 v3, v3, 0x2

    .line 134
    add-int/2addr v2, v3

    .line 135
    .line 136
    .line 137
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 138
    move-result v3

    .line 139
    add-int/2addr v3, v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 143
    move-result v4

    .line 144
    .line 145
    sub-int v4, p1, v4

    .line 146
    .line 147
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 148
    sub-int/2addr v4, v5

    .line 149
    .line 150
    if-le v3, v4, :cond_5

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 154
    move-result v3

    .line 155
    .line 156
    sub-int v3, p1, v3

    .line 157
    .line 158
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 159
    sub-int/2addr v3, v4

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    move-result v4

    .line 164
    add-int/2addr v4, v2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p5, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 171
    move-result p5

    .line 172
    .line 173
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 174
    add-int/2addr p5, v1

    .line 175
    .line 176
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 177
    add-int/2addr p5, v0

    .line 178
    add-int/2addr p2, p5

    .line 179
    .line 180
    :goto_4
    add-int/lit8 p4, p4, 0x1

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v5

    .line 21
    .line 22
    if-ge v2, v5, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v6

    .line 31
    .line 32
    const/16 v7, 0x8

    .line 33
    .line 34
    if-ne v6, v7, :cond_1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object v6, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 38
    .line 39
    if-eq v5, v6, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 49
    move-result v7

    .line 50
    .line 51
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 52
    add-int/2addr v7, v8

    .line 53
    .line 54
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 55
    add-int/2addr v7, v6

    .line 56
    add-int/2addr v3, v7

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    move-result v5

    .line 61
    .line 62
    if-le v5, v4, :cond_2

    .line 63
    move v4, v5

    .line 64
    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    iget-object v2, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    move-result v5

    .line 81
    .line 82
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 83
    add-int/2addr v5, v6

    .line 84
    .line 85
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 86
    add-int/2addr v5, v7

    .line 87
    add-int/2addr v5, v3

    .line 88
    .line 89
    if-le v5, v0, :cond_4

    .line 90
    .line 91
    sub-int v5, v0, v3

    .line 92
    sub-int/2addr v5, v7

    .line 93
    sub-int/2addr v5, v6

    .line 94
    .line 95
    iget-object v6, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 99
    move-result v1

    .line 100
    .line 101
    const/high16 v5, -0x80000000

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 105
    move-result v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v1, p2}, Landroid/view/View;->measure(II)V

    .line 109
    .line 110
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 114
    move-result p2

    .line 115
    .line 116
    if-le p2, v4, :cond_5

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result v4

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 126
    move-result p1

    .line 127
    .line 128
    const/high16 p2, 0x40000000    # 2.0f

    .line 129
    .line 130
    if-ne p1, p2, :cond_6

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :cond_6
    iget-object p1, p0, Lcom/narvii/widget/ShrinkLayout;->shrinkView:Landroid/view/View;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 137
    move-result p1

    .line 138
    add-int/2addr v3, p1

    .line 139
    .line 140
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 141
    add-int/2addr v3, p1

    .line 142
    .line 143
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    .line 145
    add-int v0, v3, p1

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method
