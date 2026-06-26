.class public final Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UnKnownTypeViewHolder.kt"


# instance fields
.field private feedListItemView:Lcom/narvii/feed/FeedListItem;


# direct methods
.method public constructor <init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/view/View;)V
    .locals 0

    const-string p1, "itemView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090443

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/feed/FeedListItem;

    iput-object p1, p0, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    return-void
.end method

.method public static synthetic bindBlog$default(Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;ZLcom/narvii/model/Blog;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->bindBlog(ZLcom/narvii/model/Blog;)V

    return-void
.end method


# virtual methods
.method public final bindBlog(ZLcom/narvii/model/Blog;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    :cond_1
    return-void
.end method

.method public final getFeedListItemView()Lcom/narvii/feed/FeedListItem;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    return-object v0
.end method

.method public final setFeedListItemView(Lcom/narvii/feed/FeedListItem;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    return-void
.end method
