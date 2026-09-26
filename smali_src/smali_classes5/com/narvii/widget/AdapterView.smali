.class public abstract Lcom/narvii/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AdapterView$OnItemClickListener;,
        Lcom/narvii/widget/AdapterView$OnItemLongClickListener;,
        Lcom/narvii/widget/AdapterView$OnItemSelectedListener;,
        Lcom/narvii/widget/AdapterView$SelectionNotifier;,
        Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    iput v2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    iput v2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    iput p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    iput p2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 p2, -0x8000000000000000L

    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/AdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private fireOnSelected()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    .line 9
    move-result v4

    .line 10
    .line 11
    if-ltz v4, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    .line 25
    move-result-wide v5

    .line 26
    move-object v2, p0

    .line 27
    .line 28
    .line 29
    invoke-interface/range {v1 .. v6}, Lcom/narvii/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p0}, Lcom/narvii/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/narvii/widget/AdapterView;)V

    .line 36
    :goto_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 47
    move-result v5

    .line 48
    move-object v0, p0

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/AdapterView;->onLayout(ZIIII)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final canAnimate()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method checkFocus()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v3

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    :cond_1
    move v3, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v3, v2

    .line 24
    .line 25
    :goto_0
    if-eqz v3, :cond_3

    .line 26
    .line 27
    iget-boolean v4, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    move v4, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    move v4, v2

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    iget-boolean v3, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableState:Z

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    move v3, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    move v3, v2

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v3, :cond_7

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    move v1, v2

    .line 62
    .line 63
    .line 64
    :cond_6
    :goto_3
    invoke-direct {p0, v1}, Lcom/narvii/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 65
    :cond_7
    return-void
.end method

.method checkSelectionChanged()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->selectionChanged()V

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 26
    :cond_1
    return-void
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method final findSyncPosition()I
    .locals 15

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 9
    .line 10
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    .line 11
    .line 12
    const-wide/high16 v5, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v5, v2, v5

    .line 15
    .line 16
    if-nez v5, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v5, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v4

    .line 23
    const/4 v6, 0x1

    .line 24
    sub-int/2addr v0, v6

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v4

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    move-result-wide v7

    .line 33
    .line 34
    const-wide/16 v9, 0x64

    .line 35
    add-long/2addr v7, v9

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 39
    move-result-object v9

    .line 40
    .line 41
    if-nez v9, :cond_2

    .line 42
    return v1

    .line 43
    :cond_2
    move v10, v4

    .line 44
    move v11, v10

    .line 45
    move v12, v5

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    move-result-wide v13

    .line 50
    .line 51
    cmp-long v13, v13, v7

    .line 52
    .line 53
    if-gtz v13, :cond_b

    .line 54
    .line 55
    .line 56
    invoke-interface {v9, v4}, Landroid/widget/Adapter;->getItemId(I)J

    .line 57
    move-result-wide v13

    .line 58
    .line 59
    cmp-long v13, v13, v2

    .line 60
    .line 61
    if-nez v13, :cond_4

    .line 62
    return v4

    .line 63
    .line 64
    :cond_4
    if-ne v10, v0, :cond_5

    .line 65
    move v13, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move v13, v5

    .line 68
    .line 69
    :goto_1
    if-nez v11, :cond_6

    .line 70
    move v14, v6

    .line 71
    goto :goto_2

    .line 72
    :cond_6
    move v14, v5

    .line 73
    .line 74
    :goto_2
    if-eqz v13, :cond_7

    .line 75
    .line 76
    if-eqz v14, :cond_7

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_7
    if-nez v14, :cond_a

    .line 80
    .line 81
    if-eqz v12, :cond_8

    .line 82
    .line 83
    if-nez v13, :cond_8

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_8
    if-nez v13, :cond_9

    .line 87
    .line 88
    if-nez v12, :cond_3

    .line 89
    .line 90
    if-nez v14, :cond_3

    .line 91
    .line 92
    :cond_9
    add-int/lit8 v11, v11, -0x1

    .line 93
    move v12, v6

    .line 94
    move v4, v11

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 98
    move v12, v5

    .line 99
    move v4, v10

    .line 100
    goto :goto_0

    .line 101
    :cond_b
    :goto_4
    return v1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public final getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    :goto_1
    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 13
    move-result-wide v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 17
    :goto_1
    return-wide v0
.end method

.method public final getLastVisiblePosition()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    return v0
.end method

.method public final getOnItemClickListener()Lcom/narvii/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/narvii/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/narvii/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getPositionForView(Landroid/view/View;)I
    .locals 4

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    move-object p1, v1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    :goto_1
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 35
    add-int/2addr p1, v2

    .line 36
    return p1

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    :cond_2
    return v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public final getSelectedItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->findSyncPosition()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/narvii/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 22
    move-result v4

    .line 23
    .line 24
    if-ne v4, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 28
    move v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v1

    .line 31
    .line 32
    :goto_0
    if-nez v2, :cond_4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    .line 36
    move-result v4

    .line 37
    .line 38
    if-lt v4, v0, :cond_1

    .line 39
    .line 40
    add-int/lit8 v4, v0, -0x1

    .line 41
    .line 42
    :cond_1
    if-gez v4, :cond_2

    .line 43
    move v4, v1

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/narvii/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 47
    move-result v0

    .line 48
    .line 49
    if-gez v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4, v1}, Lcom/narvii/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 53
    move-result v0

    .line 54
    .line 55
    :cond_3
    if-ltz v0, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_4
    if-nez v2, :cond_6

    .line 65
    :cond_5
    const/4 v0, -0x1

    .line 66
    .line 67
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 68
    .line 69
    const-wide/high16 v2, -0x8000000000000000L

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 72
    .line 73
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 74
    .line 75
    iput-wide v2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 81
    :cond_6
    :goto_1
    return-void
.end method

.method final isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final lookForSelectablePosition(IZ)I
    .locals 0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mLayoutHeight:I

    .line 7
    return-void
.end method

.method public final performItemClick(Landroid/view/View;IJ)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    .line 11
    move-object v3, p0

    .line 12
    move-object v4, p1

    .line 13
    move v5, p2

    .line 14
    move-wide v6, p3

    .line 15
    .line 16
    .line 17
    invoke-interface/range {v2 .. v7}, Lcom/narvii/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)V

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    return v1
.end method

.method final rememberSyncState()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_4

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mLayoutHeight:I

    .line 12
    int-to-long v1, v1

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/narvii/widget/AdapterView;->mSyncHeight:J

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 22
    sub-int/2addr v1, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-wide v3, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 29
    .line 30
    iput-wide v3, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 33
    .line 34
    iput v1, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 40
    move-result v0

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSpecificTop:I

    .line 43
    .line 44
    :cond_0
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 56
    .line 57
    if-ltz v3, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 61
    move-result v4

    .line 62
    .line 63
    if-ge v3, v4, :cond_2

    .line 64
    .line 65
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 66
    .line 67
    .line 68
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 69
    move-result-wide v2

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    const-wide/16 v2, -0x1

    .line 75
    .line 76
    iput-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 77
    .line 78
    :goto_0
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 79
    .line 80
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 86
    move-result v1

    .line 87
    .line 88
    iput v1, p0, Lcom/narvii/widget/AdapterView;->mSpecificTop:I

    .line 89
    .line 90
    :cond_3
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    .line 91
    :cond_4
    :goto_1
    return-void
.end method

.method public final removeAllViews()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v1, "removeAllViews() is not supported in AdapterView"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v0, "removeView(View) is not supported in AdapterView"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final removeViewAt(I)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v0, "removeViewAt(int) is not supported in AdapterView"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method selectionChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/AdapterView;->fireOnSelected()V

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/widget/AdapterView$SelectionNotifier;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/AdapterView$SelectionNotifier;-><init>(Lcom/narvii/widget/AdapterView;Lcom/narvii/widget/b;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/widget/AdapterView;->mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_3
    :goto_1
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 22
    return-void
.end method

.method public final setFocusable(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v1

    .line 19
    .line 20
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableState:Z

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 25
    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move v1, v2

    .line 37
    .line 38
    .line 39
    :cond_4
    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 40
    return-void
.end method

.method public final setFocusableInTouchMode(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v2

    .line 19
    .line 20
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableState:Z

    .line 25
    .line 26
    :cond_2
    if-eqz p1, :cond_4

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    :cond_3
    move v1, v2

    .line 36
    .line 37
    .line 38
    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 39
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 3

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    if-ltz p1, :cond_0

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 23
    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    .line 4
    const-string v0, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final setOnItemClickListener(Lcom/narvii/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public final setOnItemLongClickListener(Lcom/narvii/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

    .line 13
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/narvii/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 9
    return-void
.end method

.method public abstract setSelection(I)V
.end method
