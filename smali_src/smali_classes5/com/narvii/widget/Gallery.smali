.class public Lcom/narvii/widget/Gallery;
.super Lcom/narvii/widget/AbsSpinner;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    const/16 p2, 0x190

    iput p2, p0, Lcom/narvii/widget/Gallery;->mAnimationDuration:I

    .line 4
    new-instance p2, Lcom/narvii/widget/Gallery$FlingRunnable;

    invoke-direct {p2, p0}, Lcom/narvii/widget/Gallery$FlingRunnable;-><init>(Lcom/narvii/widget/Gallery;)V

    iput-object p2, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 5
    new-instance p2, Lcom/narvii/widget/Gallery$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/Gallery$1;-><init>(Lcom/narvii/widget/Gallery;)V

    iput-object p2, p0, Lcom/narvii/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 6
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/narvii/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 7
    invoke-virtual {p3, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    return p0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v0

    .line 12
    .line 13
    :goto_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    move-result p1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result p1

    .line 23
    .line 24
    :goto_1
    iget p2, p0, Lcom/narvii/widget/Gallery;->mGravity:I

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    if-eq p2, v1, :cond_4

    .line 29
    .line 30
    const/16 v1, 0x30

    .line 31
    .line 32
    if-eq p2, v1, :cond_3

    .line 33
    .line 34
    const/16 v1, 0x50

    .line 35
    .line 36
    if-eq p2, v1, :cond_2

    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 43
    sub-int/2addr v0, p2

    .line 44
    .line 45
    sub-int p1, v0, p1

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 56
    sub-int/2addr v0, v1

    .line 57
    .line 58
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 59
    sub-int/2addr v0, p2

    .line 60
    sub-int/2addr v0, p1

    .line 61
    .line 62
    div-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    add-int p1, p2, v0

    .line 65
    :goto_2
    return p1
.end method

.method static bridge synthetic d(Lcom/narvii/widget/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    move-result v3

    .line 14
    move v4, v2

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    .line 18
    :goto_0
    if-ge v4, v0, :cond_2

    .line 19
    .line 20
    iget-boolean v7, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    add-int/lit8 v7, v0, -0x1

    .line 25
    sub-int/2addr v7, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v7, v4

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v8

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 35
    move-result v9

    .line 36
    .line 37
    if-lt v9, v3, :cond_1

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    iget-object v6, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 43
    .line 44
    add-int v9, v1, v7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v9, v8}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    move v6, v7

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 54
    .line 55
    if-nez v0, :cond_7

    .line 56
    goto :goto_6

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 64
    move-result v4

    .line 65
    sub-int/2addr v3, v4

    .line 66
    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 68
    move v4, v0

    .line 69
    move v5, v2

    .line 70
    move v6, v5

    .line 71
    .line 72
    :goto_3
    if-ltz v4, :cond_6

    .line 73
    .line 74
    iget-boolean v7, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 75
    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    sub-int v7, v0, v4

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move v7, v4

    .line 81
    .line 82
    .line 83
    :goto_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v8

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 88
    move-result v9

    .line 89
    .line 90
    if-gt v9, v3, :cond_5

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    iget-object v6, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 96
    .line 97
    add-int v9, v1, v7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v9, v8}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 101
    .line 102
    add-int/lit8 v4, v4, -0x1

    .line 103
    move v6, v7

    .line 104
    goto :goto_3

    .line 105
    .line 106
    :cond_6
    :goto_5
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    goto :goto_6

    .line 110
    :cond_7
    move v2, v6

    .line 111
    .line 112
    .line 113
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 116
    .line 117
    if-eq p1, v0, :cond_8

    .line 118
    .line 119
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 120
    add-int/2addr p1, v5

    .line 121
    .line 122
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 123
    :cond_8
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

    .line 3
    const/4 v6, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 8
    .line 9
    iget v3, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 10
    move-object v1, p0

    .line 11
    move-wide v4, p3

    .line 12
    .line 13
    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/narvii/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v6

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/widget/Gallery;->mContextMenuInfo:Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 36
    :cond_2
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 10
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 23
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/Gallery;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/widget/Gallery;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeftLtr()V

    .line 12
    :goto_0
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x1

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget v5, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 17
    sub-int/2addr v5, v4

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 21
    move-result v3

    .line 22
    sub-int/2addr v3, v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 31
    move-result v5

    .line 32
    sub-int/2addr v3, v5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    move-result v5

    .line 37
    sub-int/2addr v3, v5

    .line 38
    .line 39
    iput-boolean v4, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    .line 40
    move v5, v2

    .line 41
    .line 42
    :goto_0
    if-le v3, v1, :cond_1

    .line 43
    .line 44
    if-ltz v5, :cond_1

    .line 45
    .line 46
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 47
    .line 48
    sub-int v4, v5, v4

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v5, v4, v3, v2}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    iput v5, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 58
    move-result v3

    .line 59
    sub-int/2addr v3, v0

    .line 60
    .line 61
    add-int/lit8 v5, v5, -0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v2

    .line 11
    .line 12
    add-int/lit8 v3, v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 21
    add-int/2addr v4, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v2, v0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    add-int/lit8 v4, v2, -0x1

    .line 33
    .line 34
    iput v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 42
    move-result v5

    .line 43
    sub-int/2addr v2, v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 47
    move-result v5

    .line 48
    sub-int/2addr v2, v5

    .line 49
    .line 50
    iput-boolean v3, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    .line 51
    .line 52
    :goto_0
    if-le v2, v1, :cond_1

    .line 53
    .line 54
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 55
    .line 56
    if-ge v4, v3, :cond_1

    .line 57
    .line 58
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 59
    .line 60
    sub-int v3, v4, v3

    .line 61
    const/4 v5, 0x0

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v4, v3, v2, v5}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 69
    move-result v2

    .line 70
    sub-int/2addr v2, v0

    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRightRtl()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRightLtr()V

    .line 12
    :goto_0
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 10
    move-result v2

    .line 11
    sub-int/2addr v1, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    move-result v2

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 23
    .line 24
    add-int/lit8 v4, v2, -0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x1

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget v6, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 34
    add-int/2addr v6, v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 43
    .line 44
    add-int/lit8 v6, v2, -0x1

    .line 45
    .line 46
    iput v6, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    move-result v2

    .line 51
    .line 52
    iput-boolean v5, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    .line 53
    .line 54
    :goto_0
    if-ge v2, v1, :cond_1

    .line 55
    .line 56
    if-ge v6, v3, :cond_1

    .line 57
    .line 58
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 59
    .line 60
    sub-int v4, v6, v4

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v6, v4, v2, v5}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, v0

    .line 70
    .line 71
    add-int/lit8 v6, v6, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 10
    move-result v2

    .line 11
    sub-int/2addr v1, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    move-result v2

    .line 16
    sub-int/2addr v1, v2

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 27
    sub-int/2addr v2, v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    move-result v3

    .line 38
    .line 39
    iput-boolean v4, p0, Lcom/narvii/widget/Gallery;->mShouldStopFling:Z

    .line 40
    .line 41
    :goto_0
    if-ge v3, v1, :cond_1

    .line 42
    .line 43
    if-ltz v2, :cond_1

    .line 44
    .line 45
    iget v5, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 46
    .line 47
    sub-int v5, v2, v5

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2, v5, v3, v4}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 57
    move-result v3

    .line 58
    add-int/2addr v3, v0

    .line 59
    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method private findListParent()Landroid/widget/ListView;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_0
    const/4 v2, 0x6

    .line 4
    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    .line 21
    instance-of v2, v1, Landroid/widget/ListView;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Landroid/widget/ListView;

    .line 26
    return-object v1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method static bridge synthetic g(Lcom/narvii/widget/Gallery;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    return-void
.end method

.method private getGalleryLockPoint()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static getLeftOfView(Landroid/view/View;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic h(Lcom/narvii/widget/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/widget/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/widget/Gallery;->mRightMost:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, p1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, p0, Lcom/narvii/widget/Gallery;->mRightMost:I

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/widget/Gallery;->mLeftMost:I

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result p1

    .line 36
    .line 37
    iput p1, p0, Lcom/narvii/widget/Gallery;->mLeftMost:I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/narvii/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 52
    return-object p1
.end method

.method private miscTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    const/4 v0, 0x3

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->findListParent()Landroid/widget/ListView;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    sget-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->findListParent()Landroid/widget/ListView;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/widget/AdapterView;->selectionChanged()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 18
    sub-int/2addr v0, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    move-result v3

    .line 37
    sub-int/2addr v2, v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v3

    .line 42
    add-int/2addr v2, v3

    .line 43
    .line 44
    if-ge v1, v2, :cond_2

    .line 45
    .line 46
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 54
    move-result v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    move-result v1

    .line 59
    sub-int/2addr v0, v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    neg-int v0, v0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    .line 76
    move-result v1

    .line 77
    .line 78
    sub-int v0, v1, v0

    .line 79
    .line 80
    :goto_0
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->onFinishedMovement()V

    .line 90
    :cond_4
    :goto_1
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    .line 14
    move-result p1

    .line 15
    sub-int/2addr v0, p1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method private setSelectionToChildClosestToLockPoint()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    .line 18
    const v2, 0x7fffffff

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    :goto_0
    if-ltz v1, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 29
    move-result v5

    .line 30
    .line 31
    if-ne v5, v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 35
    move-result v5

    .line 36
    .line 37
    if-lt v5, v0, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 42
    move-result v5

    .line 43
    sub-int/2addr v5, v0

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 47
    move-result v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 51
    move-result v4

    .line 52
    sub-int/2addr v4, v0

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 56
    move-result v4

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result v4

    .line 61
    .line 62
    if-ge v4, v2, :cond_2

    .line 63
    move v3, v1

    .line 64
    move v2, v4

    .line 65
    .line 66
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move v1, v3

    .line 69
    .line 70
    :goto_1
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 71
    add-int/2addr v0, v1

    .line 72
    .line 73
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 74
    .line 75
    if-eq v0, v1, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/narvii/widget/Gallery;->setSelectedPositionInt(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 85
    :cond_4
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eq p4, v1, :cond_1

    .line 16
    const/4 v1, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    move v2, v1

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 29
    .line 30
    iget p2, p0, Lcom/narvii/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 37
    add-int/2addr v3, v2

    .line 38
    .line 39
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 43
    move-result p2

    .line 44
    .line 45
    iget v2, p0, Lcom/narvii/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 52
    add-int/2addr v4, v3

    .line 53
    .line 54
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, v1}, Lcom/narvii/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    .line 65
    move-result p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    move-result v0

    .line 70
    add-int/2addr v0, p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz p4, :cond_3

    .line 77
    add-int/2addr v1, p3

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_3
    sub-int p4, p3, v1

    .line 81
    move v1, p3

    .line 82
    move p3, p4

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 86
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Landroid/view/ViewGroup$LayoutParams;

    .line 3
    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lcom/narvii/widget/Gallery;->mUnselectedAlpha:F

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mContextMenuInfo:Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 27
    move-result v3

    .line 28
    sub-int/2addr v1, v3

    .line 29
    .line 30
    if-ge v0, v1, :cond_0

    .line 31
    return v2

    .line 32
    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 34
    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v2

    .line 42
    .line 43
    :goto_0
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 44
    .line 45
    sub-int v1, v0, v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    return p2

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {v1}, Lcom/narvii/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    .line 56
    move-result v3

    .line 57
    .line 58
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 59
    .line 60
    add-int/lit8 v4, v4, -0x1

    .line 61
    .line 62
    if-ne v0, v4, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 70
    move-result v4

    .line 71
    sub-int/2addr v0, v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 75
    move-result v4

    .line 76
    sub-int/2addr v0, v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 80
    move-result v1

    .line 81
    sub-int/2addr v0, v1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    .line 86
    move-result v0

    .line 87
    .line 88
    :goto_1
    if-eqz p1, :cond_4

    .line 89
    .line 90
    if-gt v3, v0, :cond_5

    .line 91
    return v2

    .line 92
    .line 93
    :cond_4
    if-lt v3, v0, :cond_5

    .line 94
    return v2

    .line 95
    :cond_5
    sub-int/2addr v0, v3

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 101
    move-result p1

    .line 102
    goto :goto_2

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 106
    move-result p1

    .line 107
    :goto_2
    return p1
.end method

.method layout(IZ)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mIsRtl:Z

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->handleDataChanged()V

    .line 11
    .line 12
    :cond_0
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->resetList()V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 21
    .line 22
    if-ltz p2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/narvii/widget/Gallery;->setSelectedPositionInt(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->recycleAllViews()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 32
    .line 33
    iput p1, p0, Lcom/narvii/widget/Gallery;->mRightMost:I

    .line 34
    .line 35
    iput p1, p0, Lcom/narvii/widget/Gallery;->mLeftMost:I

    .line 36
    .line 37
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 38
    .line 39
    iput p2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 40
    const/4 v0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p2, p1, p1, v0}, Lcom/narvii/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->getGalleryLockPoint()I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRight()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeft()V

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->clear()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 73
    .line 74
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->updateSelectedItemMetadata()V

    .line 81
    return-void
.end method

.method moveNext()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v0, v2

    .line 9
    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 13
    sub-int/2addr v1, v0

    .line 14
    add-int/2addr v1, v2

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/narvii/widget/Gallery;->scrollToChild(I)Z

    .line 18
    return v2

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method movePrevious()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AbsSpinner;->setSelection(I)V

    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method onCancel()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->onUp()V

    .line 4
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    move-result p1

    .line 16
    float-to-int p1, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AbsSpinner;->pointToPosition(II)I

    .line 20
    move-result p1

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    if-ltz p1, :cond_0

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 28
    sub-int/2addr p1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 38
    .line 39
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/widget/Gallery;->mIsFirstScroll:Z

    .line 40
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 19
    neg-float p3, p3

    .line 20
    float-to-int p3, p3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lcom/narvii/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 24
    return p2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 19
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x42

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->moveNext()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 20
    :cond_0
    return v1

    .line 21
    .line 22
    .line 23
    :pswitch_1
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->movePrevious()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 30
    :cond_1
    return v1

    .line 31
    .line 32
    :cond_2
    :pswitch_2
    iput-boolean v1, p0, Lcom/narvii/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    nop

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x17

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x42

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 20
    .line 21
    if-lez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/widget/Gallery$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/narvii/widget/Gallery$2;-><init>(Lcom/narvii/widget/Gallery;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 35
    move-result p2

    .line 36
    int-to-long v0, p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 42
    .line 43
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 44
    sub-int/2addr p1, p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 63
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/AdapterView;->onLayout(ZIIII)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/narvii/widget/Gallery;->layout(IZ)V

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    .line 13
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 3
    .line 4
    if-gez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 10
    .line 11
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/narvii/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    .line 23
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 11
    const/4 p4, 0x0

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mIsFirstScroll:Z

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iput-boolean p2, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    const-wide/16 v0, 0xfa

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iput-boolean p4, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 38
    :cond_2
    :goto_0
    float-to-int p1, p3

    .line 39
    .line 40
    mul-int/lit8 p1, p1, -0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/widget/Gallery;->trackMotionScroll(I)V

    .line 44
    .line 45
    iput-boolean p4, p0, Lcom/narvii/widget/Gallery;->mIsFirstScroll:Z

    .line 46
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/widget/Gallery;->mDownTouchPosition:I

    .line 3
    .line 4
    if-ltz p1, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/narvii/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 24
    :cond_1
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery;->miscTouchEvent(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result p1

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->onUp()V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x3

    .line 30
    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/widget/Gallery;->onCancel()V

    .line 35
    :cond_2
    :goto_0
    return v0
.end method

.method onUp()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->a(Lcom/narvii/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->scrollIntoSlots()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->dispatchUnpress()V

    .line 19
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/widget/AdapterView;->selectionChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Gallery;->mGravity:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/Gallery;->mGravity:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->updateSelectedItemMetadata()V

    .line 7
    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 13
    sub-int/2addr v0, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/narvii/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/narvii/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method trackMotionScroll(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    if-gez p1, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v1, v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/narvii/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eq v2, p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/widget/Gallery;->mFlingRunnable:Lcom/narvii/widget/Gallery$FlingRunnable;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/narvii/widget/Gallery$FlingRunnable;->b(Lcom/narvii/widget/Gallery$FlingRunnable;Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->onFinishedMovement()V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/narvii/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryRight()V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->fillToGalleryLeft()V

    .line 43
    .line 44
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/Gallery;->setSelectionToChildClosestToLockPoint()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 57
    return-void
.end method
