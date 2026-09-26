.class public final Lcom/narvii/community/request/CommunityRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/community/request/CommunityRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "api"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/community/request/CommunityRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/Callback;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/community/request/CommunityRequestHelper;->checkWhetherUserIsJoined$lambda$0(Lcom/narvii/util/Callback;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method

.method private static final checkWhetherUserIsJoined$lambda$0(Lcom/narvii/util/Callback;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p1, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_1
    return-void
.end method


# virtual methods
.method public final checkWhetherUserIsJoined(ILcom/narvii/util/Callback;)V
    .locals 1
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/community/request/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/narvii/community/request/a;-><init>(Lcom/narvii/util/Callback;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/request/CommunityRequestHelper;->sendCommunityDetailRequest(ILcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendCommunityDetailRequest(ILcom/narvii/util/Callback;)V
    .locals 3
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/community/FullCommunityResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-gtz p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 18
    .line 19
    const-string v1, "community/info"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/community/request/CommunityRequestHelper$sendCommunityDetailRequest$1;

    .line 36
    .line 37
    const-class v2, Lcom/narvii/community/FullCommunityResponse;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p2, v2}, Lcom/narvii/community/request/CommunityRequestHelper$sendCommunityDetailRequest$1;-><init>(Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 44
    return-void
.end method
