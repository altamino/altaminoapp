.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "MoreButton"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->subArea(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;->this$1:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->g(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    .line 27
    return-void
.end method
