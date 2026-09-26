.class public final Lcom/narvii/services/DevOptionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/services/DevOptionsHelper$receiver$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/services/DevOptionsHelper$receiver$1;-><init>(Lcom/narvii/services/DevOptionsHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/DevOptionsHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/pushservice/DeviceResponse;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;-><init>(Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/services/DevOptionsHelper;->devOptionsListener:Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

    .line 20
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 13
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/services/DevOptionsHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/services/DevOptionsHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    new-instance v1, Landroid/content/IntentFilter;

    .line 26
    .line 27
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/services/DevOptionsHelper;->sendDevOptionsRequest(Lcom/narvii/app/NVContext;)V

    .line 37
    return-void
.end method

.method public final sendDevOptionsRequest(Lcom/narvii/app/NVContext;)V
    .locals 2
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
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "getService(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v0, "api"

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "/device/dev-options"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/services/DevOptionsHelper;->devOptionsListener:Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 55
    :cond_0
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
