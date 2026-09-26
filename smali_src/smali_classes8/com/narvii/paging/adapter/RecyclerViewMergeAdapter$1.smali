.class Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->val$adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p3

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->val$adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 37
    add-int/2addr p1, v0

    .line 38
    add-int/2addr v0, p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 42
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
