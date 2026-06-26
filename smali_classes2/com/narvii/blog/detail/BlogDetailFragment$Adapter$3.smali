.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->requestLinkedBlog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/FeedResponse<",
        "Lcom/narvii/model/Blog;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 933
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 934
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f4

    if-ne p2, p1, :cond_0

    .line 935
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 921
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/FeedResponse<",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 924
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 925
    invoke-virtual {p2}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_0

    .line 927
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p2, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method
