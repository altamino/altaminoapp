.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalSearchOthersResultFragment.kt"


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
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
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

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 227
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p1, p4}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Z)V

    .line 229
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getMergeAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/search/model/AllSearchResultResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 219
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setApiRequest$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 220
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Z)V

    .line 221
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->setResponseTime(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$onRequestFinish(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/master/search/model/AllSearchResultResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 215
    check-cast p2, Lcom/narvii/master/search/model/AllSearchResultResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/search/model/AllSearchResultResponse;)V

    return-void
.end method
