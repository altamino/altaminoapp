.class public final Lcom/narvii/account/AuidService;
.super Ljava/lang/Object;
.source "AuidService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/AuidService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/AuidService$Companion;

.field public static final REFRESH_AUID_TIME_INTERVAL_MS:I = 0x1b7740


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private lastRequestTime:J

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/AuidService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/AuidService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/account/AuidService;->Companion:Lcom/narvii/account/AuidService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/AuidService;->ctx:Lcom/narvii/app/NVContext;

    .line 19
    iget-object p1, p0, Lcom/narvii/account/AuidService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "auid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/AuidService;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getAuid()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/narvii/account/AuidService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "auid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/account/AuidService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final refreshAuid()V
    .locals 7

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/account/AuidService;->lastRequestTime:J

    sub-long/2addr v0, v2

    const v2, 0x1b7740

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/account/AuidService;->lastRequestTime:J

    .line 32
    iget-object v0, p0, Lcom/narvii/account/AuidService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/narvii/account/AuidService;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "deviceid"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ctx.getService(\"deviceid\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 35
    invoke-virtual {v2}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/narvii/account/AuidService;->ctx:Lcom/narvii/app/NVContext;

    const-string v4, "api"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ctx.getService(\"api\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 38
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "auid"

    .line 39
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    const-string v6, "deviceId"

    invoke-virtual {v5, v6, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v4, Lcom/narvii/account/AuidService$refreshAuid$1;

    const-class v5, Lcom/narvii/account/AuidResponse;

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/narvii/account/AuidService$refreshAuid$1;-><init>(Lcom/narvii/account/AuidService;Ljava/lang/String;Lcom/narvii/account/AccountService;Ljava/lang/Class;)V

    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final saveAuid(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/narvii/account/AuidService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
