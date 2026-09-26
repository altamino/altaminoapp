.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/search/model/AllSearchResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/search/GlobalSearchOthersResultFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/master/search/model/AllSearchResultResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "+",
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
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 16
    const/4 p2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Z)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getMergeAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/search/model/AllSearchResultResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/search/model/AllSearchResultResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setApiRequest$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Z)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 5
    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->setResponseTime(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 6
    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$onRequestFinish(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/master/search/model/AllSearchResultResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/master/search/model/AllSearchResultResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/search/model/AllSearchResultResponse;)V

    return-void
.end method
