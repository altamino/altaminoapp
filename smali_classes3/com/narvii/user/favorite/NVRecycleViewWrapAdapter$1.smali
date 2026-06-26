.class Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "NVRecycleViewWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;->this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 55
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;->this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;

    invoke-virtual {v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->updateViewsOnDataChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 31
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;->this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;

    invoke-virtual {p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->updateViewsOnDataChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 37
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;->this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;

    invoke-virtual {p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->updateViewsOnDataChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 49
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;->this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;

    invoke-virtual {p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->updateViewsOnDataChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 43
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;->this$0:Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;

    invoke-virtual {p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->updateViewsOnDataChanged()V

    return-void
.end method
