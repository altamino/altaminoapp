.class public Lcom/mobeta/android/dslv/DragSortController;
.super Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

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

    .line 94
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

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

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V

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

    .line 102
    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V
    .locals 3

    .line 114
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 48
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    const/4 v1, -0x1

    .line 58
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 59
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 61
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 63
    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    .line 71
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 73
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    .line 115
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 116
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 117
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    .line 119
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 120
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 121
    iput p6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    .line 122
    invoke-virtual {p0, p4}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 308
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 312
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public getDragInitMode()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method protected onClickRemove(I)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 355
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 356
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 360
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-nez v2, :cond_1

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    :cond_1
    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    const/4 v2, 0x1

    .line 365
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    .line 366
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 367
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 369
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 273
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p1, :cond_0

    .line 274
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

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

    .line 410
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 411
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    .line 412
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 p3, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 382
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int v1, v0, v1

    .line 383
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int v2, p2, v2

    .line 385
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v3, v4, :cond_5

    .line 386
    :cond_1
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 387
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-ne v3, v5, :cond_2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz p1, :cond_2

    .line 388
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 389
    :cond_2
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-eqz p1, :cond_5

    sub-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_5

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_5

    .line 390
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 391
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 393
    :cond_3
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v3, v4, :cond_5

    sub-int/2addr v0, p4

    .line 394
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p4, v0, :cond_4

    iget-boolean p4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p4, :cond_4

    .line 395
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 396
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    :cond_4
    sub-int/2addr p2, p1

    .line 397
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_5

    .line 398
    iput-boolean p3, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    :cond_5
    :goto_0
    return p3

    :cond_6
    :goto_1
    const-string p1, "MotionEvent"

    const-string p2, "motion event is null"

    .line 375
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 425
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez p1, :cond_0

    .line 426
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->onClickRemove(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 238
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->isDragEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->listViewIntercepted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 243
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-ne v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_2

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    goto :goto_0

    .line 254
    :cond_2
    iget-boolean p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p2, :cond_3

    .line 255
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 256
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(F)Z

    .line 259
    :cond_3
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 260
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    :goto_0
    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public setClickRemoveId(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .line 223
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(IIII)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 233
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    return p1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .line 295
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 8

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 319
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 322
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 323
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 330
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 335
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 338
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v2, v6, :cond_1

    const/4 v6, 0x1

    aget v7, v3, v6

    if-le p1, v7, :cond_1

    aget v3, v3, v5

    .line 339
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    aget v2, v2, v6

    .line 340
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_1

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    .line 343
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    return v0

    :cond_1
    return v4
.end method
