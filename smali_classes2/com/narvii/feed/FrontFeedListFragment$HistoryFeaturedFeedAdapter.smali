.class Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;
.super Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryFeaturedFeedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 591
    invoke-direct {p0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Front Page Feed"

    .line 592
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->detailOpenSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 602
    invoke-super {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    .line 603
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mDividerAdapter:Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
