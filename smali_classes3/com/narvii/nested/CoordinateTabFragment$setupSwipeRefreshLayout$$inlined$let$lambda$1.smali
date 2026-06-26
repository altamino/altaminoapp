.class final Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CoordinateTabFragment.kt"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;->setupSwipeRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshRequestSent(Z)V

    .line 327
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/nested/CoordinateTabFragment;->setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 331
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    .line 332
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/list/NVListFragment;

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-static {v1}, Lcom/narvii/nested/CoordinateTabFragment;->access$getBodyRefreshCallback$p(Lcom/narvii/nested/CoordinateTabFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.list.NVListFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    new-instance v1, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onRefresh(Lcom/narvii/paging/source/PageRequestCallback;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.paging.NVRecyclerViewFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-static {v1}, Lcom/narvii/nested/CoordinateTabFragment;->access$getBodyRefreshCallback$p(Lcom/narvii/nested/CoordinateTabFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->manuallyRefresh(Lcom/narvii/util/Callback;)V

    .line 344
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getHeaderRefreshCallback()Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/nested/CoordinateTabFragment;->sendHeaderRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method
