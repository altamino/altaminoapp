.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "QuizzesResultRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->handleContinousFeeds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/lang/Class;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

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

    .line 805
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 806
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 787
    check-cast p2, Lcom/narvii/model/api/BlogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 790
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 791
    invoke-virtual {p2}, Lcom/narvii/model/api/BlogListResponse;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iget v2, v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    invoke-static {v1, v0, p1, p2, v2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2300(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 794
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/util/List;)V

    .line 795
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 796
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V

    goto :goto_0

    .line 798
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
