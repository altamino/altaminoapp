.class public Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/account/AccountService;",
        ">;"
    }
.end annotation


# instance fields
.field account0:Lcom/narvii/account/AccountService;

.field final keychainReceiver:Landroid/content/BroadcastReceiver;

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field userId0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;-><init>(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->keychainReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lambda$resume$0()V

    return-void
.end method

.method private synthetic lambda$resume$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->keychainReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AccountService;
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/narvii/account/AccountService;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 4
    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lcom/narvii/account/AccountService;-><init>(Lcom/narvii/app/NVContext;II)V

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AccountService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 3

    .line 2
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->account0:Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->userId0:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->keychainReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 7
    new-instance p1, Lcom/narvii/services/incubator/a;

    invoke-direct {p1, p0}, Lcom/narvii/services/incubator/a;-><init>(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->crossAppsCheckInBackground()V

    :cond_1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method
