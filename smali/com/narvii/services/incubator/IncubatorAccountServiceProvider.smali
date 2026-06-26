.class public Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorAccountServiceProvider.java"

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

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field userId0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;

    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;-><init>(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->keychainReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AccountService;
    .locals 3

    .line 22
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    new-instance v1, Lcom/narvii/account/AccountService;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lcom/narvii/account/AccountService;-><init>(Lcom/narvii/app/NVContext;II)V

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AccountService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->pause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 3

    .line 40
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iput-object p2, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->account0:Lcom/narvii/account/AccountService;

    .line 43
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->userId0:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 45
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->keychainReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 46
    new-instance p1, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;

    invoke-direct {p1, p0}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;-><init>(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->crossAppsCheckInBackground()V

    goto :goto_0

    .line 54
    :cond_1
    instance-of p1, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->updateRecentVisitorCount()V

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->resume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 31
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 82
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method
