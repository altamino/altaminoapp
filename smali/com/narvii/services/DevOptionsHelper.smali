.class public final Lcom/narvii/services/DevOptionsHelper;
.super Ljava/lang/Object;
.source "DevOptionsHelper.kt"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final devOptionsListener:Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/narvii/services/DevOptionsHelper$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/DevOptionsHelper$receiver$1;-><init>(Lcom/narvii/services/DevOptionsHelper;)V

    iput-object v0, p0, Lcom/narvii/services/DevOptionsHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 30
    new-instance v0, Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

    const-class v1, Lcom/narvii/pushservice/DeviceResponse;

    invoke-direct {v0, v1}, Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/services/DevOptionsHelper;->devOptionsListener:Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 3

    const-string p2, "ctx"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez p2, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 47
    iget-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/services/DevOptionsHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/services/DevOptionsHelper;->sendDevOptionsRequest(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public final sendDevOptionsRequest(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    .line 62
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 63
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "api"

    .line 64
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 65
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/device/dev-options"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/services/DevOptionsHelper;->devOptionsListener:Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
