.class public Lcom/narvii/widget/Gallery;
.super Lcom/narvii/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

.field private final mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private final mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    const/16 p2, 0x190

    .line 81
    iput p2, p0, Lcom/narvii/widget/Gallery;->mAnimationDuration:I

    .line 119
    new-instance p2, Lcom/narvii/widget/Gallery$FlingRunnable;

    invoke-direct {p2, p0}, Lcom/narvii/widget/Gallery$FlingRunnable;-><init>(Lcom/narvii/widget/Gallery;)V

    iput-object p2, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 125
    new-instance p2, Lcom/narvii/widget/Gallery$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/Gallery$1;-><init>(Lcom/narvii/widget/Gallery;)V

    iput-object p2, p0, Lcom/narvii/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 150
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 155
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 181
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 209
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/narvii/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 210
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/widget/Gallery;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/widget/Gallery;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/widget/Gallery;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/narvii/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/widget/Gallery;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/widget/Gallery;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/widget/Gallery;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Lcom/narvii/widget/Gallery;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/widget/Gallery;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    return p0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 3

    if-eqz p2, :cond_0

    .line 957
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    .line 962
    iget v1, p0, Lcom/narvii/widget/Gallery;->mGravity:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 972
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    sub-int p2, v0, p1

    goto :goto_2

    .line 964
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 967
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 969
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :goto_2
    return p2
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    .line 478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 479
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 484
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 487
    iget-boolean v7, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_0

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_0
    move v7, v4

    .line 489
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 490
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 495
    iget-object v6, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_0

    .line 498
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-nez v0, :cond_7

    goto :goto_6

    .line 502
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ltz v4, :cond_6

    .line 505
    iget-boolean v7, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_4

    sub-int v7, v0, v4

    goto :goto_4

    :cond_4
    move v7, v4

    .line 507
    :goto_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 508
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 513
    iget-object v6, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    move v6, v7

    goto :goto_3

    .line 516
    :cond_6
    :goto_5
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v2, v6

    .line 521
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 523
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eq p1, v0, :cond_8

    .line 524
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    :cond_8
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .line 1221
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/narvii/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1227
    new-instance v0, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/narvii/widget/Gallery;->mContextMenuInfo:Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

    .line 1228
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1232
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1157
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .line 1162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1163
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeftRtl()V

    goto :goto_0

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeftLtr()V

    :goto_0
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .locals 6

    .line 743
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 744
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    .line 747
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 752
    iget v5, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v5, -0x1

    .line 753
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 758
    iput-boolean v4, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    const/4 v4, 0x0

    :goto_0
    if-le v3, v1, :cond_1

    if-ltz v4, :cond_1

    .line 762
    iget v5, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v4, v5

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 766
    iput v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 769
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 6

    .line 713
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 714
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 715
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 718
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 723
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v2

    .line 724
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_0

    .line 727
    :cond_0
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 728
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    .line 729
    iput-boolean v3, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-le v2, v1, :cond_1

    .line 732
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-ge v4, v3, :cond_1

    .line 733
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    sub-int v3, v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 737
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRightRtl()V

    goto :goto_0

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRightLtr()V

    :goto_0
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .locals 7

    .line 814
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 815
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 816
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 817
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v2, -0x1

    .line 820
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 825
    iget v6, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    .line 826
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    .line 828
    :cond_0
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 830
    iput-boolean v5, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v6, v3, :cond_1

    .line 834
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    sub-int v4, v6, v4

    invoke-direct {p0, v6, v4, v2, v5}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 838
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 6

    .line 783
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 784
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 787
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 792
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 793
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 797
    iput-boolean v4, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-ge v3, v1, :cond_1

    if-ltz v2, :cond_1

    .line 801
    iget v5, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v2, v5

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 805
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 808
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findListParent()Landroid/widget/ListView;
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1561
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1562
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1563
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1564
    check-cast v1, Landroid/widget/ListView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGalleryLockPoint()I
    .locals 1

    .line 458
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private static getLeftOfView(Landroid/view/View;)I
    .locals 0

    .line 468
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 3

    .line 863
    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 870
    iget v1, p0, Lcom/narvii/widget/Gallery;->mRightMost:I

    .line 871
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 870
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/widget/Gallery;->mRightMost:I

    .line 872
    iget v1, p0, Lcom/narvii/widget/Gallery;->mLeftMost:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/Gallery;->mLeftMost:I

    .line 875
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/narvii/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object v0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 885
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object p1
.end method

.method private miscTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1583
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->findListParent()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1585
    sget-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1575
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->findListParent()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1577
    sget-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 447
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 568
    invoke-super {p0}, Lcom/narvii/widget/AdapterView;->selectionChanged()V

    .line 570
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .line 535
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 542
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 544
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v0}, Lcom/narvii/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    move-result v0

    .line 551
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    move-result v1

    sub-int v0, v1, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 556
    iget-object v1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->onFinishedMovement()V

    :cond_4
    :goto_1
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    .line 1338
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    move-result v0

    invoke-static {p1}, Lcom/narvii/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    .line 1342
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setSelectionToChildClosestToLockPoint()V
    .locals 6

    .line 589
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 598
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 599
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 606
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-lt v5, v0, :cond_1

    move v2, v3

    goto :goto_1

    .line 612
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 613
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 612
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v4, v1, :cond_2

    move v2, v3

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 620
    :cond_3
    :goto_1
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, v2

    .line 622
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_4

    .line 623
    invoke-virtual {p0, v0}, Lcom/narvii/widget/Gallery;->setSelectedPositionInt(I)V

    .line 624
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 625
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    :cond_4
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 6

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 915
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    const/4 v2, 0x0

    if-eq p4, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    const/4 v1, 0x1

    if-nez p2, :cond_2

    const/4 v2, 0x1

    .line 918
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 921
    iget p2, p0, Lcom/narvii/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 923
    iget v2, p0, Lcom/narvii/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v3, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 927
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 933
    invoke-direct {p0, p1, v1}, Lcom/narvii/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result p2

    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 936
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz p4, :cond_3

    add-int p4, p3, v1

    goto :goto_1

    :cond_3
    sub-int p4, p3, v1

    move v5, p4

    move p4, p3

    move p3, v5

    .line 945
    :goto_1
    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1362
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 1367
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1368
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1371
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 1378
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1384
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 305
    instance-of p1, p1, Landroid/view/ViewGroup$LayoutParams;

    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1242
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 323
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 315
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 310
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 1405
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    .line 278
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 279
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/widget/Gallery;->mUnselectedAlpha:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mContextMenuInfo:Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 5

    .line 394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 395
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    return v2

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 402
    :goto_0
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return p2

    .line 408
    :cond_2
    invoke-static {v1}, Lcom/narvii/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    move-result v3

    .line 410
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    .line 411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 413
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    move-result v0

    :goto_1
    if-eqz p1, :cond_4

    if-gt v3, v0, :cond_5

    return v2

    :cond_4
    if-lt v3, v0, :cond_5

    return v2

    :cond_5
    sub-int/2addr v0, v3

    if-eqz p1, :cond_6

    .line 434
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 435
    :cond_6
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    return p1
.end method

.method layout(IZ)V
    .locals 1

    const/4 p1, 0x0

    .line 645
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 647
    iget-boolean p2, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    if-eqz p2, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->handleDataChanged()V

    .line 652
    :cond_0
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-nez p2, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->resetList()V

    return-void

    .line 658
    :cond_1
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz p2, :cond_2

    .line 659
    invoke-virtual {p0, p2}, Lcom/narvii/widget/Gallery;->setSelectedPositionInt(I)V

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->recycleAllViews()V

    .line 666
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 672
    iput p1, p0, Lcom/narvii/widget/Gallery;->mRightMost:I

    .line 673
    iput p1, p0, Lcom/narvii/widget/Gallery;->mLeftMost:I

    .line 681
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iput p2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const/4 v0, 0x1

    .line 682
    invoke-direct {p0, p2, p1, p1, v0}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object p2

    .line 685
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 687
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRight()V

    .line 688
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeft()V

    .line 691
    iget-object p2, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p2}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->clear()V

    .line 693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 694
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 696
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 697
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 698
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 700
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method moveNext()Z
    .locals 3

    .line 1323
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 1324
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/narvii/widget/Gallery;->scrollToChild(I)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method movePrevious()Z
    .locals 2

    .line 1310
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1315
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AbsSpinner;->setSelection(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onCancel()V
    .locals 0

    .line 1127
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AbsSpinner;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 1099
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 1100
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1101
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1105
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsFirstScroll:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1026
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1030
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1033
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    .line 1034
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1039
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/narvii/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    return p2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1427
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 1434
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1435
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1436
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1261
    :pswitch_0
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->moveNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1262
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_0
    return v1

    .line 1255
    :pswitch_1
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->movePrevious()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1256
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_1
    return v1

    .line 1268
    :cond_2
    :pswitch_2
    iput-boolean v1, p0, Lcom/narvii/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1272
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 1306
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1282
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz p1, :cond_1

    .line 1283
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez p1, :cond_1

    .line 1285
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1286
    new-instance p1, Lcom/narvii/widget/Gallery$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/Gallery$2;-><init>(Lcom/narvii/widget/Gallery;)V

    .line 1291
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    int-to-long v0, p2

    .line 1286
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1293
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iget p2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 1294
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1295
    invoke-interface {v0, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1294
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p1, 0x0

    .line 1300
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mReceivedInvokeKeyDown:Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 330
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 336
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 p1, 0x0

    .line 337
    invoke-virtual {p0, p1, p1}, Lcom/narvii/widget/Gallery;->layout(IZ)V

    .line 338
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1133
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1137
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 1138
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1139
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/narvii/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1057
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1063
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 1064
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_2

    .line 1070
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    .line 1071
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1074
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1078
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz p1, :cond_2

    .line 1079
    iput-boolean p4, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_2
    :goto_0
    float-to-int p1, p3

    mul-int/lit8 p1, p1, -0x1

    .line 1084
    invoke-virtual {p0, p1}, Lcom/narvii/widget/Gallery;->trackMotionScroll(I)V

    .line 1086
    iput-boolean p4, p0, Lcom/narvii/widget/Gallery;->mIsFirstScroll:Z

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1005
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    if-ltz p1, :cond_2

    .line 1011
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    .line 1012
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v0, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1013
    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1012
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 982
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 986
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery;->miscTouchEvent(Landroid/view/MotionEvent;)V

    .line 989
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->onUp()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 996
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->onCancel()V

    :cond_2
    :goto_0
    return v0
.end method

.method onUp()V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->access$200(Lcom/narvii/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->scrollIntoSlots()V

    .line 1120
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method selectionChanged()V
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 577
    invoke-super {p0}, Lcom/narvii/widget/AdapterView;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/narvii/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1397
    iget v0, p0, Lcom/narvii/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1398
    iput p1, p0, Lcom/narvii/widget/Gallery;->mGravity:I

    .line 1399
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    .line 1351
    invoke-super {p0, p1}, Lcom/narvii/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1354
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/narvii/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .line 1208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1209
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1210
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1211
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/narvii/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .line 1196
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1202
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/narvii/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method trackMotionScroll(I)V
    .locals 3

    .line 349
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 355
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/narvii/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 358
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    invoke-static {p1, v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->access$100(Lcom/narvii/widget/Gallery$FlingRunnable;Z)V

    .line 359
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->onFinishedMovement()V

    .line 362
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 364
    invoke-direct {p0, v1}, Lcom/narvii/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRight()V

    goto :goto_1

    .line 371
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeft()V

    .line 375
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->clear()V

    .line 377
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->setSelectionToChildClosestToLockPoint()V

    .line 379
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 381
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
