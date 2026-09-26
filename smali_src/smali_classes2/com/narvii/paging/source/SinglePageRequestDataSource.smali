.class public abstract Lcom/narvii/paging/source/SinglePageRequestDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requestCallback:Lcom/narvii/paging/source/PageRequestCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private responseListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseType()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;-><init>(Lcom/narvii/paging/source/SinglePageRequestDataSource;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string v0, "api"

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    :goto_0
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract createRequest()Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-object v0
.end method

.method public loadInitData()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v1, "request is null"

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 27
    :cond_1
    return-void
.end method

.method public final loadPage(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 3
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 16
    :cond_0
    return-void

    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    const/4 v2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 25
    .line 26
    :cond_2
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 36
    :cond_3
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->loadPage(Lcom/narvii/paging/source/PageRequestCallback;)V

    .line 5
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->loadPage(Lcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final setRequestCallback(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    return-void
.end method

.method public final setResponseListener$Lib_release(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method
