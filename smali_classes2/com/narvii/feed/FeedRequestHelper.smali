.class public final Lcom/narvii/feed/FeedRequestHelper;
.super Ljava/lang/Object;
.source "FeedRequestHelper.kt"


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/feed/FeedRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 24
    iget-object p1, p0, Lcom/narvii/feed/FeedRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/feed/FeedRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public static synthetic sendBlogDetailRequest$default(Lcom/narvii/feed/FeedRequestHelper;Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/feed/FeedRequestHelper;->sendBlogDetailRequest(Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/feed/FeedRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/feed/FeedRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendBlogDetailRequest(Ljava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/feed/FeedRequestHelper;->sendBlogDetailRequest$default(Lcom/narvii/feed/FeedRequestHelper;Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public final sendBlogDetailRequest(Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_1
    const-string p2, "Push-Track-Id"

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    iget-object p2, p0, Lcom/narvii/feed/FeedRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance p3, Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;

    const-class v0, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {p3, p4, v0}, Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;-><init>(Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final sendBlogDetailRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/narvii/feed/FeedRequestHelper;->sendBlogDetailRequest$default(Lcom/narvii/feed/FeedRequestHelper;Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;ILjava/lang/Object;)V

    return-void
.end method
