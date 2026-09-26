.class public Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mLastY:I

.field private mNestedOffsetY:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private final target:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollConsumed:[I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    .line 15
    .line 16
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->a(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->b(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->c(II[I[I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->f(IIII[I)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->k()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput v2, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    move-result v3

    .line 18
    float-to-int v3, v3

    .line 19
    .line 20
    iget v4, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 21
    int-to-float v4, v4

    .line 22
    const/4 v5, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26
    const/4 p1, 0x2

    .line 27
    .line 28
    if-eqz v1, :cond_5

    .line 29
    const/4 v4, 0x1

    .line 30
    .line 31
    if-eq v1, v4, :cond_4

    .line 32
    .line 33
    if-eq v1, p1, :cond_1

    .line 34
    const/4 p1, 0x3

    .line 35
    .line 36
    if-eq v1, p1, :cond_4

    .line 37
    const/4 p1, 0x5

    .line 38
    .line 39
    if-eq v1, p1, :cond_4

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 43
    sub-int/2addr p1, v3

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollConsumed:[I

    .line 46
    .line 47
    iget-object v6, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2, p1, v1, v6}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollConsumed:[I

    .line 56
    .line 57
    aget v1, v1, v4

    .line 58
    sub-int/2addr p1, v1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 61
    .line 62
    aget v1, v1, v4

    .line 63
    int-to-float v1, v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 67
    .line 68
    iget v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 69
    .line 70
    iget-object v6, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 71
    .line 72
    aget v6, v6, v4

    .line 73
    add-int/2addr v1, v6

    .line 74
    .line 75
    iput v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 76
    .line 77
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 78
    .line 79
    aget v1, v1, v4

    .line 80
    sub-int/2addr v3, v1

    .line 81
    .line 82
    iput v3, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 88
    move-result v1

    .line 89
    .line 90
    add-int v3, v1, p1

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v2

    .line 95
    .line 96
    sub-int v8, v2, v1

    .line 97
    .line 98
    sub-int v10, p1, v8

    .line 99
    .line 100
    if-gez p1, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 106
    move-result p1

    .line 107
    .line 108
    if-nez p1, :cond_3

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    .line 112
    iget-object v11, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 113
    move-object v6, p0

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v6 .. v11}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 117
    move-result p1

    .line 118
    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 122
    .line 123
    aget p1, p1, v4

    .line 124
    int-to-float p1, p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 128
    .line 129
    iget p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 130
    .line 131
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    .line 132
    .line 133
    aget v1, v1, v4

    .line 134
    add-int/2addr p1, v1

    .line 135
    .line 136
    iput p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 137
    .line 138
    iget p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 139
    sub-int/2addr p1, v1

    .line 140
    .line 141
    iput p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 145
    goto :goto_0

    .line 146
    .line 147
    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_5
    iput v3, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 155
    :goto_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->n(Z)V

    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->p(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->r()V

    .line 6
    return-void
.end method
