.class Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewMergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

.field final synthetic val$adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    iput-object p2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->val$adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 66
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 72
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 78
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 3

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 91
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    iget-object p3, p3, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 92
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->val$adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eq v1, v2, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 98
    :cond_0
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    add-int/2addr p1, v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 84
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
