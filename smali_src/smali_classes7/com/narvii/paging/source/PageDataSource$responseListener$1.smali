.class public final Lcom/narvii/paging/source/PageDataSource$responseListener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/PageDataSource<",
            "TT;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/paging/source/PageDataSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/source/PageDataSource<",
            "TT;TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static synthetic a(ILcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->onFinish$lambda$0(ILcom/narvii/paging/source/DataSourceRefreshListener;)V

    return-void
.end method

.method private static final onFinish$lambda$0(ILcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/paging/source/DataSourceRefreshListener;->onRefreshFinishedBeforePageResponse(I)V

    .line 4
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/paging/source/PageDataSource;->getDirection()I

    .line 9
    move-result p2

    .line 10
    .line 11
    iget-object p3, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/narvii/paging/source/PageDataSource;->getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    iget-object p6, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 18
    .line 19
    .line 20
    invoke-static {p6}, Lcom/narvii/paging/source/PageDataSource;->access$prepareNewRequestContext(Lcom/narvii/paging/source/PageDataSource;)V

    .line 21
    .line 22
    iget-object p6, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p6, p4}, Lcom/narvii/paging/source/DataSource;->pageLoadFailed(Ljava/lang/String;)V

    .line 26
    .line 27
    iget-object p6, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p6, p1, p4, p5, p2}, Lcom/narvii/paging/source/PageDataSource;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/paging/source/PageDataSource;->access$getREQ_TAG_FROM_START$p(Lcom/narvii/paging/source/PageDataSource;)Lcom/narvii/util/Tag;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 58
    const/4 p2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/PageDataSource;->setRefreshFlag(I)V

    .line 62
    .line 63
    if-eqz p3, :cond_1

    .line 64
    const/4 p1, 0x1

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 68
    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->getDirection()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/paging/source/PageDataSource;->getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 5
    invoke-static {v2}, Lcom/narvii/paging/source/PageDataSource;->access$prepareNewRequestContext(Lcom/narvii/paging/source/PageDataSource;)V

    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 6
    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/narvii/paging/state/PageLoadState;->status:I

    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 7
    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 8
    invoke-static {v2}, Lcom/narvii/paging/source/PageDataSource;->access$getDIRECTION_REFRESH$p(Lcom/narvii/paging/source/PageDataSource;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 9
    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getRefreshDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/narvii/paging/source/c;

    invoke-direct {v3, v0}, Lcom/narvii/paging/source/c;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 10
    invoke-static {v2}, Lcom/narvii/paging/source/PageDataSource;->access$getREQ_TAG_FROM_START$p(Lcom/narvii/paging/source/PageDataSource;)Lcom/narvii/util/Tag;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 11
    invoke-virtual {v3, p1, p2, v0}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    .line 12
    invoke-virtual {p1}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/PageDataSource;

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/PageDataSource;->setRefreshFlag(I)V

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_2
    return-void
.end method
