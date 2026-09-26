.class public Lcom/narvii/widget/DragSortLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/DragSortLinearLayout$Stub;
    }
.end annotation


# instance fields
.field childFocusViewId:I

.field dX:I

.field dY:I

.field downX:I

.field downY:I

.field draging:Landroid/view/View;

.field drawTop:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field rightPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    sget p2, Lcom/narvii/lib/R$dimen;->drag_sort_width:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    .line 20
    return-void
.end method

.method private changeDragingPosition(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/narvii/widget/DragSortLinearLayout;->childFocusViewId:I

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    .line 27
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 43
    :cond_3
    return-void
.end method

.method private clearDy(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    return-void
.end method

.method private getDy(Landroid/view/View;J)I
    .locals 5

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of v0, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    .line 19
    cmp-long v0, p2, v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v0, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y1:I

    .line 24
    .line 25
    iget v1, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget v2, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->v:F

    .line 31
    .line 32
    iget-wide v3, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->time:J

    .line 33
    sub-long/2addr p2, v3

    .line 34
    long-to-float p1, p2

    .line 35
    mul-float/2addr v2, p1

    .line 36
    float-to-int p1, v2

    .line 37
    add-int/2addr p1, v0

    .line 38
    .line 39
    if-le v1, v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    .line 51
    :cond_2
    :goto_0
    iget p1, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    .line 52
    return p1

    .line 53
    :cond_3
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method private getParentScrollView()Landroid/widget/ScrollView;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    .line 4
    :goto_0
    const/16 v2, 0x8

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    instance-of v2, v2, Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroid/view/View;

    .line 21
    .line 22
    instance-of v2, v1, Landroid/widget/ScrollView;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v1, Landroid/widget/ScrollView;

    .line 27
    return-object v1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method private setDy(Landroid/view/View;IFJ)V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    instance-of v2, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/narvii/widget/DragSortLinearLayout$Stub;-><init>(Lcom/narvii/widget/f;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    .line 24
    :goto_0
    iget v0, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    .line 25
    .line 26
    if-eq p2, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p4, p5}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y1:I

    .line 33
    .line 34
    iput p2, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    .line 35
    .line 36
    if-le p1, p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result p1

    .line 41
    neg-float p1, p1

    .line 42
    .line 43
    iput p1, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->v:F

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result p1

    .line 49
    .line 50
    iput p1, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->v:F

    .line 51
    .line 52
    :goto_1
    iput-wide p4, v1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->time:J

    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object v8, p2

    .line 4
    .line 5
    iget-object v0, v6, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    .line 12
    iget-object v0, v6, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 13
    const/4 v9, 0x1

    .line 14
    .line 15
    if-ne v8, v0, :cond_1

    .line 16
    .line 17
    iget v0, v6, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    iget v1, v6, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 21
    int-to-float v1, v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    .line 26
    :cond_0
    move-wide/from16 v11, p3

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v2

    .line 33
    int-to-float v0, v2

    .line 34
    .line 35
    const/high16 v1, 0x43200000    # 160.0f

    .line 36
    .line 37
    div-float v3, v0, v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    move v4, v1

    .line 44
    .line 45
    :goto_0
    if-ge v1, v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v10

    .line 50
    .line 51
    if-ne v10, v8, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    div-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v11, 0x7fffffffffffffffL

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v10, v11, v12}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    .line 71
    move-result v1

    .line 72
    add-int/2addr v0, v1

    .line 73
    .line 74
    if-nez v4, :cond_2

    .line 75
    .line 76
    iget v1, v6, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    .line 77
    .line 78
    iget v5, v6, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 79
    add-int/2addr v1, v5

    .line 80
    .line 81
    if-le v0, v1, :cond_2

    .line 82
    move-object v0, p0

    .line 83
    move-object v1, v10

    .line 84
    .line 85
    move-wide/from16 v4, p3

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortLinearLayout;->setDy(Landroid/view/View;IFJ)V

    .line 89
    .line 90
    :goto_1
    move-wide/from16 v11, p3

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :cond_2
    if-eqz v4, :cond_3

    .line 94
    .line 95
    iget v1, v6, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    .line 96
    .line 97
    iget v4, v6, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 98
    add-int/2addr v1, v4

    .line 99
    .line 100
    if-ge v0, v1, :cond_3

    .line 101
    neg-int v2, v2

    .line 102
    move-object v0, p0

    .line 103
    move-object v1, v10

    .line 104
    .line 105
    move-wide/from16 v4, p3

    .line 106
    .line 107
    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortLinearLayout;->setDy(Landroid/view/View;IFJ)V

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const/4 v2, 0x0

    .line 111
    move-object v0, p0

    .line 112
    move-object v1, v10

    .line 113
    .line 114
    move-wide/from16 v4, p3

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortLinearLayout;->setDy(Landroid/view/View;IFJ)V

    .line 118
    goto :goto_1

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-direct {p0, v10, v11, v12}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    .line 122
    move-result v0

    .line 123
    int-to-float v0, v0

    .line 124
    const/4 v1, 0x0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_4
    move-wide/from16 v11, p3

    .line 131
    .line 132
    iget-object v5, v6, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 133
    .line 134
    if-ne v10, v5, :cond_5

    .line 135
    move v4, v9

    .line 136
    .line 137
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 138
    goto :goto_0

    .line 139
    .line 140
    .line 141
    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 148
    return v9

    .line 149
    .line 150
    :cond_6
    move-wide/from16 v11, p3

    .line 151
    .line 152
    .line 153
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 154
    move-result v0

    .line 155
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->drawTop:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v1, p1, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    if-ne v2, v0, :cond_2

    .line 22
    .line 23
    if-ge p2, v1, :cond_0

    .line 24
    return p2

    .line 25
    .line 26
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    if-ne p2, p1, :cond_1

    .line 29
    return v1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 32
    return p2

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v3, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    .line 15
    int-to-float v3, v3

    .line 16
    .line 17
    cmpg-float v0, v0, v3

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    :goto_0
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v3

    .line 32
    .line 33
    iget v4, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-float v3, v3

    .line 36
    .line 37
    cmpl-float v0, v0, v3

    .line 38
    .line 39
    if-lez v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    move-result v3

    .line 45
    .line 46
    if-nez v3, :cond_6

    .line 47
    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/widget/DragSortLinearLayout;->getParentScrollView()Landroid/widget/ScrollView;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 64
    move-result v0

    .line 65
    float-to-int v0, v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    move-result v3

    .line 70
    move v4, v1

    .line 71
    .line 72
    :goto_2
    if-ge v4, v3, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 80
    move-result v6

    .line 81
    .line 82
    if-ge v6, v0, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 86
    move-result v6

    .line 87
    .line 88
    if-le v6, v0, :cond_3

    .line 89
    .line 90
    iput-object v5, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    iput-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->drawTop:Ljava/lang/ref/WeakReference;

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    const/high16 v3, 0x3f000000    # 0.5f

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 117
    move-result v0

    .line 118
    float-to-int v0, v0

    .line 119
    .line 120
    iput v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->downX:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 124
    move-result p1

    .line 125
    float-to-int p1, p1

    .line 126
    .line 127
    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    .line 128
    .line 129
    iput v1, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 130
    .line 131
    iput v1, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 132
    return v2

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    move-result p1

    .line 137
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    .line 27
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v2

    .line 34
    float-to-int v2, v2

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    .line 37
    sub-int/2addr v2, v3

    .line 38
    .line 39
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    move-result v2

    .line 44
    float-to-int v2, v2

    .line 45
    .line 46
    iget v3, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    .line 47
    add-int/2addr v2, v3

    .line 48
    .line 49
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    move-result v0

    .line 57
    float-to-int v0, v0

    .line 58
    .line 59
    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->downX:I

    .line 60
    sub-int/2addr v0, v2

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 66
    move-result p1

    .line 67
    float-to-int p1, p1

    .line 68
    .line 69
    iget v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    .line 70
    sub-int/2addr p1, v0

    .line 71
    .line 72
    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 76
    return v1

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x3

    .line 82
    .line 83
    if-eq v0, v1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 87
    move-result v0

    .line 88
    .line 89
    if-ne v0, v2, :cond_2

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    move-result p1

    .line 95
    return p1

    .line 96
    .line 97
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 98
    .line 99
    const-wide/16 v3, 0xc8

    .line 100
    .line 101
    const/high16 v5, 0x3f800000    # 1.0f

    .line 102
    const/4 v6, 0x0

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 108
    move-result v0

    .line 109
    .line 110
    if-ne v0, v2, :cond_4

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 113
    .line 114
    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 115
    int-to-float v2, v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 121
    .line 122
    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 123
    int-to-float v2, v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 148
    .line 149
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 150
    const/4 v2, 0x0

    .line 151
    .line 152
    if-eqz v0, :cond_d

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 156
    move-result p1

    .line 157
    .line 158
    if-ne p1, v1, :cond_d

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 162
    move-result p1

    .line 163
    const/4 v0, -0x1

    .line 164
    move v9, v0

    .line 165
    move v10, v9

    .line 166
    move v7, v2

    .line 167
    move v8, v7

    .line 168
    .line 169
    :goto_1
    if-ge v7, p1, :cond_a

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 173
    move-result-object v11

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    const-wide v12, 0x7fffffffffffffffL

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v11, v12, v13}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    .line 182
    move-result v12

    .line 183
    .line 184
    iget-object v13, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 185
    .line 186
    if-ne v11, v13, :cond_5

    .line 187
    move v12, v2

    .line 188
    goto :goto_3

    .line 189
    .line 190
    :cond_5
    if-lez v12, :cond_6

    .line 191
    .line 192
    if-ne v10, v0, :cond_6

    .line 193
    move v10, v7

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_6
    if-gez v12, :cond_7

    .line 197
    move v9, v7

    .line 198
    .line 199
    :cond_7
    :goto_2
    if-lez v12, :cond_8

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 203
    move-result v12

    .line 204
    goto :goto_3

    .line 205
    .line 206
    :cond_8
    if-gez v12, :cond_9

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 210
    move-result v11

    .line 211
    neg-int v12, v11

    .line 212
    :cond_9
    :goto_3
    add-int/2addr v8, v12

    .line 213
    .line 214
    add-int/lit8 v7, v7, 0x1

    .line 215
    goto :goto_1

    .line 216
    .line 217
    :cond_a
    if-eqz v8, :cond_c

    .line 218
    .line 219
    if-ltz v9, :cond_b

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, v9}, Lcom/narvii/widget/DragSortLinearLayout;->changeDragingPosition(I)V

    .line 223
    goto :goto_4

    .line 224
    .line 225
    :cond_b
    if-ltz v10, :cond_c

    .line 226
    .line 227
    .line 228
    invoke-direct {p0, v10}, Lcom/narvii/widget/DragSortLinearLayout;->changeDragingPosition(I)V

    .line 229
    .line 230
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 231
    .line 232
    iget v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 233
    int-to-float v0, v0

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    .line 238
    iget-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 239
    .line 240
    iget v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 241
    add-int/2addr v0, v8

    .line 242
    int-to-float v0, v0

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 246
    .line 247
    iget-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 267
    :cond_d
    const/4 p1, 0x0

    .line 268
    .line 269
    iput-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 273
    move-result p1

    .line 274
    .line 275
    :goto_5
    if-ge v2, p1, :cond_e

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    .line 282
    invoke-direct {p0, v0}, Lcom/narvii/widget/DragSortLinearLayout;->clearDy(Landroid/view/View;)V

    .line 283
    .line 284
    add-int/lit8 v2, v2, 0x1

    .line 285
    goto :goto_5

    .line 286
    .line 287
    .line 288
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 289
    return v1
.end method

.method public setChildFocusViewId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->childFocusViewId:I

    return-void
.end method

.method public setRightPadding(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    return-void
.end method
