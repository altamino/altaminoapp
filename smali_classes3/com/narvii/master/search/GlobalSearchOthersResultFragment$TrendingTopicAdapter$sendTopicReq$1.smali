.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalSearchOthersResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->sendTopicReq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/TopicSuggestResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalSearchOthersResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalSearchOthersResultFragment.kt\ncom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1\n*L\n1#1,743:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

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

    .line 408
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 409
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->access$getList$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 410
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 397
    check-cast p2, Lcom/narvii/model/api/TopicSuggestResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/TopicSuggestResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/TopicSuggestResponse;)V
    .locals 0

    .line 399
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 400
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->access$getList$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 401
    iget-object p1, p2, Lcom/narvii/model/api/TopicSuggestResponse;->topicList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 402
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->access$getList$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
