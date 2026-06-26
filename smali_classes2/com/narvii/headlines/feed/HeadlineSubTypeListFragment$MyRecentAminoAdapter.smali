.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "HeadlineSubTypeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRecentAminoAdapter"
.end annotation


# instance fields
.field recentAminosRecycleAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 677
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 678
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 679
    new-instance p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Ljava/util/List;)V

    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->recentAminosRecycleAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b0426

    .line 692
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090927

    .line 693
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 694
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_0

    .line 695
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 696
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 697
    iget-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->recentAminosRecycleAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 684
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 685
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->recentAminosRecycleAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    if-eqz v0, :cond_0

    .line 686
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->setRecentCommunities(Ljava/util/List;)V

    :cond_0
    return-void
.end method
