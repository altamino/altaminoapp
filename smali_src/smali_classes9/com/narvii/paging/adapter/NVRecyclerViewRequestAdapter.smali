.class public abstract Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


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
    value = "SMAP\nNVRecyclerViewRequestAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NVRecyclerViewRequestAdapter.kt\ncom/narvii/paging/adapter/NVRecyclerViewRequestAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n1#2:90\n*E\n"
.end annotation


# instance fields
.field private errorMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listener:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private response:Lcom/narvii/model/api/ApiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->responseType()Ljava/lang/Class;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;-><init>(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

    .line 20
    return-void
.end method

.method public static final synthetic access$setRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    return-void
.end method

.method public static synthetic g(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus$lambda$2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method private final sendRequest()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getService(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 34
    :cond_1
    return-void
.end method

.method private final updateStatus()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/paging/adapter/b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/paging/adapter/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method private static final updateStatus$lambda$2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract createRequest()Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->response:Lcom/narvii/model/api/ApiResponse;

    return-object v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->response:Lcom/narvii/model/api/ApiResponse;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->sendRequest()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus()V

    .line 6
    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TT;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->setResponse(Lcom/narvii/model/api/ApiResponse;)V

    .line 7
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->errorMsg:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->sendRequest()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus()V

    .line 10
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final setResponse(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->response:Lcom/narvii/model/api/ApiResponse;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->updateStatus()V

    .line 6
    return-void
.end method
