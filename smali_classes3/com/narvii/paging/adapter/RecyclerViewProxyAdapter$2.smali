.class Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewProxyAdapter.java"


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

    .line 55
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 59
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 65
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 77
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 89
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 83
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
