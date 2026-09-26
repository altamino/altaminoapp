.class public Lcom/mobeta/android/dslv/a;
.super Lcom/mobeta/android/dslv/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/mobeta/android/dslv/a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/mobeta/android/dslv/a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/e;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/a;->mSortEnabled:Z

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/mobeta/android/dslv/a;->mHitPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/a;->mFlingHitPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveHitPos:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mobeta/android/dslv/a;->mTempLoc:[I

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mDragging:Z

    const/high16 v1, 0x43fa0000    # 500.0f

    iput v1, p0, Lcom/mobeta/android/dslv/a;->mFlingSpeed:F

    iput-object p1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 5
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/a;->mDetector:Landroid/view/GestureDetector;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/a;->mTouchSlop:I

    iput p2, p0, Lcom/mobeta/android/dslv/a;->mDragHandleId:I

    iput p5, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveId:I

    iput p6, p0, Lcom/mobeta/android/dslv/a;->mFlingHandleId:I

    .line 8
    invoke-virtual {p0, p4}, Lcom/mobeta/android/dslv/a;->setRemoveMode(I)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/mobeta/android/dslv/a;->setDragInitMode(I)V

    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mDragHandleId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/a;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mFlingHandleId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/a;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDragInitMode()I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/a;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mSortEnabled:Z

    return v0
.end method

.method protected onClickRemove(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->c0(I)V

    .line 6
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mRemoveMode:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveId:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/a;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveHitPos:I

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/a;->startDragPosition(Landroid/view/MotionEvent;)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Lcom/mobeta/android/dslv/a;->mHitPos:I

    .line 23
    const/4 v1, -0x1

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    iget v2, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 33
    move-result v2

    .line 34
    float-to-int v2, v2

    .line 35
    .line 36
    iget v3, p0, Lcom/mobeta/android/dslv/a;->mItemX:I

    .line 37
    sub-int/2addr v2, v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    move-result v3

    .line 42
    float-to-int v3, v3

    .line 43
    .line 44
    iget v4, p0, Lcom/mobeta/android/dslv/a;->mItemY:I

    .line 45
    sub-int/2addr v3, v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v2, v3}, Lcom/mobeta/android/dslv/a;->startDrag(III)Z

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 52
    const/4 v2, 0x1

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/a;->mCanDrag:Z

    .line 55
    .line 56
    iput v0, p0, Lcom/mobeta/android/dslv/a;->mPositionX:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/a;->startFlingPosition(Landroid/view/MotionEvent;)I

    .line 60
    move-result p1

    .line 61
    .line 62
    iput p1, p0, Lcom/mobeta/android/dslv/a;->mFlingHitPos:I

    .line 63
    .line 64
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveHitPos:I

    .line 65
    .line 66
    if-eq p1, v1, :cond_2

    .line 67
    move v0, v2

    .line 68
    :cond_2
    return v0
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    iput p1, p0, Lcom/mobeta/android/dslv/a;->mPositionX:I

    .line 13
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    .line 2
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mHitPos:I

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    .line 8
    const/4 v0, 0x2

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 17
    .line 18
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mHitPos:I

    .line 19
    .line 20
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mCurrX:I

    .line 21
    .line 22
    iget v1, p0, Lcom/mobeta/android/dslv/a;->mItemX:I

    .line 23
    sub-int/2addr v0, v1

    .line 24
    .line 25
    iget v1, p0, Lcom/mobeta/android/dslv/a;->mCurrY:I

    .line 26
    .line 27
    iget v2, p0, Lcom/mobeta/android/dslv/a;->mItemY:I

    .line 28
    sub-int/2addr v1, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/a;->startDrag(III)Z

    .line 32
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    move-result p4

    .line 12
    float-to-int p4, p4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    move-result p1

    .line 17
    float-to-int p1, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    move-result p2

    .line 27
    float-to-int p2, p2

    .line 28
    .line 29
    iget v1, p0, Lcom/mobeta/android/dslv/a;->mItemX:I

    .line 30
    .line 31
    sub-int v1, v0, v1

    .line 32
    .line 33
    iget v2, p0, Lcom/mobeta/android/dslv/a;->mItemY:I

    .line 34
    .line 35
    sub-int v2, p2, v2

    .line 36
    .line 37
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/a;->mCanDrag:Z

    .line 38
    .line 39
    if-eqz v3, :cond_5

    .line 40
    .line 41
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/a;->mDragging:Z

    .line 42
    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    iget v3, p0, Lcom/mobeta/android/dslv/a;->mHitPos:I

    .line 46
    const/4 v4, -0x1

    .line 47
    .line 48
    if-ne v3, v4, :cond_1

    .line 49
    .line 50
    iget v5, p0, Lcom/mobeta/android/dslv/a;->mFlingHitPos:I

    .line 51
    .line 52
    if-eq v5, v4, :cond_5

    .line 53
    :cond_1
    const/4 v5, 0x1

    .line 54
    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    iget v3, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    .line 58
    .line 59
    if-ne v3, v5, :cond_2

    .line 60
    sub-int/2addr p2, p1

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 64
    move-result p1

    .line 65
    .line 66
    iget p2, p0, Lcom/mobeta/android/dslv/a;->mTouchSlop:I

    .line 67
    .line 68
    if-le p1, p2, :cond_2

    .line 69
    .line 70
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mSortEnabled:Z

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mHitPos:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/a;->startDrag(III)Z

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    sub-int/2addr v0, p4

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 87
    move-result p1

    .line 88
    .line 89
    iget p2, p0, Lcom/mobeta/android/dslv/a;->mTouchSlop:I

    .line 90
    .line 91
    if-le p1, p2, :cond_5

    .line 92
    .line 93
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 98
    .line 99
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mFlingHitPos:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/a;->startDrag(III)Z

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_3
    iget v3, p0, Lcom/mobeta/android/dslv/a;->mFlingHitPos:I

    .line 106
    .line 107
    if-eq v3, v4, :cond_5

    .line 108
    sub-int/2addr v0, p4

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 112
    move-result p4

    .line 113
    .line 114
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mTouchSlop:I

    .line 115
    .line 116
    if-le p4, v0, :cond_4

    .line 117
    .line 118
    iget-boolean p4, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 119
    .line 120
    if-eqz p4, :cond_4

    .line 121
    .line 122
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 123
    .line 124
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mFlingHitPos:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/a;->startDrag(III)Z

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    sub-int/2addr p2, p1

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 133
    move-result p1

    .line 134
    .line 135
    iget p2, p0, Lcom/mobeta/android/dslv/a;->mTouchSlop:I

    .line 136
    .line 137
    if-le p1, p2, :cond_5

    .line 138
    .line 139
    iput-boolean p3, p0, Lcom/mobeta/android/dslv/a;->mCanDrag:Z

    .line 140
    :cond_5
    :goto_0
    return p3

    .line 141
    .line 142
    :cond_6
    :goto_1
    const-string p1, "MotionEvent"

    .line 143
    .line 144
    const-string p2, "motion event is null"

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mRemoveMode:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget p1, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveHitPos:I

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 19
    move-result v0

    .line 20
    sub-int/2addr p1, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/a;->onClickRemove(I)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->X()Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->Y()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/a;->mDetector:Landroid/view/GestureDetector;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/a;->mDragging:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget v1, p0, Lcom/mobeta/android/dslv/a;->mRemoveMode:I

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mobeta/android/dslv/a;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 46
    move-result v1

    .line 47
    .line 48
    and-int/lit16 v1, v1, 0xff

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    if-eq v1, v2, :cond_2

    .line 53
    const/4 p2, 0x3

    .line 54
    .line 55
    if-eq v1, p2, :cond_3

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iget-boolean p2, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    iget-boolean p2, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    iget-object p2, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 67
    const/4 v1, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v1}, Lcom/mobeta/android/dslv/DragSortListView;->j0(F)Z

    .line 71
    .line 72
    :cond_3
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mDragging:Z

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 79
    move-result v0

    .line 80
    float-to-int v0, v0

    .line 81
    .line 82
    iput v0, p0, Lcom/mobeta/android/dslv/a;->mCurrX:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 86
    move-result p2

    .line 87
    float-to-int p2, p2

    .line 88
    .line 89
    iput p2, p0, Lcom/mobeta/android/dslv/a;->mCurrY:I

    .line 90
    :goto_0
    return p1

    .line 91
    :cond_5
    :goto_1
    return v0
.end method

.method public setClickRemoveId(I)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/a;->mClickRemoveId:I

    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/a;->mDragHandleId:I

    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/a;->mDragInitMode:I

    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/a;->mFlingHandleId:I

    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/a;->mRemoveMode:I

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mSortEnabled:Z

    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mSortEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/a;->mRemoveEnabled:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/a;->mIsRemoving:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x3

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 28
    move-result v2

    .line 29
    sub-int/2addr p1, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->f0(IIII)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/a;->mDragging:Z

    .line 36
    return p1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/a;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/a;->mRemoveMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/a;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    .line 9
    move-result p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    return p1
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 22
    move-result v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 28
    move-result v2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    .line 34
    move-result v3

    .line 35
    const/4 v4, -0x1

    .line 36
    .line 37
    if-eq v0, v4, :cond_1

    .line 38
    .line 39
    if-lt v0, v1, :cond_1

    .line 40
    sub-int/2addr v3, v2

    .line 41
    .line 42
    if-ge v0, v3, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/mobeta/android/dslv/a;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 48
    move-result v2

    .line 49
    .line 50
    sub-int v2, v0, v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 58
    move-result v2

    .line 59
    float-to-int v2, v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 63
    move-result p1

    .line 64
    float-to-int p1, p1

    .line 65
    .line 66
    if-nez p2, :cond_0

    .line 67
    move-object p2, v1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    :goto_0
    if-eqz p2, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 78
    move-result v3

    .line 79
    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    iget-object v3, p0, Lcom/mobeta/android/dslv/a;->mTempLoc:[I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    .line 87
    iget-object v3, p0, Lcom/mobeta/android/dslv/a;->mTempLoc:[I

    .line 88
    const/4 v5, 0x0

    .line 89
    .line 90
    aget v5, v3, v5

    .line 91
    .line 92
    if-le v2, v5, :cond_1

    .line 93
    const/4 v6, 0x1

    .line 94
    .line 95
    aget v3, v3, v6

    .line 96
    .line 97
    if-le p1, v3, :cond_1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 101
    move-result v3

    .line 102
    add-int/2addr v5, v3

    .line 103
    .line 104
    if-ge v2, v5, :cond_1

    .line 105
    .line 106
    iget-object v2, p0, Lcom/mobeta/android/dslv/a;->mTempLoc:[I

    .line 107
    .line 108
    aget v2, v2, v6

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 112
    move-result p2

    .line 113
    add-int/2addr v2, p2

    .line 114
    .line 115
    if-ge p1, v2, :cond_1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 119
    move-result p1

    .line 120
    .line 121
    iput p1, p0, Lcom/mobeta/android/dslv/a;->mItemX:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 125
    move-result p1

    .line 126
    .line 127
    iput p1, p0, Lcom/mobeta/android/dslv/a;->mItemY:I

    .line 128
    return v0

    .line 129
    :cond_1
    return v4
.end method
