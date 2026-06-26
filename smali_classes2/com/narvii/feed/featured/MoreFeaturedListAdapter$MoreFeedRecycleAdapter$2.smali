.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    iget-object p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "MoreButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->subArea(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 362
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    iget-object p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-static {p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->access$100(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    return-void
.end method
