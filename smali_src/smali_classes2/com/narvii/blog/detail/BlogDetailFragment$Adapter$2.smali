.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;
.super Lcom/narvii/poll/PollAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/poll/PollAdapter;-><init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected showResult()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method
