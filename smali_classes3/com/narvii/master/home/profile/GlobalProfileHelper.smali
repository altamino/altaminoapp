.class public final Lcom/narvii/master/home/profile/GlobalProfileHelper;
.super Ljava/lang/Object;
.source "GlobalProfileHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileHelper.kt\ncom/narvii/master/home/profile/GlobalProfileHelper\n*L\n1#1,58:1\n*E\n"
.end annotation


# instance fields
.field private final context:Lcom/narvii/app/NVContext;

.field private visitorParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitorParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
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

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const-string p1, "Global Profile"

    const-string p2, "Try to send Global profile when uid is null"

    .line 24
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 28
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/narvii/account/AccountService;

    .line 29
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "Push-Track-Id"

    invoke-virtual {v0, v2, p4}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user-profile/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p4

    .line 31
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "accountService"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    const-string v0, "action"

    invoke-virtual {p4, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, ""

    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    .line 35
    :cond_3
    invoke-virtual {p4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 36
    new-instance p4, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;

    const-class v8, Lcom/narvii/model/api/UserResponse;

    move-object v3, p4

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileHelper;Lcom/narvii/account/AccountService;Lcom/narvii/util/Callback;ZLjava/lang/Class;)V

    invoke-virtual {v1, p1, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
