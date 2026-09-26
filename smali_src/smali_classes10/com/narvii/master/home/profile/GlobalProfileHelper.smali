.class public final Lcom/narvii/master/home/profile/GlobalProfileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private visitorParam:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitorParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x4

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    const/4 p4, 0x0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;)V"
        }
    .end annotation

    .line 1
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
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z)V"
        }
    .end annotation

    .line 2
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
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 4
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    .line 5
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "Push-Track-Id"

    invoke-virtual {v1, v2, p4}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p4

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p4

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "action"

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    .line 9
    invoke-virtual {p4, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, ""

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper;->visitorParam:Ljava/lang/String;

    .line 10
    :cond_1
    invoke-virtual {p4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-class v7, Lcom/narvii/model/api/UserResponse;

    .line 11
    new-instance p4, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;

    move-object v2, p4

    move-object v3, p2

    move v5, p3

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/account/AccountService;ZLcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Global Profile"

    const-string p2, "Try to send Global profile when uid is null"

    .line 12
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
