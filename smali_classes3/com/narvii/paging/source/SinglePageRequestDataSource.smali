.class public abstract Lcom/narvii/paging/source/SinglePageRequestDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "SinglePageRequestDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/paging/source/DataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

.field private responseListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    new-instance v0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;

    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;-><init>(Lcom/narvii/paging/source/SinglePageRequestDataSource;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    if-eqz p1, :cond_0

    const-string v0, "api"

    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method


# virtual methods
.method public abstract createRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    return-object v0
.end method

.method public final getResponseListener$Lib_release()Lcom/narvii/util/http/ApiResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-object v0
.end method

.method public loadInitData()V
    .locals 3

    .line 28
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 29
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 30
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "request is null"

    .line 32
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    return-void
.end method

.method public final loadPage(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 70
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 72
    invoke-interface {p1, v0}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 76
    :cond_2
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 77
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->loadPage(Lcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p2}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->loadPage(Lcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final setRequestCallback(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    return-void
.end method

.method public final setResponseListener$Lib_release(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method
