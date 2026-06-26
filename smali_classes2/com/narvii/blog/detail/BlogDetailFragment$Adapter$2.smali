.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1500(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1600(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1700(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getDesiredPlayerPosition()I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1800(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getPlayerPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    :cond_0
    return-void
.end method
