.class public Lcom/narvii/widget/DragSortGallery;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/DragSortGallery$Stub;
    }
.end annotation


# instance fields
.field dX:I

.field dY:I

.field downX:I

.field downY:I

.field dragCanceled:Z

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

.field end:I

.field final gd:Landroid/view/GestureDetector;

.field private final gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput p2, p0, Lcom/narvii/widget/DragSortGallery;->start:I

    .line 7
    .line 8
    .line 9
    const p2, 0x7fffffff

    .line 10
    .line 11
    iput p2, p0, Lcom/narvii/widget/DragSortGallery;->end:I

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/widget/DragSortGallery$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/narvii/widget/DragSortGallery$1;-><init>(Lcom/narvii/widget/DragSortGallery;)V

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/widget/DragSortGallery;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 19
    .line 20
    new-instance v0, Landroid/view/GestureDetector;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/widget/DragSortGallery;->gd:Landroid/view/GestureDetector;

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 30
    return-void
.end method

.method private clearDx(Landroid/view/View;)V
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

.method private getDx(Landroid/view/View;J)I
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
    instance-of v0, p1, Lcom/narvii/widget/DragSortGallery$Stub;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/DragSortGallery$Stub;

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
    iget v0, p1, Lcom/narvii/widget/DragSortGallery$Stub;->x1:I

    .line 24
    .line 25
    iget v1, p1, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget v2, p1, Lcom/narvii/widget/DragSortGallery$Stub;->v:F

    .line 31
    .line 32
    iget-wide v3, p1, Lcom/narvii/widget/DragSortGallery$Stub;->time:J

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
    iget p1, p1, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

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

.method private setDx(Landroid/view/View;IFJ)V
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
    instance-of v2, v1, Lcom/narvii/widget/DragSortGallery$Stub;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/widget/DragSortGallery$Stub;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/narvii/widget/DragSortGallery$Stub;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/narvii/widget/DragSortGallery$Stub;-><init>(Lcom/narvii/widget/e;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    .line 24
    :goto_0
    iget v0, v1, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

    .line 25
    .line 26
    if-eq p2, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p4, p5}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, v1, Lcom/narvii/widget/DragSortGallery$Stub;->x1:I

    .line 33
    .line 34
    iput p2, v1, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

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
    iput p1, v1, Lcom/narvii/widget/DragSortGallery$Stub;->v:F

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
    iput p1, v1, Lcom/narvii/widget/DragSortGallery$Stub;->v:F

    .line 51
    .line 52
    :goto_1
    iput-wide p4, v1, Lcom/narvii/widget/DragSortGallery$Stub;->time:J

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
    iget-object v0, v6, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    .line 12
    iget-object v0, v6, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 13
    const/4 v9, 0x1

    .line 14
    .line 15
    if-ne v8, v0, :cond_1

    .line 16
    .line 17
    iget v0, v6, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    iget v1, v6, Lcom/narvii/widget/DragSortGallery;->dY:I

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
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v2

    .line 33
    int-to-float v0, v2

    .line 34
    .line 35
    const/high16 v1, 0x42f00000    # 120.0f

    .line 36
    .line 37
    div-float v3, v0, v1

    .line 38
    .line 39
    iget v0, v6, Lcom/narvii/widget/DragSortGallery;->start:I

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v4

    .line 49
    .line 50
    iget v5, v6, Lcom/narvii/widget/DragSortGallery;->end:I

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v4

    .line 55
    .line 56
    :goto_0
    if-ge v0, v4, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object v10

    .line 61
    .line 62
    if-ne v10, v8, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 70
    move-result v4

    .line 71
    add-int/2addr v0, v4

    .line 72
    .line 73
    div-int/lit8 v0, v0, 0x2

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide v4, 0x7fffffffffffffffL

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v10, v4, v5}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    .line 82
    move-result v4

    .line 83
    add-int/2addr v0, v4

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    iget v4, v6, Lcom/narvii/widget/DragSortGallery;->downX:I

    .line 88
    .line 89
    iget v5, v6, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 90
    add-int/2addr v4, v5

    .line 91
    .line 92
    if-le v0, v4, :cond_2

    .line 93
    move-object v0, p0

    .line 94
    move-object v1, v10

    .line 95
    .line 96
    move-wide/from16 v4, p3

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortGallery;->setDx(Landroid/view/View;IFJ)V

    .line 100
    .line 101
    :goto_1
    move-wide/from16 v11, p3

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_2
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget v1, v6, Lcom/narvii/widget/DragSortGallery;->downX:I

    .line 107
    .line 108
    iget v4, v6, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 109
    add-int/2addr v1, v4

    .line 110
    .line 111
    if-ge v0, v1, :cond_3

    .line 112
    neg-int v2, v2

    .line 113
    move-object v0, p0

    .line 114
    move-object v1, v10

    .line 115
    .line 116
    move-wide/from16 v4, p3

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortGallery;->setDx(Landroid/view/View;IFJ)V

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const/4 v2, 0x0

    .line 122
    move-object v0, p0

    .line 123
    move-object v1, v10

    .line 124
    .line 125
    move-wide/from16 v4, p3

    .line 126
    .line 127
    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortGallery;->setDx(Landroid/view/View;IFJ)V

    .line 129
    goto :goto_1

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-direct {p0, v10, v11, v12}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    .line 133
    move-result v0

    .line 134
    int-to-float v0, v0

    .line 135
    const/4 v1, 0x0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    goto :goto_3

    .line 140
    .line 141
    :cond_4
    move-wide/from16 v11, p3

    .line 142
    .line 143
    iget-object v5, v6, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 144
    .line 145
    if-ne v10, v5, :cond_5

    .line 146
    move v1, v9

    .line 147
    .line 148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 149
    goto :goto_0

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 159
    return v9

    .line 160
    .line 161
    :cond_6
    move-wide/from16 v11, p3

    .line 162
    .line 163
    .line 164
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 165
    move-result v0

    .line 166
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->drawTop:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/DragSortGallery;->getParentScrollView()Landroid/widget/ScrollView;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    .line 26
    iget v2, p0, Lcom/narvii/widget/DragSortGallery;->start:I

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
    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result v4

    .line 36
    .line 37
    iget v5, p0, Lcom/narvii/widget/DragSortGallery;->end:I

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result v4

    .line 42
    .line 43
    :goto_0
    if-ge v2, v4, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 51
    move-result v6

    .line 52
    .line 53
    if-ge v6, v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 57
    move-result v6

    .line 58
    .line 59
    if-le v6, v0, :cond_1

    .line 60
    .line 61
    iput-object v5, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/widget/DragSortGallery;->drawTop:Ljava/lang/ref/WeakReference;

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const/high16 v2, 0x3f000000    # 0.5f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 88
    move-result v0

    .line 89
    float-to-int v0, v0

    .line 90
    .line 91
    iput v0, p0, Lcom/narvii/widget/DragSortGallery;->downX:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 95
    move-result p1

    .line 96
    float-to-int p1, p1

    .line 97
    .line 98
    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->downY:I

    .line 99
    .line 100
    iput v3, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 101
    .line 102
    iput v3, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v1, v3

    .line 109
    :goto_2
    return v1

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    move-result p1

    .line 114
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->gd:Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    .line 16
    return v2

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return v2

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x2

    .line 27
    .line 28
    if-ne v0, v3, :cond_4

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    move-result v1

    .line 38
    float-to-int v1, v1

    .line 39
    .line 40
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    move-result v1

    .line 47
    float-to-int v1, v1

    .line 48
    .line 49
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 58
    move-result v0

    .line 59
    float-to-int v0, v0

    .line 60
    .line 61
    iget v1, p0, Lcom/narvii/widget/DragSortGallery;->downX:I

    .line 62
    sub-int/2addr v0, v1

    .line 63
    .line 64
    iput v0, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 68
    move-result p1

    .line 69
    float-to-int p1, p1

    .line 70
    .line 71
    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->downY:I

    .line 72
    sub-int/2addr p1, v0

    .line 73
    .line 74
    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 78
    move-result p1

    .line 79
    .line 80
    div-int/lit8 p1, p1, 0x4

    .line 81
    .line 82
    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 83
    neg-int v1, p1

    .line 84
    .line 85
    if-ge v0, v1, :cond_2

    .line 86
    .line 87
    iput v1, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_2
    if-le v0, p1, :cond_3

    .line 91
    .line 92
    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 96
    return v2

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 100
    move-result v0

    .line 101
    const/4 v3, 0x3

    .line 102
    .line 103
    if-eq v0, v2, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 107
    move-result v0

    .line 108
    .line 109
    if-ne v0, v3, :cond_5

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    move-result p1

    .line 115
    return p1

    .line 116
    .line 117
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 118
    .line 119
    const-wide/16 v4, 0xc8

    .line 120
    .line 121
    const/high16 v6, 0x3f800000    # 1.0f

    .line 122
    const/4 v7, 0x0

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 128
    move-result v0

    .line 129
    .line 130
    if-ne v0, v3, :cond_7

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 133
    .line 134
    iget v3, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 135
    int-to-float v3, v3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 141
    .line 142
    iget v3, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 143
    int-to-float v3, v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    .line 148
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 170
    .line 171
    if-eqz v0, :cond_10

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 175
    move-result p1

    .line 176
    .line 177
    if-ne p1, v2, :cond_10

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 181
    move-result p1

    .line 182
    const/4 v0, -0x1

    .line 183
    move v9, v0

    .line 184
    move v10, v9

    .line 185
    move v3, v1

    .line 186
    move v8, v3

    .line 187
    .line 188
    :goto_2
    if-ge v3, p1, :cond_d

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 192
    move-result-object v11

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    const-wide v12, 0x7fffffffffffffffL

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, v11, v12, v13}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    .line 201
    move-result v12

    .line 202
    .line 203
    iget-object v13, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 204
    .line 205
    if-ne v11, v13, :cond_8

    .line 206
    move v12, v1

    .line 207
    goto :goto_4

    .line 208
    .line 209
    :cond_8
    if-lez v12, :cond_9

    .line 210
    .line 211
    if-ne v10, v0, :cond_9

    .line 212
    move v10, v3

    .line 213
    goto :goto_3

    .line 214
    .line 215
    :cond_9
    if-gez v12, :cond_a

    .line 216
    move v9, v3

    .line 217
    .line 218
    :cond_a
    :goto_3
    if-lez v12, :cond_b

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 222
    move-result v12

    .line 223
    goto :goto_4

    .line 224
    .line 225
    :cond_b
    if-gez v12, :cond_c

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 229
    move-result v11

    .line 230
    neg-int v12, v11

    .line 231
    :cond_c
    :goto_4
    add-int/2addr v8, v12

    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    goto :goto_2

    .line 235
    .line 236
    :cond_d
    if-eqz v8, :cond_f

    .line 237
    .line 238
    if-ltz v9, :cond_e

    .line 239
    .line 240
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    .line 245
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 249
    goto :goto_5

    .line 250
    .line 251
    :cond_e
    if-ltz v10, :cond_f

    .line 252
    .line 253
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    .line 258
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 262
    .line 263
    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 264
    .line 265
    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 266
    add-int/2addr v0, v8

    .line 267
    int-to-float v0, v0

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 271
    .line 272
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 273
    .line 274
    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 275
    int-to-float v0, v0

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 279
    .line 280
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 288
    move-result-object p1

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 292
    move-result-object p1

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 296
    move-result-object p1

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 300
    :cond_10
    const/4 p1, 0x0

    .line 301
    .line 302
    iput-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 306
    move-result p1

    .line 307
    .line 308
    :goto_6
    if-ge v1, p1, :cond_11

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 312
    move-result-object v0

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, v0}, Lcom/narvii/widget/DragSortGallery;->clearDx(Landroid/view/View;)V

    .line 316
    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 318
    goto :goto_6

    .line 319
    .line 320
    .line 321
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 322
    return v2
.end method

.method public setDragRange(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->start:I

    iput p2, p0, Lcom/narvii/widget/DragSortGallery;->end:I

    return-void
.end method
