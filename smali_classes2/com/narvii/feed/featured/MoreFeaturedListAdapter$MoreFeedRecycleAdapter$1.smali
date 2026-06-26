.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;
.super Ljava/lang/Object;
.source "MoreFeaturedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$item:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;Lcom/narvii/model/Feed;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    iput-object p2, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->val$item:Lcom/narvii/model/Feed;

    iput-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 315
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    iget-object p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->val$item:Lcom/narvii/model/Feed;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 316
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    iget-object p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v0, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->openFeedDetail(Lcom/narvii/model/Feed;I)V

    return-void
.end method
