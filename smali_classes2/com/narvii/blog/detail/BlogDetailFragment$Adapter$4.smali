.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;
.super Lcom/narvii/poll/PollAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/poll/PollAdapter;-><init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V

    return-void
.end method


# virtual methods
.method protected showResult()Z
    .locals 1

    .line 1003
    invoke-super {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
