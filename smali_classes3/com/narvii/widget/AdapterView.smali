.class public abstract Lcom/narvii/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AdapterView$SelectionNotifier;,
        Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;,
        Lcom/narvii/widget/AdapterView$OnItemSelectedListener;,
        Lcom/narvii/widget/AdapterView$OnItemLongClickListener;,
        Lcom/narvii/widget/AdapterView$OnItemClickListener;
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

    .line 232
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 84
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 v2, -0x1

    .line 152
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 84
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 p2, -0x1

    .line 152
    iput p2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput p2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 p2, -0x8000000000000000L

    .line 84
    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide p2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 0

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/AdapterView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 7

    .line 909
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 916
    iget-object v1, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    .line 917
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    .line 916
    invoke-interface/range {v1 .. v6}, Lcom/narvii/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/narvii/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/narvii/widget/AdapterView;)V

    :goto_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6

    .line 748
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 753
    iget-object p1, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 754
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 764
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 765
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_1

    .line 768
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 462
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    .line 475
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 504
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 489
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final canAnimate()Z
    .locals 1

    .line 925
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method checkFocus()V
    .locals 5

    .line 726
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 727
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 728
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    .line 732
    iget-boolean v4, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_5

    .line 733
    iget-boolean v3, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 734
    iget-object v3, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    .line 735
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    invoke-direct {p0, v1}, Lcom/narvii/widget/AdapterView;->updateEmptyStatus(Z)V

    :cond_8
    return-void
.end method

.method checkSelectionChanged()V
    .locals 5

    .line 993
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->selectionChanged()V

    .line 995
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 996
    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

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

    .line 815
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

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

    .line 805
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method final findSyncPosition()I
    .locals 17

    move-object/from16 v0, p0

    .line 1010
    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 1016
    :cond_0
    iget-wide v3, v0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 1017
    iget v5, v0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x0

    .line 1025
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    .line 1026
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    add-long/2addr v8, v10

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v10

    if-nez v10, :cond_2

    return v2

    :cond_2
    move v11, v5

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    .line 1053
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v8

    if-gtz v16, :cond_b

    .line 1054
    invoke-interface {v10, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v16, v14, v3

    if-nez v16, :cond_4

    return v5

    :cond_4
    if-ne v11, v1, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-nez v12, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    goto :goto_5

    :cond_7
    if-nez v15, :cond_a

    if-eqz v13, :cond_8

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    if-nez v14, :cond_9

    if-nez v13, :cond_3

    if-nez v15, :cond_3

    :cond_9
    add-int/lit8 v12, v12, -0x1

    move v5, v12

    const/4 v13, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v5, v11

    goto :goto_0

    :cond_b
    :goto_5
    return v2
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

    .line 599
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public final getFirstVisiblePosition()I
    .locals 1

    .line 645
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .line 787
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public final getLastVisiblePosition()I
    .locals 2

    .line 655
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/narvii/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/narvii/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/narvii/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getPositionForView(Landroid/view/View;)I
    .locals 4

    :goto_0
    const/4 v0, -0x1

    .line 617
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 629
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 582
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 585
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSelectedItemId()J
    .locals 2

    .line 568
    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 5

    .line 930
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_5

    .line 938
    iget-boolean v3, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    if-eqz v3, :cond_0

    .line 941
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 945
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->findSyncPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 948
    invoke-virtual {p0, v3, v1}, Lcom/narvii/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 951
    invoke-virtual {p0, v3}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    .line 958
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 969
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-gez v4, :cond_3

    .line 972
    invoke-virtual {p0, v0, v2}, Lcom/narvii/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    :cond_3
    if-ltz v4, :cond_4

    .line 975
    invoke-virtual {p0, v4}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 976
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_6

    const/4 v0, -0x1

    .line 983
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 984
    iput-wide v3, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 985
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 986
    iput-wide v3, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 987
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 988
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    :cond_6
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

    .line 547
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mLayoutHeight:I

    return-void
.end method

.method public final performItemClick(Landroid/view/View;IJ)Z
    .locals 8

    .line 304
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 306
    iget-object v2, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/narvii/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method final rememberSyncState()V
    .locals 5

    .line 1134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 1135
    iput-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 1136
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/narvii/widget/AdapterView;->mSyncHeight:J

    .line 1137
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1139
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1140
    iget-wide v3, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 1141
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSpecificTop:I

    .line 1145
    :cond_0
    iput v2, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    goto :goto_1

    .line 1148
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1149
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1150
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1151
    iget v3, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    .line 1153
    iput-wide v2, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 1155
    :goto_0
    iget v2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_3

    .line 1157
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/narvii/widget/AdapterView;->mSpecificTop:I

    .line 1159
    :cond_3
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    :cond_4
    :goto_1
    return-void
.end method

.method public final removeAllViews()V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 517
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeViewAt(I)V
    .locals 1

    .line 529
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method selectionChanged()V
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 889
    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/AdapterView;->fireOnSelected()V

    goto :goto_1

    .line 894
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 895
    new-instance v0, Lcom/narvii/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/AdapterView$SelectionNotifier;-><init>(Lcom/narvii/widget/AdapterView;Lcom/narvii/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/narvii/widget/AdapterView;->mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView;->mSelectionNotifier:Lcom/narvii/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 670
    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 672
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 673
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 674
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/widget/AdapterView;->updateEmptyStatus(Z)V

    return-void
.end method

.method public final setFocusable(Z)V
    .locals 3

    .line 700
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 701
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 703
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableState:Z

    if-nez p1, :cond_2

    .line 705
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_4

    .line 708
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public final setFocusableInTouchMode(Z)V
    .locals 3

    .line 713
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 714
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 716
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_2

    .line 718
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mDesiredFocusableState:Z

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2

    .line 1118
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 1119
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 1121
    iget-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1122
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    .line 1123
    iget-wide v0, p0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 794
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnItemClickListener(Lcom/narvii/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mOnItemClickListener:Lcom/narvii/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public final setOnItemLongClickListener(Lcom/narvii/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 343
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mOnItemLongClickListener:Lcom/narvii/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/narvii/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/narvii/widget/AdapterView;->mOnItemSelectedListener:Lcom/narvii/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    .line 1105
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 1106
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method
