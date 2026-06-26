.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1015:1\n1587#2,2:1016\n*E\n*S KotlinDebug\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10\n*L\n424#1,2:1016\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 424
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getFragmentsList$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Ljava/util/List;

    move-result-object p1

    .line 1016
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 425
    instance-of v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 426
    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_5

    .line 427
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 428
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    .line 429
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_2

    .line 431
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_2

    .line 427
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    goto :goto_0

    .line 435
    :cond_6
    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v1, :cond_0

    .line 436
    check-cast v0, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 437
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10$$special$$inlined$forEach$lambda$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10$$special$$inlined$forEach$lambda$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    return-void
.end method
