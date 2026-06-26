.class Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


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

    .line 819
    iput-object p1, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    .line 821
    iput-object p1, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    .line 867
    iput-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 3

    .line 825
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 826
    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    .line 827
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 831
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    iget v2, v1, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_0

    .line 833
    invoke-static {v1, v0}, Lcom/narvii/widget/AdapterView;->access$000(Lcom/narvii/widget/AdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->rememberSyncState()V

    .line 838
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 839
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 844
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 846
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-static {v0}, Lcom/narvii/widget/AdapterView;->access$100(Lcom/narvii/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    const/4 v1, 0x0

    .line 854
    iput v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    const/4 v2, -0x1

    .line 855
    iput v2, v0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 856
    iput-wide v3, v0, Lcom/narvii/widget/AdapterView;->mSelectedRowId:J

    .line 857
    iput v2, v0, Lcom/narvii/widget/AdapterView;->mNextSelectedPosition:I

    .line 858
    iput-wide v3, v0, Lcom/narvii/widget/AdapterView;->mNextSelectedRowId:J

    .line 859
    iput-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 860
    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 862
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-virtual {v0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 863
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
