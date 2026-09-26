.class public abstract Lcom/narvii/nested/behavior/HeaderBehavior;
.super Lcom/narvii/nested/behavior/ViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/narvii/nested/behavior/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public canDragView(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    .line 4
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    iput-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Landroid/widget/OverScroller;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    iput-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 30
    const/4 v5, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result v8

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    .line 43
    move/from16 v11, p3

    .line 44
    .line 45
    move/from16 v12, p4

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 49
    .line 50
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    new-instance v2, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;

    .line 59
    move-object v3, p1

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;-><init>(Lcom/narvii/nested/behavior/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 63
    .line 64
    iput-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 68
    const/4 v1, 0x1

    .line 69
    return v1

    .line 70
    :cond_2
    move-object v3, p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 74
    const/4 v1, 0x0

    .line 75
    return v1
.end method

.method public getMaxDragOffset(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    move-result p1

    .line 5
    neg-int p1, p1

    .line 6
    return p1
.end method

.method public getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    return v2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    if-eqz v0, :cond_6

    .line 39
    const/4 p1, -0x1

    .line 40
    .line 41
    if-eq v0, v2, :cond_5

    .line 42
    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    const/4 p2, 0x3

    .line 45
    .line 46
    if-eq v0, p2, :cond_5

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    iget p2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 50
    .line 51
    if-ne p2, p1, :cond_3

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 56
    move-result p2

    .line 57
    .line 58
    if-ne p2, p1, :cond_4

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 63
    move-result p1

    .line 64
    float-to-int p1, p1

    .line 65
    .line 66
    iget p2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 67
    .line 68
    sub-int p2, p1, p2

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 72
    move-result p2

    .line 73
    .line 74
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 75
    .line 76
    if-le p2, v0, :cond_7

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 79
    .line 80
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_5
    iput-boolean v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 84
    .line 85
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 93
    const/4 p1, 0x0

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_6
    iput-boolean v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 102
    move-result v0

    .line 103
    float-to-int v0, v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 107
    move-result v1

    .line 108
    float-to-int v1, v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    iput v1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 126
    move-result p1

    .line 127
    .line 128
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;->ensureVelocityTracker()V

    .line 132
    .line 133
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 139
    .line 140
    :cond_8
    iget-boolean p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 141
    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    const/4 v3, -0x1

    .line 28
    .line 29
    if-eq v0, v1, :cond_5

    .line 30
    const/4 v4, 0x2

    .line 31
    .line 32
    if-eq v0, v4, :cond_1

    .line 33
    const/4 p1, 0x3

    .line 34
    .line 35
    if-eq v0, p1, :cond_6

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-ne v0, v3, :cond_2

    .line 46
    return v2

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 50
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    .line 53
    iget v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 54
    sub-int/2addr v2, v0

    .line 55
    .line 56
    iget-boolean v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 62
    move-result v3

    .line 63
    .line 64
    iget v4, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 65
    .line 66
    if-le v3, v4, :cond_3

    .line 67
    .line 68
    iput-boolean v1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 69
    .line 70
    if-lez v2, :cond_4

    .line 71
    sub-int/2addr v2, v4

    .line 72
    :cond_3
    :goto_0
    move v6, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    add-int/2addr v2, v4

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 78
    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    .line 85
    move-result v7

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v3, p0

    .line 88
    move-object v4, p1

    .line 89
    move-object v5, p2

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/nested/behavior/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :cond_5
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 103
    .line 104
    const/16 v4, 0x3e8

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 110
    .line 111
    iget v4, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 115
    move-result v10

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    .line 119
    move-result v0

    .line 120
    neg-int v8, v0

    .line 121
    const/4 v9, 0x0

    .line 122
    move-object v5, p0

    .line 123
    move-object v6, p1

    .line 124
    move-object v7, p2

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {v5 .. v10}, Lcom/narvii/nested/behavior/HeaderBehavior;->fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 128
    .line 129
    :cond_6
    iput-boolean v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 130
    .line 131
    iput v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 139
    const/4 p1, 0x0

    .line 140
    .line 141
    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    goto :goto_2

    .line 143
    .line 144
    .line 145
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 146
    move-result v0

    .line 147
    float-to-int v0, v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 151
    move-result v3

    .line 152
    float-to-int v3, v3

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 156
    move-result p1

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    .line 162
    move-result p1

    .line 163
    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    iput v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 170
    move-result p1

    .line 171
    .line 172
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 173
    .line 174
    .line 175
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;->ensureVelocityTracker()V

    .line 176
    .line 177
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 178
    .line 179
    if-eqz p1, :cond_9

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 183
    :cond_9
    return v1

    .line 184
    :cond_a
    return v2
.end method

.method public final scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sub-int v4, v0, p3

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_0

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    .line 3
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->b(III)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
