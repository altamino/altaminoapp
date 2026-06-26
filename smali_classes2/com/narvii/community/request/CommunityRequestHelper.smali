.class public final Lcom/narvii/community/request/CommunityRequestHelper;
.super Ljava/lang/Object;
.source "CommunityRequestHelper.kt"


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/request/CommunityRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    iget-object p1, p0, Lcom/narvii/community/request/CommunityRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/community/request/CommunityRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method


# virtual methods
.method public final checkWhetherUserIsJoined(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/narvii/community/request/CommunityRequestHelper$checkWhetherUserIsJoined$1;

    invoke-direct {v0, p2}, Lcom/narvii/community/request/CommunityRequestHelper$checkWhetherUserIsJoined$1;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/request/CommunityRequestHelper;->sendCommunityDetailRequest(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendCommunityDetailRequest(ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/community/FullCommunityResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 25
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "community/info"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v1, Lcom/narvii/community/request/CommunityRequestHelper$sendCommunityDetailRequest$1;

    const-class v2, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v1, p2, v2}, Lcom/narvii/community/request/CommunityRequestHelper$sendCommunityDetailRequest$1;-><init>(Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
