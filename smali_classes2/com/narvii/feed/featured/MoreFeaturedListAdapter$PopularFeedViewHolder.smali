.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MoreFeaturedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopularFeedViewHolder"
.end annotation


# instance fields
.field commentLayout:Landroid/view/View;

.field feedItem:Lcom/narvii/feed/PopularFeedListItem;

.field feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

.field final synthetic this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

.field voteLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 390
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090444

    .line 391
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/feed/PopularFeedListItem;

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    const p1, 0x7f090451

    .line 392
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/feed/FeedToolbarLayout;

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    const p1, 0x7f090457

    .line 393
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->voteLayout:Landroid/view/View;

    const p1, 0x7f090452

    .line 394
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->commentLayout:Landroid/view/View;

    return-void
.end method
