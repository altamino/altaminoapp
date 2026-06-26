.class final Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;
.super Ljava/lang/Object;
.source "DiscoverStoryFeedListFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;

    iput-object p2, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;->$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;

    iget-object v0, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;->$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->access$preload(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
