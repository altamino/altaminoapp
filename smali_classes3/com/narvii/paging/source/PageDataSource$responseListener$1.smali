.class public final Lcom/narvii/paging/source/PageDataSource$responseListener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PageDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/source/PageDataSource;


# direct methods
.method constructor <init>(Lcom/narvii/paging/source/PageDataSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

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
            "+",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 429
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 430
    iget-object p2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p2}, Lcom/narvii/paging/source/PageDataSource;->getDirection()I

    move-result p2

    .line 431
    iget-object p3, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p3}, Lcom/narvii/paging/source/PageDataSource;->getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;

    move-result-object p3

    .line 432
    iget-object p6, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-static {p6}, Lcom/narvii/paging/source/PageDataSource;->access$prepareNewRequestContext(Lcom/narvii/paging/source/PageDataSource;)V

    .line 433
    iget-object p6, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p6, p4}, Lcom/narvii/paging/source/DataSource;->pageLoadFailed(Ljava/lang/String;)V

    .line 434
    iget-object p6, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p6, p1, p4, p5, p2}, Lcom/narvii/paging/source/PageDataSource;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    if-eqz p1, :cond_0

    .line 435
    iget-object p2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-static {p2}, Lcom/narvii/paging/source/PageDataSource;->access$getREQ_TAG_FROM_START$p(Lcom/narvii/paging/source/PageDataSource;)Lcom/narvii/util/Tag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/narvii/paging/source/PageDataSource;->setRefreshFlag(I)V

    if-eqz p3, :cond_2

    .line 440
    invoke-interface {p3, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 405
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 409
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->getDirection()I

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/PageDataSource;->getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-static {v2}, Lcom/narvii/paging/source/PageDataSource;->access$prepareNewRequestContext(Lcom/narvii/paging/source/PageDataSource;)V

    .line 412
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 413
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    .line 414
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-static {v2}, Lcom/narvii/paging/source/PageDataSource;->access$getDIRECTION_REFRESH$p(Lcom/narvii/paging/source/PageDataSource;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getRefreshDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Lcom/narvii/paging/source/PageDataSource$responseListener$1$onFinish$1;

    invoke-direct {v4, v0}, Lcom/narvii/paging/source/PageDataSource$responseListener$1$onFinish$1;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-static {v2}, Lcom/narvii/paging/source/PageDataSource;->access$getREQ_TAG_FROM_START$p(Lcom/narvii/paging/source/PageDataSource;)Lcom/narvii/util/Tag;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 420
    iget-object v3, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v3, p1, p2, v0}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz v2, :cond_1

    .line 422
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/PageDataSource;->setRefreshFlag(I)V

    if-eqz v1, :cond_2

    .line 425
    invoke-interface {v1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_2
    return-void
.end method
