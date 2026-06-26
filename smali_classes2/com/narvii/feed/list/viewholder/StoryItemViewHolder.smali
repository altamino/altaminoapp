.class public final Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StoryItemViewHolder.kt"


# instance fields
.field private final btnComment:Landroid/view/View;

.field private final btnImg:Landroid/view/View;

.field private final btnMore:Landroid/view/View;

.field private final btnUserHeader:Landroid/view/View;

.field private final btnVote:Landroid/view/View;

.field private feedListItemView:Lcom/narvii/feed/FeedListItem;


# direct methods
.method public constructor <init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090443

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/FeedListItem;

    iput-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    const v0, 0x7f090c12

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnUserHeader:Landroid/view/View;

    const v0, 0x7f090571

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnImg:Landroid/view/View;

    const v0, 0x7f090457

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnVote:Landroid/view/View;

    const v0, 0x7f090452

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnComment:Landroid/view/View;

    const v0, 0x7f0904fe

    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnMore:Landroid/view/View;

    .line 26
    iget-object p2, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnUserHeader:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnImg:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p2, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnVote:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p2, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnComment:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p2, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnMore:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic bindBlog$default(Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;ZLcom/narvii/model/Blog;Ljava/util/HashSet;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->bindBlog(ZLcom/narvii/model/Blog;Ljava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method public final bindBlog(ZLcom/narvii/model/Blog;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/model/Blog;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f090764

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    :cond_3
    if-eqz p2, :cond_4

    .line 38
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 39
    :cond_5
    iget-object p1, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedListItem;->setProgress(Z)V

    :cond_6
    return-void
.end method

.method public final getBtnComment()Landroid/view/View;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnComment:Landroid/view/View;

    return-object v0
.end method

.method public final getBtnImg()Landroid/view/View;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnImg:Landroid/view/View;

    return-object v0
.end method

.method public final getBtnMore()Landroid/view/View;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnMore:Landroid/view/View;

    return-object v0
.end method

.method public final getBtnUserHeader()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnUserHeader:Landroid/view/View;

    return-object v0
.end method

.method public final getBtnVote()Landroid/view/View;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->btnVote:Landroid/view/View;

    return-object v0
.end method

.method public final getFeedListItemView()Lcom/narvii/feed/FeedListItem;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    return-object v0
.end method

.method public final setFeedListItemView(Lcom/narvii/feed/FeedListItem;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->feedListItemView:Lcom/narvii/feed/FeedListItem;

    return-void
.end method
