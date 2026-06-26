.class Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 549
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    if-eqz v1, :cond_2

    .line 556
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 557
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 558
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b021e

    .line 573
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
