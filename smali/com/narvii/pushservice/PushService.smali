.class public Lcom/narvii/pushservice/PushService;
.super Ljava/lang/Object;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/PushService$PushListener;
    }
.end annotation


# static fields
.field public static final NOTIFY_TYPE_CHAT:I = 0x2

.field public static final NOTIFY_TYPE_MARKETING:I = 0x4

.field public static final NOTIFY_TYPE_NORMAL:I = 0x1

.field static final TAG:Ljava/lang/String; = "narvii_push"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private intercept:Z

.field private isMaster:Z

.field private lastTokenTime:J

.field private final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/pushservice/PushService$PushListener;",
            ">;"
        }
    .end annotation
.end field

.field private notifiManager:Landroid/app/NotificationManager;

.field private prefs:Landroid/content/SharedPreferences;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field public resumed:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 101
    new-instance v0, Lcom/narvii/pushservice/PushService$1;

    invoke-direct {v0, p0}, Lcom/narvii/pushservice/PushService$1;-><init>(Lcom/narvii/pushservice/PushService;)V

    iput-object v0, p0, Lcom/narvii/pushservice/PushService;->receiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 94
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    .line 95
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/narvii/pushservice/PushService;->notifiManager:Landroid/app/NotificationManager;

    .line 96
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/pushservice/PushService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 98
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "push"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/pushservice/PushService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/pushservice/PushService;)Landroid/app/NotificationManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/pushservice/PushService;->notifiManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/pushservice/PushService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/pushservice/PushService;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/pushservice/PushService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private checkPlayServices()Z
    .locals 6

    .line 498
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method private unbind()Z
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lastBind"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v2, "GCM$"

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "narvii_push"

    const-string v2, "gcm token unbinded"

    .line 491
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public bindGcmToken(ZLcom/narvii/util/Callback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v4, p2

    .line 355
    iget-object v0, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 356
    iget-object v1, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "deviceid"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 357
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 360
    iget-wide v8, v7, Lcom/narvii/pushservice/PushService;->lastTokenTime:J

    const-wide/32 v10, 0x36ee80

    add-long/2addr v10, v8

    const/4 v3, 0x1

    const/4 v12, 0x0

    cmp-long v13, v5, v10

    if-lez v13, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v13, v8, v10

    if-nez v13, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 362
    :goto_0
    iput-wide v5, v7, Lcom/narvii/pushservice/PushService;->lastTokenTime:J

    .line 363
    iget-object v5, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 364
    iget-object v6, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "gcm_defaultSenderId"

    const-string/jumbo v10, "string"

    invoke-virtual {v5, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    new-instance v9, Lcom/narvii/util/PackageUtils;

    iget-object v10, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v10}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 385
    :cond_1
    iget-object v1, v7, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    const-string v6, "gcmToken"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    const-string v9, "bind"

    const-string v10, "changed"

    if-eqz v1, :cond_9

    .line 387
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v11, "sid"

    invoke-interface {v1, v11, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "GCM$"

    if-nez v8, :cond_2

    move-object v13, v5

    goto :goto_1

    .line 390
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    :goto_1
    if-nez v13, :cond_4

    .line 393
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->unbind()Z

    move-result v0

    if-eqz v4, :cond_3

    .line 395
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 396
    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-interface {v4, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 406
    :cond_4
    iget-object v1, v7, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "lastBind"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v13, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    if-nez p1, :cond_7

    if-eqz v5, :cond_7

    if-eqz v4, :cond_6

    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-interface {v4, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 422
    :cond_7
    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 423
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 425
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v6, 0x65

    if-eq v2, v6, :cond_8

    .line 426
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_8
    const-string v2, "/device"

    .line 428
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->silent()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 429
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 430
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v6, 0xea60

    div-int/2addr v2, v6

    .line 431
    new-instance v6, Lcom/narvii/util/NotificationManagerHelper;

    iget-object v9, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v9}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v9, "deviceID"

    invoke-virtual {v1, v9, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v9, "deviceToken"

    .line 433
    invoke-virtual {v0, v9, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 434
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v9, "deviceTokenType"

    invoke-virtual {v0, v9, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v3, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 435
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "bundleID"

    invoke-virtual {v0, v9, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 436
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v9, "clientType"

    invoke-virtual {v0, v9, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 437
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "timezone"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 438
    invoke-virtual {v6}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "systemPushEnabled"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 440
    sget-object v0, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 441
    iget-object v0, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/narvii/util/http/ApiService;

    .line 442
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v10

    new-instance v11, Lcom/narvii/pushservice/PushService$6;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v11

    move-object v1, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/narvii/pushservice/PushService$6;-><init>(Lcom/narvii/pushservice/PushService;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_3

    .line 473
    :cond_9
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->unbind()Z

    move-result v0

    if-eqz v4, :cond_a

    .line 475
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 476
    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-interface {v4, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public dismissChatNotification(ILjava/lang/String;)V
    .locals 6

    .line 133
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    shl-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, -0x8

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 138
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    move-result-object v2

    .line 139
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "push_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, Lcom/narvii/pushservice/PushPayloadSet;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/pushservice/PushPayloadSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, p2}, Lcom/narvii/pushservice/PushPayloadSet;->removeThread(Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 151
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    :cond_3
    return-void
.end method

.method public dismissNotification(II)V
    .locals 3

    .line 117
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    if-eqz v0, :cond_0

    shl-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, -0x8

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    move p1, p2

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->notifiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 124
    :cond_1
    iget-object p2, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 125
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    move-result-object p2

    .line 126
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "push_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 10

    .line 157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Lcom/narvii/pushservice/PushService$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/pushservice/PushService$2;-><init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 167
    :cond_0
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "narvii_push"

    if-nez v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string/jumbo v4, "pushed_ids"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ","

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0, v5}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    :goto_0
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v6, 0x8

    if-le v3, v6, :cond_2

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v0, v5}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_3
    const-string p1, "duplicate push payload, ignored"

    .line 178
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 185
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_5

    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v3, v4, :cond_6

    iget v3, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    if-eqz v3, :cond_6

    .line 186
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_c

    .line 192
    :cond_6
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->uid:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "block"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    if-eqz v0, :cond_7

    .line 194
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->uid:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->msgType:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "filter payload from blocked user"

    .line 204
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_7
    :pswitch_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v3, Lcom/narvii/pushservice/PushService$3;

    invoke-direct {v3, p0, p1}, Lcom/narvii/pushservice/PushService$3;-><init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V

    invoke-virtual {v0, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 217
    iput-boolean v1, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    .line 218
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v3, Lcom/narvii/pushservice/PushService$4;

    invoke-direct {v3, p0, p1}, Lcom/narvii/pushservice/PushService$4;-><init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V

    invoke-virtual {v0, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 226
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    if-eqz v0, :cond_8

    return-void

    .line 230
    :cond_8
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    iget v0, v0, Lcom/narvii/pushservice/PushAPS;->badge:I

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "badge"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/badge/BadgeService;

    .line 232
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    iget v3, v3, Lcom/narvii/pushservice/PushAPS;->badge:I

    invoke-virtual {v0, v3}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    .line 235
    :cond_9
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "_pushNotification"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushNotificationService;

    .line 236
    invoke-virtual {v0, p1}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;)V

    .line 238
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 239
    new-instance v3, Lcom/narvii/util/NotificationManagerHelper;

    iget-object v5, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v3}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v3

    const/16 v5, 0x1a

    if-eqz v3, :cond_b

    .line 242
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_b

    .line 243
    invoke-virtual {v0, p1}, Lcom/narvii/pushservice/PushNotificationService;->getChannelId(Lcom/narvii/pushservice/PushPayload;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_3

    .line 247
    :cond_a
    iget-object v6, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 248
    invoke-virtual {v6, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 249
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    move v1, v3

    .line 253
    :cond_c
    :goto_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v6, "push/track"

    invoke-virtual {v0, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    const-string/jumbo v7, "trackId"

    .line 254
    invoke-virtual {v0, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v6, "trackType"

    const-string/jumbo v7, "receive"

    .line 255
    invoke-virtual {v0, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/narvii/pushservice/PushService;->resumed:Z

    if-eqz v6, :cond_d

    const-string v6, "foreground"

    goto :goto_4

    :cond_d
    const-string v6, "background"

    :goto_4
    const-string/jumbo v7, "scenario"

    .line 256
    invoke-virtual {v0, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v6, "on"

    const-string v7, "off"

    if-eqz v3, :cond_e

    move-object v8, v6

    goto :goto_5

    :cond_e
    move-object v8, v7

    :goto_5
    const-string/jumbo v9, "systemPushStatus"

    .line 257
    invoke-virtual {v0, v9, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 258
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v8, "shown"

    invoke-virtual {v0, v8, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 259
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v3, :cond_16

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_16

    .line 262
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 263
    iget-object v3, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 264
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-eq v5, v4, :cond_11

    const/16 v4, 0x65

    if-ne v5, v4, :cond_f

    goto :goto_7

    :cond_f
    const/16 v4, 0xc8

    if-ne v5, v4, :cond_15

    const-string v4, "community-management"

    .line 269
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    move-object v6, v7

    :goto_6
    invoke-virtual {v1, v4, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_b

    :cond_11
    :goto_7
    const-string v4, "broadcast"

    .line 265
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eqz v5, :cond_12

    move-object v5, v6

    goto :goto_8

    :cond_12
    move-object v5, v7

    :goto_8
    invoke-virtual {v1, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "chat"

    .line 266
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eqz v5, :cond_13

    move-object v5, v6

    goto :goto_9

    :cond_13
    move-object v5, v7

    :goto_9
    invoke-virtual {v1, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "alert"

    .line 267
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_a

    :cond_14
    move-object v6, v7

    :goto_a
    invoke-virtual {v1, v4, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_15
    :goto_b
    const-string/jumbo v3, "systemPushCategory"

    .line 271
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 274
    :cond_16
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 275
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    sget-object v3, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "push receive with trackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void

    :cond_18
    :goto_c
    const-string/jumbo p1, "push payload is ignored when logout"

    .line 187
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getGcmToken()Ljava/lang/String;
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "gcmToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setGcmToken(Ljava/lang/String;ZLcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 299
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gcmVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcmToken"

    .line 301
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "gcmTokenTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fallbackAvos"

    .line 303
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public updateGcmToken(ZLcom/narvii/util/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 309
    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 311
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "narvii_push"

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v0, "version upgrade, reset push service!"

    .line 314
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "gcmToken"

    if-eqz p1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v7, "gcmTokenTime"

    invoke-interface {v3, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x240c8400

    const/4 v3, 0x1

    const/4 v7, 0x0

    cmp-long v8, v1, v5

    if-lez v8, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    .line 349
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    goto :goto_3

    .line 325
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/narvii/pushservice/PushService$5;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/narvii/pushservice/PushService$5;-><init>(Lcom/narvii/pushservice/PushService;ZZLcom/narvii/util/Callback;)V

    .line 327
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    :cond_5
    const-string v0, "google play service not available"

    .line 343
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 344
    :cond_7
    :goto_2
    invoke-virtual {p0, v3, p2}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    :goto_3
    return-void
.end method
