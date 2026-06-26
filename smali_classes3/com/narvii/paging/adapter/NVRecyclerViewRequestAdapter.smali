.class public abstract Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "NVRecyclerViewRequestAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/api/ApiResponse;",
        ">",
        "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNVRecyclerViewRequestAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NVRecyclerViewRequestAdapter.kt\ncom/narvii/paging/adapter/NVRecyclerViewRequestAdapter\n*L\n1#1,89:1\n*E\n"
.end annotation


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private listener:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private response:Lcom/narvii/model/api/ApiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    new-instance p1, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->responseType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;-><init>(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

    return-void
.end method

.method public static final synthetic access$getRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$setRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method private final sendRequest()V
    .locals 3

    const-string v0, "api"

    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"api\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 63
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 65
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    return-void
.end method

.method private final updateStatus()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$updateStatus$1;->INSTANCE:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$updateStatus$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public abstract createRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Lcom/narvii/model/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->response:Lcom/narvii/model/api/ApiResponse;

    return-object v0
.end method

.method public isListShow()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 40
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->response:Lcom/narvii/model/api/ApiResponse;

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->sendRequest()V

    :cond_0
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 74
    iput-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus()V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TT;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->setResponse(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->sendRequest()V

    .line 48
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus()V

    return-void
.end method

.method protected abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public final setResponse(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->response:Lcom/narvii/model/api/ApiResponse;

    .line 80
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus()V

    return-void
.end method
