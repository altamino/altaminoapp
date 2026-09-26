.class Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/narvii/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/AdapterView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 9
    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 6
    .line 7
    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iput v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 38
    .line 39
    iget v2, v1, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    iget v2, v1, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 44
    .line 45
    if-lez v2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/narvii/widget/AdapterView;->access$000(Lcom/narvii/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->rememberSyncState()V

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 68
    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/widget/AdapterView;->access$100(Lcom/narvii/widget/AdapterView;)Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 26
    .line 27
    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 28
    .line 29
    iput v1, v0, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    iput v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 33
    const/4 v2, -0x1

    .line 34
    .line 35
    iput v2, v0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 36
    .line 37
    const-wide/high16 v3, -0x8000000000000000L

    .line 38
    .line 39
    iput-wide v3, v0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 40
    .line 41
    iput v2, v0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 42
    .line 43
    iput-wide v3, v0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 59
    return-void
.end method
