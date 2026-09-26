.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a057b

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/feed/PopularFeedListItem;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0588

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/feed/FeedToolbarLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a058e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->voteLayout:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const p1, 0x7f0a0589

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->commentLayout:Landroid/view/View;

    .line 46
    return-void
.end method
