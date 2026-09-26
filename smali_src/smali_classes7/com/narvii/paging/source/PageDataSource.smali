.class public abstract Lcom/narvii/paging/source/PageDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/paging/source/ContinuousSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/source/PageDataSource$DIRECTION;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/paging/source/DataSource<",
        "TT;>;",
        "Lcom/narvii/paging/source/ContinuousSource;"
    }
.end annotation


# instance fields
.field private final DIRECTION_NEXT:I

.field private final DIRECTION_NONE:I

.field private final DIRECTION_PREV:I

.field private final DIRECTION_REFRESH:I

.field private final REQ_TAG_FROM_START:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final REQ_TAG_SIZE:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final REQ_TAG_START:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field private _isEnd:Z

.field private _nextPageToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _prevPageToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _refreshPageToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _start:I

.field private _stopTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final apiService:Lcom/narvii/util/http/ApiService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final config:Lcom/narvii/paging/source/PagingConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private direction:I

.field private firstRequestSent:Z

.field private refreshFlag:I

.field private request:Lcom/narvii/util/http/ApiRequest;
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
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v1, "TOKEN_CONFIG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    sget-object v1, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v2, "TOKEN_CONFIG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/paging/source/PagingConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/paging/storage/PageStorage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/paging/source/PagingConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/narvii/paging/storage/PageStorage<",
            "TT;>;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V

    const-class p2, Lcom/narvii/paging/source/PageDataSource;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NEXT:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 6
    new-instance p2, Lcom/narvii/util/Tag;

    const-string p3, "reqFromStart"

    invoke-direct {p2, p3}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 7
    new-instance p2, Lcom/narvii/util/Tag;

    const-string p3, "reqSize"

    invoke-direct {p2, p3}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 8
    new-instance p2, Lcom/narvii/util/Tag;

    const-string p3, "reqStart"

    invoke-direct {p2, p3}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    iget p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 9
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->responseType()Ljava/lang/Class;

    move-result-object p2

    new-instance p3, Lcom/narvii/paging/source/PageDataSource$responseListener$1;

    invoke-direct {p3, p0, p2}, Lcom/narvii/paging/source/PageDataSource$responseListener$1;-><init>(Lcom/narvii/paging/source/PageDataSource;Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    if-eqz p1, :cond_0

    const-string p2, "api"

    .line 10
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    iput-object p4, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    return-void
.end method

.method public static final synthetic access$getDIRECTION_REFRESH$p(Lcom/narvii/paging/source/PageDataSource;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getREQ_TAG_FROM_START$p(Lcom/narvii/paging/source/PageDataSource;)Lcom/narvii/util/Tag;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$prepareNewRequestContext(Lcom/narvii/paging/source/PageDataSource;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/source/PageDataSource;->prepareNewRequestContext()V

    .line 4
    return-void
.end method

.method public static synthetic generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest(IZ)Lcom/narvii/util/http/ApiRequest;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: generateNewRequest"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method public static synthetic loadFirstPage$default(Lcom/narvii/paging/source/PageDataSource;ZLcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_2

    .line 3
    .line 4
    and-int/lit8 p4, p3, 0x1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource;->loadFirstPage(ZLcom/narvii/paging/source/PageRequestCallback;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: loadFirstPage"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method

.method private final prepareNewRequestContext()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    return-void
.end method


# virtual methods
.method protected abstract createRequest()Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final executeRequest()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 15
    :cond_0
    return-void
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

.method public final generateNewRequest(IZ)Lcom/narvii/util/http/ApiRequest;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getDataSourceInterceptor()Lcom/narvii/paging/source/DataSourceInterceptor;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, p2}, Lcom/narvii/paging/source/DataSourceInterceptor;->getInterceptedRequest(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    :cond_1
    move-object v1, p2

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 28
    .line 29
    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "size"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 41
    .line 42
    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x1

    .line 45
    .line 46
    if-eqz v2, :cond_5

    .line 47
    .line 48
    if-eq v2, v5, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 58
    move-result v2

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    :goto_0
    move v2, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v2, v4

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_4
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_5
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :goto_1
    iget-object v6, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v6, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 86
    .line 87
    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    .line 88
    .line 89
    if-nez v2, :cond_9

    .line 90
    .line 91
    const-string v2, "pagingType"

    .line 92
    .line 93
    const-string v3, "t"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    .line 98
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    .line 99
    .line 100
    if-ne p1, v2, :cond_6

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_6
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 106
    .line 107
    if-ne p1, v2, :cond_7

    .line 108
    .line 109
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 110
    const/4 v2, 0x2

    .line 111
    and-int/2addr p1, v2

    .line 112
    .line 113
    if-eq p1, v2, :cond_8

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :cond_7
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 119
    .line 120
    :cond_8
    :goto_2
    if-eqz v0, :cond_10

    .line 121
    .line 122
    const-string p1, "pageToken"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    goto :goto_7

    .line 127
    .line 128
    :cond_9
    if-ne v2, v5, :cond_10

    .line 129
    .line 130
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    .line 131
    .line 132
    if-ne p1, v2, :cond_a

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string p2, "load pre page is not support in this paginationType"

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object v0

    .line 141
    .line 142
    :cond_a
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 143
    .line 144
    if-ne p1, v2, :cond_b

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 147
    .line 148
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 152
    goto :goto_3

    .line 153
    .line 154
    :cond_b
    iget v4, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/narvii/paging/source/PagingConfiguration;->offsetStepKey:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz p1, :cond_d

    .line 163
    .line 164
    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 166
    move-result p1

    .line 167
    .line 168
    if-nez p1, :cond_c

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :cond_c
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 172
    .line 173
    iget-object v3, p1, Lcom/narvii/paging/source/PagingConfiguration;->offsetStepKey:Ljava/lang/String;

    .line 174
    .line 175
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 176
    .line 177
    iget p1, p1, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 185
    .line 186
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/narvii/paging/source/PagingConfiguration;->offsetStartKey:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz p1, :cond_f

    .line 191
    .line 192
    .line 193
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 194
    move-result p1

    .line 195
    .line 196
    if-nez p1, :cond_e

    .line 197
    goto :goto_5

    .line 198
    .line 199
    :cond_e
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/narvii/paging/source/PagingConfiguration;->offsetStartKey:Ljava/lang/String;

    .line 202
    goto :goto_6

    .line 203
    .line 204
    :cond_f
    :goto_5
    const-string p1, "start"

    .line 205
    .line 206
    .line 207
    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    .line 213
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 214
    .line 215
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 223
    .line 224
    if-eqz v0, :cond_10

    .line 225
    .line 226
    const-string p1, "stoptime"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 230
    .line 231
    .line 232
    :cond_10
    :goto_7
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    if-eqz p1, :cond_11

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    .line 242
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    .line 246
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    move-result p2

    .line 248
    .line 249
    if-eqz p2, :cond_11

    .line 250
    .line 251
    .line 252
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    move-result-object p2

    .line 254
    .line 255
    check-cast p2, Ljava/util/Map$Entry;

    .line 256
    .line 257
    .line 258
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 263
    move-result-object p2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 267
    goto :goto_8

    .line 268
    .line 269
    .line 270
    :cond_11
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 271
    move-result-object p1

    .line 272
    return-object p1
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getAppendItemRequested$Lib_release(III)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, p3

    return p1
.end method

.method public final getConfig()Lcom/narvii/paging/source/PagingConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    return-object v0
.end method

.method public final getDirection()I
    .locals 1

    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    return v0
.end method

.method public final getFirstRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return v0
.end method

.method public final getREQ_TAG_START()Lcom/narvii/util/Tag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    return-object v0
.end method

.method public final getRefreshFlag()I
    .locals 1

    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    return v0
.end method

.method public final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

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

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-object v0
.end method

.method public final get_isEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    return v0
.end method

.method public final get_nextPageToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final get_prevPageToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final get_refreshPageToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final get_start()I
    .locals 1

    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    return v0
.end method

.method public final get_stopTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isFirstPageRequestFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return v0
.end method

.method public loadAround(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 10
    .line 11
    iget v0, v0, Lcom/narvii/paging/source/PagingConfiguration;->prefetchDistance:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/paging/source/PageDataSource;->getAppendItemRequested$Lib_release(III)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-lez p1, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1, v0}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    .line 27
    :cond_1
    return-void
.end method

.method public final loadFirstPage(ZLcom/narvii/paging/source/PageRequestCallback;)V
    .locals 4
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0, v2, v3, v1}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 34
    :cond_1
    return-void

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 42
    .line 43
    :cond_3
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 48
    .line 49
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_4
    iput v2, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 53
    .line 54
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    .line 55
    .line 56
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->executeRequest()V

    .line 60
    return-void
.end method

.method public loadInitData()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v2, v0, v1, v0}, Lcom/narvii/paging/source/PageDataSource;->loadFirstPage$default(Lcom/narvii/paging/source/PageDataSource;ZLcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)V

    .line 10
    return-void
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 4
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/paging/state/PageLoadState;->isFailed()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NEXT:I

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, v1, v3, v2}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    .line 40
    return v1

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 48
    .line 49
    :cond_2
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NEXT:I

    .line 50
    .line 51
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 54
    .line 55
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->executeRequest()V

    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_3
    :goto_0
    return v1
.end method

.method public loadPrevPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 4
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0, v1, v3, v2}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    .line 32
    return v1

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    .line 49
    .line 50
    :goto_0
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 53
    .line 54
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->executeRequest()V

    .line 58
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    .line 61
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "only token pagination is supported!"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public onEmptyPageAppended()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->onEmptyPageAppended()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0, v1, v0}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public onEmptyPagePrepend()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->onEmptyPagePrepend()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0, v1, v0}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadPrevPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public onErrorRetry()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v3, v2, v3}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadPrevPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0, v3, v2, v3}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    .line 19
    :goto_0
    return-void
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
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
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 3
    .line 4
    if-ne p4, p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->isEmpty()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    const/4 p3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    :cond_1
    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 8
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
            "TE;I)V"
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
    const-string v0, "resp"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    instance-of v3, v2, Ljava/util/List;

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, v4

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    .line 40
    .line 41
    iget v5, v3, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x1

    .line 44
    .line 45
    if-nez v5, :cond_14

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    move-object p1, v4

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    move-object v3, v4

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    iget-object v3, v3, Lcom/narvii/model/api/Pagination;->prevPageToken:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    if-nez v5, :cond_3

    .line 80
    move-object p2, v4

    .line 81
    goto :goto_3

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    iget-object p2, p2, Lcom/narvii/model/api/Pagination;->refreshPageToken:Ljava/lang/String;

    .line 88
    .line 89
    :goto_3
    iget v5, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 90
    .line 91
    if-ne p3, v5, :cond_c

    .line 92
    .line 93
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 94
    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    const-string p2, "pagination prev token is null"

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_4
    iput-object v3, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 104
    .line 105
    :goto_4
    iget-boolean p2, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 106
    .line 107
    if-nez p2, :cond_7

    .line 108
    .line 109
    iget p2, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 110
    and-int/2addr p2, v7

    .line 111
    .line 112
    if-ne p2, v7, :cond_5

    .line 113
    goto :goto_5

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    if-eqz p2, :cond_6

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v2, v7, p0}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    .line 123
    move-result p2

    .line 124
    .line 125
    .line 126
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    move-result-object v4

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    move-result p2

    .line 132
    .line 133
    if-eqz p2, :cond_b

    .line 134
    .line 135
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 136
    .line 137
    iput-boolean v6, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 138
    goto :goto_6

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    instance-of p2, p2, Ljava/util/ArrayList;

    .line 145
    .line 146
    if-eqz p2, :cond_8

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    check-cast p2, Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 156
    .line 157
    .line 158
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 159
    move-result-object p2

    .line 160
    .line 161
    if-eqz p2, :cond_9

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v2, p0}, Lcom/narvii/paging/storage/PageStorage;->initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 165
    .line 166
    :cond_9
    if-nez p1, :cond_a

    .line 167
    move v6, v7

    .line 168
    .line 169
    :cond_a
    iput-boolean v6, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 170
    .line 171
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 175
    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :cond_c
    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    .line 179
    .line 180
    if-ne p3, v1, :cond_e

    .line 181
    .line 182
    iput-object v3, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 183
    .line 184
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    if-eqz p1, :cond_d

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v2, v6, p0}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    .line 194
    .line 195
    .line 196
    :cond_d
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 197
    .line 198
    goto/16 :goto_d

    .line 199
    .line 200
    :cond_e
    iget-object p3, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    move-result p3

    .line 205
    .line 206
    if-eqz p1, :cond_f

    .line 207
    .line 208
    if-eqz p3, :cond_10

    .line 209
    :cond_f
    move v6, v7

    .line 210
    .line 211
    :cond_10
    iput-boolean v6, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 212
    .line 213
    if-eqz v6, :cond_11

    .line 214
    goto :goto_7

    .line 215
    :cond_11
    move-object v4, p1

    .line 216
    .line 217
    :goto_7
    iput-object v4, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v0, :cond_12

    .line 220
    .line 221
    iput-object v3, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 222
    .line 223
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    :cond_12
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 227
    move-result-object p1

    .line 228
    .line 229
    if-eqz p1, :cond_13

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v2, p0}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 233
    .line 234
    .line 235
    :cond_13
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 236
    .line 237
    goto/16 :goto_d

    .line 238
    .line 239
    :cond_14
    if-ne v5, v7, :cond_22

    .line 240
    .line 241
    iget v0, v3, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 242
    .line 243
    iget v3, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 244
    .line 245
    if-ne p3, v3, :cond_1d

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    if-eqz p1, :cond_15

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 255
    move-result p1

    .line 256
    goto :goto_8

    .line 257
    :cond_15
    move p1, v6

    .line 258
    .line 259
    :goto_8
    if-le p1, v0, :cond_19

    .line 260
    .line 261
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 262
    and-int/2addr p1, v7

    .line 263
    .line 264
    if-ne p1, v7, :cond_16

    .line 265
    goto :goto_9

    .line 266
    .line 267
    .line 268
    :cond_16
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    if-eqz p1, :cond_17

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v2, v7, p0}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    .line 275
    move-result p1

    .line 276
    .line 277
    .line 278
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    move-result-object v4

    .line 280
    .line 281
    :cond_17
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 282
    .line 283
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    move-result p1

    .line 288
    .line 289
    if-eqz p1, :cond_1c

    .line 290
    .line 291
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 295
    move-result-object p1

    .line 296
    .line 297
    if-eqz p1, :cond_18

    .line 298
    .line 299
    check-cast p1, Ljava/util/Collection;

    .line 300
    .line 301
    .line 302
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 303
    move-result p1

    .line 304
    xor-int/2addr p1, v7

    .line 305
    .line 306
    if-nez p1, :cond_18

    .line 307
    move v6, v7

    .line 308
    .line 309
    :cond_18
    iput-boolean v6, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 310
    goto :goto_a

    .line 311
    .line 312
    .line 313
    :cond_19
    :goto_9
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 314
    move-result-object p1

    .line 315
    .line 316
    if-eqz p1, :cond_1a

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v2, p0}, Lcom/narvii/paging/storage/PageStorage;->initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 320
    .line 321
    :cond_1a
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    if-eqz p1, :cond_1b

    .line 328
    .line 329
    check-cast p1, Ljava/util/Collection;

    .line 330
    .line 331
    .line 332
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 333
    move-result p1

    .line 334
    xor-int/2addr p1, v7

    .line 335
    .line 336
    if-nez p1, :cond_1b

    .line 337
    move v6, v7

    .line 338
    .line 339
    :cond_1b
    iput-boolean v6, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 340
    .line 341
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 342
    .line 343
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    :cond_1c
    :goto_a
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 347
    goto :goto_d

    .line 348
    .line 349
    .line 350
    :cond_1d
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 351
    move-result-object p3

    .line 352
    .line 353
    if-eqz p3, :cond_20

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 357
    move-result-object p3

    .line 358
    .line 359
    .line 360
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 361
    move-result p3

    .line 362
    .line 363
    if-eqz p3, :cond_1e

    .line 364
    goto :goto_b

    .line 365
    .line 366
    .line 367
    :cond_1e
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 368
    move-result-object p3

    .line 369
    .line 370
    if-eqz p3, :cond_1f

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3, v2, p0}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 374
    .line 375
    :cond_1f
    iget-object p3, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 376
    .line 377
    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, p3, v1}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    .line 381
    move-result p1

    .line 382
    add-int/2addr p1, v0

    .line 383
    .line 384
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 385
    goto :goto_c

    .line 386
    .line 387
    :cond_20
    :goto_b
    iput-boolean v7, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 388
    .line 389
    :goto_c
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 390
    .line 391
    if-nez p1, :cond_21

    .line 392
    .line 393
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 394
    .line 395
    :cond_21
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 399
    :cond_22
    :goto_d
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
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource;->loadFirstPage(ZLcom/narvii/paging/source/PageRequestCallback;)V

    .line 7
    return-void
.end method

.method public resetDataSource()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 11
    .line 12
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 36
    .line 37
    :cond_2
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 38
    .line 39
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 42
    .line 43
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    .line 46
    .line 47
    .line 48
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 49
    return-void
.end method

.method protected abstract responseType()Ljava/lang/Class;
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

.method public final setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    return-void
.end method

.method public setFirstPageRequestFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return-void
.end method

.method public final setFirstRequestSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return-void
.end method

.method public final setRefreshFlag(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    return-void
.end method

.method public final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final setRequestCallback(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

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

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method public final set_isEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    return-void
.end method

.method public final set_nextPageToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    return-void
.end method

.method public final set_prevPageToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    return-void
.end method

.method public final set_refreshPageToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    return-void
.end method

.method public final set_start(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    return-void
.end method

.method public final set_stopTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    return-void
.end method
