.class public abstract Lcom/narvii/pushservice/PushApplication;
.super Lcom/narvii/app/NVApplication;
.source "PushApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/PushApplication$PushStartupService;
    }
.end annotation


# instance fields
.field private final pushNotificationService:Lcom/narvii/pushservice/PushNotificationService;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method protected constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/app/NVApplication;-><init>(ZILjava/lang/String;)V

    .line 29
    new-instance p1, Lcom/narvii/pushservice/PushNotificationService;

    invoke-direct {p1}, Lcom/narvii/pushservice/PushNotificationService;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication;->pushNotificationService:Lcom/narvii/pushservice/PushNotificationService;

    .line 49
    new-instance p1, Lcom/narvii/pushservice/PushApplication$1;

    invoke-direct {p1, p0}, Lcom/narvii/pushservice/PushApplication$1;-><init>(Lcom/narvii/pushservice/PushApplication;)V

    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected activityOnCreate(Landroid/app/Activity;)Z
    .locals 7

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnCreate(Landroid/app/Activity;)Z

    move-result v0

    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ForwardActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "push"

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "_pushClearType"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/pushservice/PushService;

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "_pushClearCid"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3, v1}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "_pushTrackId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pushservice/PushService;

    .line 74
    iget-boolean v1, v1, Lcom/narvii/pushservice/PushService;->resumed:Z

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "push/track"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "trackId"

    .line 77
    invoke-virtual {v2, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "trackType"

    const-string v4, "open"

    .line 78
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v1, "foreground"

    goto :goto_0

    :cond_1
    const-string v1, "background"

    :goto_0
    const-string/jumbo v3, "scenario"

    .line 79
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 80
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 81
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 82
    sget-object v3, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "push open with trackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "narvii_push"

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method protected initApplicationServices(Lcom/narvii/services/ServiceManager;)V
    .locals 2

    .line 33
    new-instance v0, Lcom/narvii/pushservice/PushApplication$PushStartupService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/pushservice/PushApplication$PushStartupService;-><init>(Lcom/narvii/pushservice/PushApplication;Lcom/narvii/pushservice/PushApplication$1;)V

    const-string v1, "_push"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 34
    new-instance v0, Lcom/narvii/pushservice/PushServiceProvider;

    invoke-direct {v0}, Lcom/narvii/pushservice/PushServiceProvider;-><init>()V

    const-string/jumbo v1, "push"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 35
    iget-object v0, p0, Lcom/narvii/pushservice/PushApplication;->pushNotificationService:Lcom/narvii/pushservice/PushNotificationService;

    const-string v1, "_pushNotification"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 36
    new-instance v0, Lcom/narvii/pushservice/WsPushRelayProvider;

    invoke-direct {v0}, Lcom/narvii/pushservice/WsPushRelayProvider;-><init>()V

    const-string v1, "_wsPushRelay"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 41
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->onCreate()V

    .line 43
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pushservice/PushApplication;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 45
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pushservice/PushApplication;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.SID_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
