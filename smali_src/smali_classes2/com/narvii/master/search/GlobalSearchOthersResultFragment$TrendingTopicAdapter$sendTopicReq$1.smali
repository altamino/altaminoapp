.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/TopicSuggestResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->access$getList(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 18
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/TopicSuggestResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/TopicSuggestResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/TopicSuggestResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/TopicSuggestResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 3
    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->access$getList(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p2, Lcom/narvii/model/api/TopicSuggestResponse;->topicList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 5
    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->access$getList(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;

    move-result-object p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
