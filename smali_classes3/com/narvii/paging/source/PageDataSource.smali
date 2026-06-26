.class public abstract Lcom/narvii/paging/source/PageDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "PageDataSource.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageDataSource.kt\ncom/narvii/paging/source/PageDataSource\n*L\n1#1,452:1\n*E\n"
.end annotation


# instance fields
.field private final DIRECTION_NEXT:I

.field private final DIRECTION_NONE:I

.field private final DIRECTION_PREV:I

.field private final DIRECTION_REFRESH:I

.field private final REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

.field private final REQ_TAG_SIZE:Lcom/narvii/util/Tag;

.field private final REQ_TAG_START:Lcom/narvii/util/Tag;

.field private final TAG:Ljava/lang/String;

.field private _isEnd:Z

.field private _nextPageToken:Ljava/lang/String;

.field private _prevPageToken:Ljava/lang/String;

.field private _refreshPageToken:Ljava/lang/String;

.field private _start:I

.field private _stopTime:Ljava/lang/String;

.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final config:Lcom/narvii/paging/source/PagingConfiguration;

.field private direction:I

.field private firstRequestSent:Z

.field private refreshFlag:I

.field private request:Lcom/narvii/util/http/ApiRequest;

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

    .line 57
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v1, "PagingConfiguration.TOKEN_CONFIG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    sget-object v1, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v2, "PagingConfiguration.TOKEN_CONFIG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
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

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
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

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V

    .line 22
    const-class p2, Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PageDataSource::class.java.simpleName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    .line 25
    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NEXT:I

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    const/4 p2, 0x2

    .line 27
    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    .line 29
    new-instance p2, Lcom/narvii/util/Tag;

    const-string p3, "reqFromStart"

    invoke-direct {p2, p3}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 30
    new-instance p2, Lcom/narvii/util/Tag;

    const-string p3, "reqSize"

    invoke-direct {p2, p3}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 31
    new-instance p2, Lcom/narvii/util/Tag;

    const-string p3, "reqStart"

    invoke-direct {p2, p3}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 38
    iget p2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput p2, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 405
    new-instance p2, Lcom/narvii/paging/source/PageDataSource$responseListener$1;

    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->responseType()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/narvii/paging/source/PageDataSource$responseListener$1;-><init>(Lcom/narvii/paging/source/PageDataSource;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    if-eqz p1, :cond_0

    const-string p2, "api"

    .line 67
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    .line 68
    iput-object p4, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    return-void
.end method

.method public static final synthetic access$getDIRECTION_REFRESH$p(Lcom/narvii/paging/source/PageDataSource;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    return p0
.end method

.method public static final synthetic access$getREQ_TAG_FROM_START$p(Lcom/narvii/paging/source/PageDataSource;)Lcom/narvii/util/Tag;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    return-object p0
.end method

.method public static final synthetic access$prepareNewRequestContext(Lcom/narvii/paging/source/PageDataSource;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/paging/source/PageDataSource;->prepareNewRequestContext()V

    return-void
.end method

.method public static synthetic generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 225
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest(IZ)Lcom/narvii/util/http/ApiRequest;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: generateNewRequest"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadFirstPage$default(Lcom/narvii/paging/source/PageDataSource;ZLcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource;->loadFirstPage(ZLcom/narvii/paging/source/PageRequestCallback;)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadFirstPage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final prepareNewRequestContext()V
    .locals 2

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 401
    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 402
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    return-void
.end method


# virtual methods
.method protected abstract createRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method public final executeRequest()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 288
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
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

    .line 302
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final generateNewRequest(IZ)Lcom/narvii/util/http/ApiRequest;
    .locals 7

    .line 226
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 227
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getDataSourceInterceptor()Lcom/narvii/paging/source/DataSourceInterceptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/narvii/paging/source/DataSourceInterceptor;->getInterceptedRequest(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 228
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 230
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/AbstractList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 232
    :cond_1
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    if-nez v2, :cond_3

    goto :goto_1

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 237
    :goto_2
    iget-object v6, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 238
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    if-nez v2, :cond_7

    const-string v2, "pagingType"

    const-string v3, "t"

    .line 239
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 241
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    goto :goto_3

    .line 242
    :cond_4
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    if-ne p1, v2, :cond_5

    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_6

    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    goto :goto_3

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    :cond_6
    :goto_3
    if-eqz v0, :cond_10

    const-string p1, "pageToken"

    .line 246
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto/16 :goto_9

    :cond_7
    if-ne v2, v5, :cond_10

    .line 252
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    if-ne p1, v2, :cond_8

    .line 253
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->TAG:Ljava/lang/String;

    const-string p2, "load pre page is not support in this paginationType"

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 256
    :cond_8
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    if-ne p1, v2, :cond_9

    .line 259
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 p1, 0x0

    goto :goto_4

    .line 262
    :cond_9
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 263
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 267
    :goto_4
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget-object v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->offsetStepKey:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget-object v3, v2, Lcom/narvii/paging/source/PagingConfiguration;->offsetStepKey:Ljava/lang/String;

    :goto_7
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 268
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget-object v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->offsetStartKey:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    const/4 v4, 0x1

    :cond_e
    if-eqz v4, :cond_f

    const-string v2, "start"

    goto :goto_8

    :cond_f
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget-object v2, v2, Lcom/narvii/paging/source/PagingConfiguration;->offsetStartKey:Ljava/lang/String;

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 269
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz v0, :cond_10

    const-string p1, "stoptime"

    .line 271
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 274
    :cond_10
    :goto_9
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 275
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_a

    .line 279
    :cond_11
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v0
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 36
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

    .line 43
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    return-object v0
.end method

.method public final getDirection()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    return v0
.end method

.method public final getFirstRequestSent()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return v0
.end method

.method public final getREQ_TAG_START()Lcom/narvii/util/Tag;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    return-object v0
.end method

.method public final getRefreshFlag()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    return v0
.end method

.method public final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final getRequestCallback()Lcom/narvii/paging/source/PageRequestCallback;
    .locals 1

    .line 44
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

    .line 405
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-object v0
.end method

.method public final get_isEnd()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    return v0
.end method

.method public final get_nextPageToken()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final get_prevPageToken()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final get_refreshPageToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final get_start()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    return v0
.end method

.method public final get_stopTime()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstPageRequestFinished()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return v0
.end method

.method public loadAround(I)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v0, v0, Lcom/narvii/paging/source/PagingConfiguration;->prefetchDistance:I

    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/paging/source/PageDataSource;->getAppendItemRequested$Lib_release(III)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0, p1, v0}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final loadFirstPage(ZLcom/narvii/paging/source/PageRequestCallback;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 122
    :cond_0
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 123
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_2

    .line 124
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    if-eqz p2, :cond_1

    .line 125
    invoke-interface {p2, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_1
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 129
    :cond_3
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz p1, :cond_4

    .line 131
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    goto :goto_0

    .line 133
    :cond_4
    iput v3, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 134
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->executeRequest()V

    return-void
.end method

.method public loadInitData()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 97
    invoke-static {p0, v1, v0, v2, v0}, Lcom/narvii/paging/source/PageDataSource;->loadFirstPage$default(Lcom/narvii/paging/source/PageDataSource;ZLcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)V

    return-void
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/state/PageLoadState;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NEXT:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 179
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_1

    .line 180
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 181
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    return v1

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 185
    :cond_2
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NEXT:I

    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 186
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 187
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 188
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->executeRequest()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public loadPrevPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v0, v0, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    if-nez v0, :cond_4

    .line 206
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/narvii/paging/source/PageDataSource;->generateNewRequest$default(Lcom/narvii/paging/source/PageDataSource;IZILjava/lang/Object;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 207
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_1

    .line 208
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 209
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    return v1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    :goto_0
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 215
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 216
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 217
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->executeRequest()V

    const/4 p1, 0x1

    return p1

    .line 203
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only token pagination is supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onEmptyPageAppended()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->onEmptyPageAppended()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 293
    invoke-static {p0, v0, v1, v0}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    return-void
.end method

.method public onEmptyPagePrepend()V
    .locals 2

    .line 297
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->onEmptyPagePrepend()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 298
    invoke-static {p0, v0, v1, v0}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadPrevPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    return-void
.end method

.method public onErrorRetry()V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 144
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 145
    invoke-static {p0, v3, v2, v3}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadPrevPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p0, v3, v2, v3}, Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;->loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 394
    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    if-ne p4, p1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;I)V"
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 307
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v3, v5

    :cond_0
    invoke-virtual {p0, v3}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lcom/narvii/paging/source/PageDataSource;->config:Lcom/narvii/paging/source/PagingConfiguration;

    iget v6, v4, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    const/4 v7, 0x0

    if-nez v6, :cond_14

    .line 309
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 310
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v4

    iget-object v4, v4, Lcom/narvii/model/api/Pagination;->prevPageToken:Ljava/lang/String;

    .line 311
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v6

    if-nez v6, :cond_3

    move-object p2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/api/Pagination;->refreshPageToken:Ljava/lang/String;

    .line 313
    :goto_2
    iget v6, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    if-ne p3, v6, :cond_c

    .line 314
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string p2, "pagination prev token is null"

    .line 316
    invoke-static {p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 318
    :cond_4
    iput-object v4, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 321
    :goto_3
    iget-boolean p2, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    if-nez p2, :cond_7

    iget p2, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_5

    goto :goto_4

    .line 329
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v3, v1, p0}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 330
    :cond_6
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 331
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 332
    iput-boolean v7, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    goto :goto_6

    .line 322
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object p2

    instance-of p2, p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    .line 323
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 325
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2, v3, p0}, Lcom/narvii/paging/storage/PageStorage;->initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    :cond_9
    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 326
    :goto_5
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 327
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 335
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    goto/16 :goto_f

    .line 338
    :cond_c
    iget v2, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_PREV:I

    if-ne p3, v2, :cond_e

    .line 339
    iput-object v4, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v3, v7, p0}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    .line 342
    :cond_d
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    goto/16 :goto_f

    .line 346
    :cond_e
    iget-object p3, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p1, :cond_10

    if-eqz p3, :cond_f

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    .line 347
    :cond_10
    :goto_7
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 348
    iget-boolean p3, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    if-eqz p3, :cond_11

    move-object p1, v5

    :cond_11
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 350
    iput-object v4, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    .line 353
    :cond_12
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1, v3, p0}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 354
    :cond_13
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    goto/16 :goto_f

    :cond_14
    if-ne v6, v1, :cond_22

    .line 358
    iget v0, v4, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 360
    iget v4, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_REFRESH:I

    if-ne p3, v4, :cond_1d

    .line 361
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    move-result p1

    goto :goto_8

    :cond_15
    const/4 p1, 0x0

    :goto_8
    if-le p1, v0, :cond_19

    iget p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_16

    goto :goto_a

    .line 368
    :cond_16
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1, v3, v1, p0}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 369
    :cond_17
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 370
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 371
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 372
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_18

    goto :goto_9

    :cond_18
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    goto :goto_c

    .line 363
    :cond_19
    :goto_a
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1, v3, p0}, Lcom/narvii/paging/storage/PageStorage;->initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 364
    :cond_1a
    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 365
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_1b

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    :goto_b
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 366
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 375
    :cond_1c
    :goto_c
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    goto :goto_f

    .line 378
    :cond_1d
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_20

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1e

    goto :goto_d

    .line 381
    :cond_1e
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p3

    if-eqz p3, :cond_1f

    invoke-virtual {p3, v3, p0}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 382
    :cond_1f
    iget-object p3, p0, Lcom/narvii/paging/source/PageDataSource;->REQ_TAG_START:Lcom/narvii/util/Tag;

    iget v1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    invoke-virtual {p1, p3, v1}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    move-result p1

    add-int/2addr p1, v0

    .line 383
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    goto :goto_e

    .line 379
    :cond_20
    :goto_d
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 385
    :goto_e
    iget-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    if-nez p1, :cond_21

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    :cond_21
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 386
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    :cond_22
    :goto_f
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/PageDataSource;->loadFirstPage(ZLcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public resetDataSource()V
    .locals 4

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    .line 81
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    .line 82
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v2, :cond_1

    .line 84
    iget-object v3, p0, Lcom/narvii/paging/source/PageDataSource;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 85
    :cond_0
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 88
    :cond_2
    iput-object v0, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 89
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource;->DIRECTION_NONE:I

    iput v0, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    .line 90
    iput v1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    .line 91
    iput-boolean v1, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    .line 92
    invoke-super {p0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

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
.end method

.method public final setDirection(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->direction:I

    return-void
.end method

.method public setFirstPageRequestFinished()V
    .locals 1

    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return-void
.end method

.method public final setFirstRequestSent(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/narvii/paging/source/PageDataSource;->firstRequestSent:Z

    return-void
.end method

.method public final setRefreshFlag(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->refreshFlag:I

    return-void
.end method

.method public final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final setRequestCallback(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->requestCallback:Lcom/narvii/paging/source/PageRequestCallback;

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

    .line 405
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->responseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method public final set_isEnd(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/narvii/paging/source/PageDataSource;->_isEnd:Z

    return-void
.end method

.method public final set_nextPageToken(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_nextPageToken:Ljava/lang/String;

    return-void
.end method

.method public final set_prevPageToken(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_prevPageToken:Ljava/lang/String;

    return-void
.end method

.method public final set_refreshPageToken(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_refreshPageToken:Ljava/lang/String;

    return-void
.end method

.method public final set_start(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/narvii/paging/source/PageDataSource;->_start:I

    return-void
.end method

.method public final set_stopTime(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/paging/source/PageDataSource;->_stopTime:Ljava/lang/String;

    return-void
.end method
