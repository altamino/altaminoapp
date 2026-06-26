.class public abstract Lcom/narvii/widget/AbsSpinner;
.super Lcom/narvii/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AbsSpinner$RecycleBin;,
        Lcom/narvii/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/widget/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

.field mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectedView:Landroid/view/View;

    .line 56
    new-instance p1, Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-direct {p1, p0}, Lcom/narvii/widget/AbsSpinner$RecycleBin;-><init>(Lcom/narvii/widget/AbsSpinner;)V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 70
    invoke-direct {p0}, Lcom/narvii/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectedView:Landroid/view/View;

    .line 56
    new-instance p1, Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-direct {p1, p0}, Lcom/narvii/widget/AbsSpinner$RecycleBin;-><init>(Lcom/narvii/widget/AbsSpinner;)V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 90
    invoke-direct {p0}, Lcom/narvii/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 270
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method final getChildHeight(Landroid/view/View;)I
    .locals 0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method final getChildWidth(Landroid/view/View;)I
    .locals 0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method public final getCount()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    .line 343
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 344
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final handleDataChanged()V
    .locals 0

    .line 297
    invoke-super {p0}, Lcom/narvii/widget/AdapterView;->handleDataChanged()V

    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    :cond_0
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 182
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    :cond_1
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 184
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    :cond_2
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 186
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    :cond_3
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 189
    iget-boolean v1, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->handleDataChanged()V

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_8

    .line 198
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_8

    .line 200
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4, v1}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    .line 203
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_6

    .line 208
    iget-object v5, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5, v1, v4}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    :cond_6
    if-eqz v4, :cond_8

    .line 212
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_7

    .line 213
    iput-boolean v2, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 214
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iput-boolean v3, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 217
    :cond_7
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 219
    invoke-virtual {p0, v4}, Lcom/narvii/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 221
    invoke-virtual {p0, v4}, Lcom/narvii/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    move v3, v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_9

    .line 230
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    if-nez v0, :cond_a

    .line 232
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v3, v0, v1

    goto :goto_1

    :cond_9
    move v2, v1

    .line 236
    :cond_a
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 239
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v0

    .line 240
    invoke-static {v1, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    .line 242
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 243
    iput p2, p0, Lcom/narvii/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 244
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mWidthMeasureSpec:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 466
    check-cast p1, Lcom/narvii/widget/AbsSpinner$SavedState;

    .line 468
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 470
    iget-wide v0, p1, Lcom/narvii/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    .line 471
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 472
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 473
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 474
    iget p1, p1, Lcom/narvii/widget/AbsSpinner$SavedState;->position:I

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    const/4 p1, 0x0

    .line 475
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    .line 476
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 453
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/narvii/widget/AbsSpinner$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 455
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->selectedId:J

    .line 456
    iget-wide v2, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 459
    iput v0, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->position:I

    :goto_0
    return-object v1
.end method

.method public final pointToPosition(II)I
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 385
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 390
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 392
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method final recycleAllViews()V
    .locals 5

    .line 279
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 284
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 285
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v2

    .line 286
    invoke-virtual {v1, v4, v3}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 359
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method final resetList()V
    .locals 3

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 154
    iput-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 156
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 158
    iput-wide v1, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 160
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 112
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->resetList()V

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 118
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 120
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    .line 121
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    iput v1, p0, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    .line 122
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 123
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 125
    new-instance v0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/narvii/widget/AdapterView;)V

    iput-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 126
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    const/4 p1, 0x0

    .line 130
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 133
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-nez p1, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 140
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->resetList()V

    .line 142
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 145
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    return-void
.end method

.method public final setSelection(I)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 316
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final setSelection(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 308
    iget p2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    if-gt p2, p1, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/AbsSpinner;->setSelectionInt(IZ)V

    return-void
.end method

.method final setSelectionInt(IZ)V
    .locals 1

    .line 328
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 330
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    sub-int v0, p1, v0

    .line 331
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 332
    invoke-virtual {p0, v0, p2}, Lcom/narvii/widget/AbsSpinner;->layout(IZ)V

    const/4 p1, 0x0

    .line 333
    iput-boolean p1, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_0
    return-void
.end method
