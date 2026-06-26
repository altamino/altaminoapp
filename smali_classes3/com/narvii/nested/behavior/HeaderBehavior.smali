.class public abstract Lcom/narvii/nested/behavior/HeaderBehavior;
.super Lcom/narvii/nested/behavior/ViewOffsetBehavior;
.source "HeaderBehavior.java"


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

    .line 31
    invoke-direct {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 28
    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 28
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

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

.method public final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 212
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 214
    iput-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 217
    :cond_0
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    if-nez v2, :cond_1

    .line 218
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 221
    :cond_1
    iget-object v4, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    .line 223
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    .line 221
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 227
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    new-instance v2, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;

    move-object v3, p1

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;-><init>(Lcom/narvii/nested/behavior/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 229
    iget-object v2, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    move-object v3, p1

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getMaxDragOffset(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 43
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 46
    iget-boolean v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    return v2

    .line 50
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_5

    goto :goto_0

    .line 64
    :cond_2
    iget p2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    if-ne p2, p1, :cond_3

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-ne p2, p1, :cond_4

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 75
    iget p2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 76
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    if-le p2, v0, :cond_7

    .line 77
    iput-boolean v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 78
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    goto :goto_0

    .line 85
    :cond_5
    iput-boolean v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 86
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 87
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 88
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 52
    :cond_6
    iput-boolean v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 53
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 54
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 55
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 56
    iput v1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 57
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 58
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;->ensureVelocityTracker()V

    .line 95
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 96
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 99
    :cond_8
    iget-boolean p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    return p1
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    .line 108
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    goto/16 :goto_1

    .line 124
    :cond_1
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v2

    .line 129
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 130
    iget v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    sub-int/2addr v2, v0

    .line 132
    iget-boolean v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mTouchSlop:I

    if-le v3, v4, :cond_4

    .line 133
    iput-boolean v1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-lez v2, :cond_3

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_3
    add-int/2addr v2, v4

    :cond_4
    :goto_0
    move v6, v2

    .line 141
    iget-boolean v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v2, :cond_8

    .line 142
    iput v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 144
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/nested/behavior/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 151
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 153
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    .line 154
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v0

    neg-int v8, v0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/narvii/nested/behavior/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 158
    :cond_6
    iput-boolean v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 159
    iput v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 160
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 161
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 110
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 111
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 113
    invoke-virtual {p1, p2, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 114
    iput v3, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mLastMotionY:I

    .line 115
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mActivePointerId:I

    .line 116
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;->ensureVelocityTracker()V

    .line 168
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    .line 169
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    return v1

    :cond_a
    return v2
.end method

.method public final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 206
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_0

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    .line 188
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 191
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
