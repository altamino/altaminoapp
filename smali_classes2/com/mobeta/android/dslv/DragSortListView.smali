.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScroller;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DropListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragListener;,
        Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;,
        Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$HeightCache;,
        Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mCancelOnDataChanged:Z

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 444
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    iput v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 97
    iput v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 122
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    const/4 v3, 0x1

    .line 178
    iput-boolean v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 188
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 195
    iput v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 211
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    new-array v4, v3, [Landroid/view/View;

    .line 217
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v4, 0x3eaaaaab

    .line 229
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 236
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v8, 0x3f000000    # 0.5f

    .line 260
    iput v8, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 268
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$1;

    invoke-direct {v4, v7}, Lcom/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 332
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 338
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 343
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v4, 0x0

    .line 348
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 368
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    const/high16 v4, 0x3e800000    # 0.25f

    .line 375
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v4, 0x0

    .line 384
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 397
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 407
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 414
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 428
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v6, 0x3

    invoke-direct {v5, v7, v6}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    iput-object v5, v7, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 435
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 436
    iput-boolean v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelOnDataChanged:Z

    .line 1529
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2011
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    const/16 v5, 0x96

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v9, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView:[I

    invoke-virtual {v6, v0, v9, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 454
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_collapsed_height:I

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 457
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_track_drag_sort:I

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 460
    iget-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    .line 465
    :cond_0
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_float_alpha:I

    iget v6, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 466
    iget v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 468
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_drag_enabled:I

    iget-boolean v6, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 470
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_slide_shuffle_speed:I

    const/high16 v6, 0x3f400000    # 0.75f

    .line 471
    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 470
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 475
    iget v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 477
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_drag_scroll_start:I

    iget v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 481
    invoke-virtual {v7, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 483
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_max_drag_scroll_speed:I

    iget v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 487
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_remove_animation_duration:I

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 491
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_drop_animation_duration:I

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 495
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_use_default_controller:I

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_remove_enabled:I

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 503
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_remove_mode:I

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 506
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_sort_enabled:I

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 509
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_drag_start_mode:I

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 512
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_drag_handle_id:I

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 515
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_fling_handle_id:I

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 518
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_click_remove_id:I

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 521
    sget v0, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView_float_background_color:I

    const/high16 v1, -0x1000000

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 525
    new-instance v14, Lcom/mobeta/android/dslv/DragSortController;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 528
    invoke-virtual {v14, v11}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 529
    invoke-virtual {v14, v12}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 530
    invoke-virtual {v14, v13}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->setBackgroundColor(I)V

    .line 532
    iput-object v14, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 533
    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v5, v10

    .line 539
    :cond_3
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    if-lez v5, :cond_4

    .line 544
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-direct {v0, v7, v8, v5}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    :cond_4
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 547
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 551
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$2;

    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static synthetic access$100(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method static synthetic access$102(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method static synthetic access$1200(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method static synthetic access$1500(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static synthetic access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static synthetic access$1700(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static synthetic access$1900(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method static synthetic access$200(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelOnDataChanged:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/mobeta/android/dslv/DragSortListView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static synthetic access$2300(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static synthetic access$2600(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return p0
.end method

.method static synthetic access$2700(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return p0
.end method

.method static synthetic access$402(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$500(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method static synthetic access$600(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static synthetic access$800(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method private adjustAllItems()V
    .locals 6

    .line 1692
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1693
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1695
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 1696
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 1699
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 1701
    invoke-direct {p0, v5, v4, v3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 2

    .line 1721
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1723
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 1726
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result p3

    .line 1729
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_1

    .line 1730
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1731
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1735
    :cond_1
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, p3, :cond_2

    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_4

    .line 1736
    :cond_2
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, p3, :cond_3

    .line 1737
    move-object p3, p2

    check-cast p3, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v0, 0x50

    invoke-virtual {p3, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1

    :cond_3
    if-le p1, p3, :cond_4

    .line 1739
    move-object p3, p2

    check-cast p3, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1745
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    .line 1748
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    :cond_5
    if-eq v0, p3, :cond_6

    .line 1753
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private adjustOnReorder()V
    .locals 3

    .line 1388
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1390
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v1, v0, :cond_1

    const/4 v1, 0x0

    .line 1393
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1396
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1399
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 6

    .line 1891
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 1893
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 1894
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 1898
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_0

    sub-int v2, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v2, p2

    move v0, v1

    .line 1903
    :goto_0
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1904
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v4, v5, :cond_1

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_1

    .line 1905
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v3, v4

    :cond_1
    const/4 v4, 0x0

    if-gt p1, p3, :cond_2

    .line 1909
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, p2, :cond_7

    sub-int/2addr v3, v0

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    if-ne p1, p4, :cond_5

    .line 1913
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, p3, :cond_4

    sub-int/2addr v2, v3

    :cond_3
    add-int/2addr v4, v2

    goto :goto_1

    .line 1915
    :cond_4
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_3

    sub-int/2addr p2, v1

    add-int/2addr v4, p2

    goto :goto_1

    .line 1921
    :cond_5
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, p2, :cond_6

    sub-int/2addr v4, v3

    goto :goto_1

    .line 1923
    :cond_6
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p2, :cond_7

    sub-int/2addr v4, v0

    :cond_7
    :goto_1
    return v4
.end method

.method private calcItemHeight(II)I
    .locals 6

    .line 1844
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 1846
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1847
    :goto_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v1, v2

    .line 1848
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 1852
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 1853
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int p2, v4, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 1859
    :cond_2
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, p1, :cond_3

    sub-int p2, v1, v4

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    .line 1865
    :cond_4
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    goto :goto_1

    :cond_5
    add-int/2addr p2, v3

    goto :goto_1

    .line 1871
    :cond_6
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    :goto_1
    return p2
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 0

    .line 1839
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private clearPositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1337
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1338
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1339
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1340
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 4

    .line 1627
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1628
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int p1, p2, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 1630
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1632
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1633
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1636
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v1

    .line 1638
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v2, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 1644
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1648
    :cond_0
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1649
    :cond_1
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-ge p2, v2, :cond_3

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 1655
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1659
    :cond_2
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1661
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 1662
    invoke-virtual {p2}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1666
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private destroyFloatView()V
    .locals 2

    .line 2243
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2244
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2245
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2246
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 2248
    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2249
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 1499
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1500
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1501
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1502
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1504
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1505
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1506
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2152
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2154
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2156
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2157
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2159
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2162
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2163
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 2166
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2167
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 2171
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 2174
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .line 2141
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2142
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2148
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 753
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 754
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 759
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    .line 758
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 761
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    .line 762
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 766
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 768
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_0

    .line 769
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr p1, v5

    sub-int v1, p1, v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 778
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 779
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 780
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 781
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 782
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private dropFloatView()V
    .locals 4

    const/4 v0, 0x2

    .line 1346
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1348
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1349
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 1350
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1353
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1355
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1356
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1357
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1360
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1361
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1363
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private getChildHeight(I)I
    .locals 5

    .line 1758
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1762
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1767
    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p1

    return p1

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 1777
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1778
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1781
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1782
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1783
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 1787
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    .line 1788
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1789
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 1791
    :cond_4
    aget-object v1, v3, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1795
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 1799
    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1802
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    return v0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .line 1809
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1814
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1817
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1820
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1823
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_3

    return p1

    .line 1828
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_5

    .line 1831
    :cond_4
    invoke-direct {p0, p2}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1832
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_5
    return p1
.end method

.method private getItemHeight(I)I
    .locals 1

    .line 835
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 843
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private getShuffleEdge(II)I
    .locals 7

    .line 917
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 918
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 924
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 928
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 932
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 933
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 934
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 939
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 942
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 944
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    .line 949
    :cond_2
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v3, :cond_5

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v3, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 956
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v4, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    .line 958
    :cond_4
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_5

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v4, v1, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    .line 965
    :cond_5
    :goto_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v1, :cond_6

    .line 966
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v0

    .line 968
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method private measureFloatView()V
    .locals 1

    .line 1949
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1950
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1951
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1952
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 1932
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1934
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1935
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1937
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v2

    .line 1938
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1937
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1940
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 1941
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1943
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1945
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 1512
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1513
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1515
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    if-nez v0, :cond_1

    .line 1518
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1519
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1521
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetX:I

    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetY:I

    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .line 2183
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2185
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2188
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 2189
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 2192
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    .line 2193
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    if-le v1, v2, :cond_1

    .line 2194
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 2195
    :cond_1
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-ge v1, v2, :cond_2

    .line 2196
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2200
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 2201
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 2202
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2203
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 2207
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v1, :cond_3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 2209
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2211
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    .line 2212
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v3, v1, :cond_4

    sub-int/2addr v1, v3

    .line 2213
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2218
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 2219
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 2220
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2222
    :cond_5
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 2223
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 2224
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    if-ge v0, v5, :cond_7

    .line 2233
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2234
    :cond_7
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_8

    .line 2235
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2239
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return-void
.end method

.method private updatePositions()Z
    .locals 14

    .line 976
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 977
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    sub-int v2, v1, v0

    .line 978
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 981
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 982
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 984
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 986
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 988
    invoke-direct {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v3

    .line 991
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    .line 997
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 1002
    invoke-direct {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 1010
    invoke-direct {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 1013
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v5, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    .line 1022
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1030
    invoke-direct {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v6

    .line 1031
    invoke-direct {p0, v2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v7

    .line 1035
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v8, v7, :cond_6

    move v0, v7

    goto :goto_2

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_1

    .line 1044
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 1045
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    const/4 v5, 0x0

    .line 1049
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1050
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1051
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1053
    iget-boolean v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v9, :cond_a

    sub-int v9, v0, v3

    .line 1054
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1057
    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v10, v0, :cond_7

    move v13, v3

    move v3, v0

    move v0, v13

    .line 1066
    :cond_7
    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    int-to-float v9, v9

    mul-float v10, v10, v9

    float-to-int v9, v10

    int-to-float v10, v9

    add-int/2addr v0, v9

    sub-int v9, v3, v9

    .line 1072
    iget v12, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v12, v0, :cond_8

    add-int/lit8 v3, v1, -0x1

    .line 1073
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1074
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v0, v12

    int-to-float v0, v0

    mul-float v0, v0, v11

    div-float/2addr v0, v10

    .line 1075
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_3

    :cond_8
    if-ge v12, v9, :cond_9

    .line 1079
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1080
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_3

    .line 1082
    :cond_9
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v0, v1, 0x1

    .line 1083
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-int/2addr v3, v12

    int-to-float v3, v3

    div-float/2addr v3, v10

    add-float/2addr v3, v0

    mul-float v3, v3, v11

    .line 1084
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_3

    .line 1091
    :cond_a
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1092
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1096
    :goto_3
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 1098
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1099
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move v1, v2

    goto :goto_4

    .line 1100
    :cond_b
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-lt v0, v9, :cond_c

    .line 1101
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 1102
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1103
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1106
    :cond_c
    :goto_4
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v7, :cond_d

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    :cond_d
    const/4 v5, 0x1

    .line 1111
    :cond_e
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-eq v1, v0, :cond_10

    .line 1112
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v4, :cond_f

    sub-int/2addr v0, v2

    sub-int v2, v1, v2

    .line 1113
    invoke-interface {v4, v0, v2}, Lcom/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1116
    :cond_f
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    goto :goto_5

    :cond_10
    move v3, v5

    :goto_5
    return v3
.end method

.method private updateScrollStarts()V
    .locals 6

    .line 1671
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 1672
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    .line 1675
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1676
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1678
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v4, v2

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1679
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v5, v4

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    sub-float/2addr v2, v3

    .line 1681
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 1682
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .line 1322
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1324
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1325
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1326
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1328
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1329
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1331
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 789
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 791
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 793
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 794
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 796
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 797
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 803
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 806
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 808
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 819
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float v4, v4, v3

    mul-float v4, v4, v2

    float-to-int v10, v4

    .line 821
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 823
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 824
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    move-object v5, p1

    .line 827
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 828
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .line 582
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 638
    :cond_0
    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 2329
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .line 1971
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1973
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1974
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 1978
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1981
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .line 1526
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1991
    :cond_0
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_1

    .line 1992
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 1994
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2004
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 1998
    :cond_3
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_4

    .line 1999
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag()Z

    .line 2001
    :cond_4
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1125
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1127
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_0

    .line 1128
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1533
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1534
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1537
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 1538
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 1543
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 1545
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v0

    .line 1548
    :cond_1
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1554
    :cond_2
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    .line 1558
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1559
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 1570
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 1572
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1566
    :cond_6
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_1
    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_8

    .line 1578
    :cond_7
    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_8
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1958
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1960
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 1961
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1962
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 p2, 0x1

    .line 1964
    iput-boolean p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1966
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1687
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1688
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1448
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1449
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v1

    .line 1453
    :cond_0
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_1

    .line 1454
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1459
    :cond_1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1460
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    .line 1463
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1467
    :cond_2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 1468
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 1476
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 1481
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-eqz v1, :cond_6

    .line 1490
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1486
    :cond_5
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    :cond_6
    :goto_0
    return v1
.end method

.method public removeItem(I)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1376
    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1379
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1381
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1382
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    const/4 p1, 0x0

    .line 1384
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1883
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1884
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 58
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 608
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 609
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 611
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 612
    move-object v0, p1

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 614
    :cond_0
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    .line 615
    move-object v0, p1

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 617
    :cond_1
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_3

    .line 618
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 624
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setCancelOnDataChanged(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelOnDataChanged:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 2325
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 2311
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2409
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1593
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 1608
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1610
    :cond_0
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 1614
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1

    .line 1616
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1619
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1620
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    :cond_2
    return-void
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .line 2395
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2396
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2397
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 2345
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 578
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 2307
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 2359
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 8

    .line 2041
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2045
    :cond_0
    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 2050
    invoke-virtual/range {v2 .. v7}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 3

    .line 2078
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2083
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2084
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2087
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 2088
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2089
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2090
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2091
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    const/4 p1, 0x4

    .line 2094
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2095
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2096
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2098
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2099
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2101
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2102
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2103
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragStartY:I

    .line 2106
    iget-object p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p4, p5

    iput p4, p3, Landroid/graphics/Point;->x:I

    .line 2107
    iget p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr p2, p4

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 2110
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2113
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    :cond_2
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_3

    .line 2117
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2122
    :cond_3
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    if-eq p1, v2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_0

    .line 2127
    :cond_4
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2124
    :cond_5
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2131
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 2133
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    if-eqz p1, :cond_6

    .line 2134
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->start()V

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public stopDrag()Z
    .locals 1

    const/4 v0, 0x0

    .line 1415
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(F)Z

    move-result v0

    return v0
.end method

.method public stopDrag(F)Z
    .locals 1

    .line 1426
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1427
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1429
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz p1, :cond_0

    .line 1430
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->start()V

    goto :goto_0

    .line 1432
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    .line 1435
    :goto_0
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_1

    .line 1436
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public stopDragWithVelocity(F)Z
    .locals 1

    const/4 v0, 0x1

    .line 1421
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1422
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(F)Z

    move-result p1

    return p1
.end method
