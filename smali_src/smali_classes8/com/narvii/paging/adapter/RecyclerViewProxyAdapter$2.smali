.class Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 6
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
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

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
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
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
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
