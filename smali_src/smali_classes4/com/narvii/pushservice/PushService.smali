.class public Lcom/narvii/pushservice/PushService;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/pushservice/PushService$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/pushservice/PushService$1;-><init>(Lcom/narvii/pushservice/PushService;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/pushservice/PushService;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 22
    .line 23
    const/16 v2, 0x64

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v3

    .line 30
    .line 31
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "notification"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Landroid/app/NotificationManager;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/narvii/pushservice/PushService;->notifiManager:Landroid/app/NotificationManager;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    new-instance v2, Landroid/content/IntentFilter;

    .line 58
    .line 59
    const-string v4, "com.narvii.action.ACCOUNT_CHANGED"

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string v0, "push"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-object p1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 78
    return-void
.end method

.method public static synthetic a(Lcom/narvii/pushservice/PushService;ZZLcom/narvii/util/Callback;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/pushservice/PushService;->lambda$updateGcmToken$0(ZZLcom/narvii/util/Callback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/pushservice/PushService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/pushservice/PushService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    return p0
.end method

.method private checkPlayServices()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v2, "statistics"

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    move v4, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v2

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    const-string v5, "google_service_available"

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v5, v4}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    const-string v4, "google_service_status"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v4, v5}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    const/4 v1, 0x2

    .line 53
    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    :cond_1
    move v2, v3

    .line 60
    :cond_2
    return v2
.end method

.method static bridge synthetic d(Lcom/narvii/pushservice/PushService;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/pushservice/PushService;->notifiManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/pushservice/PushService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/pushservice/PushService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    return-void
.end method

.method private getAuid()Lcom/narvii/util/http/NameValuePair;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "auid"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AuidService;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/util/http/NameValuePair;

    .line 13
    .line 14
    const-string v2, "AUID"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AuidService;->getAuid()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v1
.end method

.method private getNDCAuth()Lcom/narvii/util/http/NameValuePair;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "sid"

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/util/http/NameValuePair;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "sid="

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v2, "NDCAUTH"

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v0}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v1
.end method

.method private getNdcDeviceId()Lcom/narvii/util/http/NameValuePair;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/NameValuePair;

    .line 3
    .line 4
    sget-object v1, La0/a;->l:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method private getSMDeviceID()Lcom/narvii/util/http/NameValuePair;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "antiFraud"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/IAntiFraud;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/util/http/NameValuePair;

    .line 13
    .line 14
    sget-object v2, La0/a;->m:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/util/http/IAntiFraud;->getDeviceId()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v1
.end method

.method private synthetic lambda$updateGcmToken$0(ZZLcom/narvii/util/Callback;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "narvii_push"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 12
    move-result-object p4

    .line 13
    .line 14
    check-cast p4, Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "fcm register: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    const-string v0, "fail to register fcm"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 41
    move-result-object p4

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0, p4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/4 p4, 0x0

    .line 46
    .line 47
    :goto_0
    if-nez p1, :cond_2

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-virtual {p0, p4, p1, p3}, Lcom/narvii/pushservice/PushService;->setGcmToken(Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    .line 57
    return-void
.end method

.method private unbind()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "lastBind"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    const-string v1, "GCM$"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "narvii_push"

    .line 24
    .line 25
    const-string v1, "gcm token unbinded"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    const/4 v0, 0x1

    .line 43
    return v0
.end method


# virtual methods
.method public addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
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

    .line 1
    move-object v7, p0

    .line 2
    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    iget-object v0, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    iget-wide v5, v7, Lcom/narvii/pushservice/PushService;->lastTokenTime:J

    .line 24
    .line 25
    .line 26
    const-wide/32 v8, 0x36ee80

    .line 27
    add-long/2addr v8, v5

    .line 28
    .line 29
    cmp-long v8, v2, v8

    .line 30
    const/4 v9, 0x1

    .line 31
    const/4 v10, 0x0

    .line 32
    .line 33
    if-lez v8, :cond_3

    .line 34
    .line 35
    const-wide/16 v11, 0x0

    .line 36
    .line 37
    cmp-long v5, v5, v11

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    move v5, v9

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v5, v10

    .line 43
    .line 44
    :goto_0
    iput-wide v2, v7, Lcom/narvii/pushservice/PushService;->lastTokenTime:J

    .line 45
    .line 46
    iget-object v2, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    iget-object v3, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    .line 59
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    const-string v6, "gcm_defaultSenderId"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v8, "string"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v6, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move-result v3

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    new-instance v6, Lcom/narvii/util/PackageUtils;

    .line 78
    .line 79
    iget-object v8, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 80
    .line 81
    .line 82
    invoke-interface {v8}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v8

    .line 84
    .line 85
    .line 86
    invoke-direct {v6, v8}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    new-instance v8, Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 89
    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "@fcm.googleapis.com"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-direct {v8, v2}, Lcom/google/firebase/messaging/RemoteMessage$a;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    const/16 v2, 0x3c

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v2}, Lcom/google/firebase/messaging/RemoteMessage$a;->d(I)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lcom/google/firebase/messaging/RemoteMessage$a;->c(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    const-string v3, "did"

    .line 133
    .line 134
    .line 135
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 136
    move-result-object v8

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3, v8}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    move-result-wide v11

    .line 145
    .line 146
    .line 147
    invoke-static {}, La0/b;->m()J

    .line 148
    move-result-wide v13

    .line 149
    sub-long/2addr v11, v13

    .line 150
    .line 151
    const-wide/16 v13, 0x3e8

    .line 152
    div-long/2addr v11, v13

    .line 153
    .line 154
    .line 155
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    const-string v8, "dt"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v8, v3}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    const-string v3, "http.agent"

    .line 165
    .line 166
    .line 167
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    .line 170
    .line 171
    const-string/jumbo v8, "ua"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v8, v3}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    const-string v8, "lc"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v8, v3}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    .line 193
    move-result v3

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    move-result-object v3

    .line 198
    .line 199
    .line 200
    const-string/jumbo v6, "vc"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v6, v3}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    if-eqz v5, :cond_1

    .line 207
    .line 208
    const-string v3, "i0"

    .line 209
    .line 210
    const-string v5, "1"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v3, v5}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 214
    .line 215
    :cond_1
    if-eqz v1, :cond_2

    .line 216
    .line 217
    .line 218
    const-string/jumbo v3, "uid"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/messaging/RemoteMessage$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$a;

    .line 222
    .line 223
    .line 224
    :cond_2
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 225
    move-result-object v3

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/google/firebase/messaging/RemoteMessage$a;->b()Lcom/google/firebase/messaging/RemoteMessage;

    .line 229
    move-result-object v2

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->A(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 233
    .line 234
    :cond_3
    iget-object v2, v7, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 235
    .line 236
    const-string v3, "gcmToken"

    .line 237
    const/4 v5, 0x0

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v6

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 245
    move-result v2

    .line 246
    .line 247
    const-string v8, "bind"

    .line 248
    .line 249
    const-string v11, "changed"

    .line 250
    .line 251
    if-eqz v2, :cond_a

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    const-string v12, "sid"

    .line 258
    .line 259
    .line 260
    invoke-interface {v2, v12, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    move-result-object v2

    .line 262
    .line 263
    const-string v12, "GCM$"

    .line 264
    .line 265
    if-nez v6, :cond_4

    .line 266
    move-object v13, v5

    .line 267
    goto :goto_1

    .line 268
    .line 269
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v1, "$"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v1

    .line 297
    move-object v13, v1

    .line 298
    .line 299
    :goto_1
    if-nez v13, :cond_6

    .line 300
    .line 301
    .line 302
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->unbind()Z

    .line 303
    move-result v0

    .line 304
    .line 305
    if-eqz v4, :cond_5

    .line 306
    .line 307
    new-instance v1, Landroid/os/Bundle;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v11, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v8, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v4, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 323
    :cond_5
    return-void

    .line 324
    .line 325
    :cond_6
    iget-object v1, v7, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 326
    .line 327
    const-string v2, "lastBind"

    .line 328
    .line 329
    .line 330
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    .line 334
    invoke-static {v13, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    move-result v5

    .line 336
    .line 337
    if-nez v1, :cond_7

    .line 338
    goto :goto_2

    .line 339
    .line 340
    :cond_7
    if-nez p1, :cond_9

    .line 341
    .line 342
    if-eqz v5, :cond_9

    .line 343
    .line 344
    if-eqz v4, :cond_8

    .line 345
    .line 346
    new-instance v0, Landroid/os/Bundle;

    .line 347
    .line 348
    .line 349
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v11, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-interface {v4, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 362
    :cond_8
    return-void

    .line 363
    .line 364
    .line 365
    :cond_9
    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 366
    move-result v1

    .line 367
    .line 368
    if-eqz v1, :cond_b

    .line 369
    .line 370
    .line 371
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 372
    move-result-object v1

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 376
    move-result-object v2

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 383
    .line 384
    const-string v2, "/device"

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 388
    move-result-object v2

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->silent()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 392
    .line 393
    .line 394
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 395
    move-result-object v2

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    .line 399
    move-result v2

    .line 400
    .line 401
    .line 402
    const v3, 0xea60

    .line 403
    div-int/2addr v2, v3

    .line 404
    .line 405
    new-instance v3, Lcom/narvii/util/NotificationManagerHelper;

    .line 406
    .line 407
    iget-object v8, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 408
    .line 409
    .line 410
    invoke-interface {v8}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 411
    move-result-object v8

    .line 412
    .line 413
    .line 414
    invoke-direct {v3, v8}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 415
    .line 416
    sget-object v8, La0/a;->o:Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 420
    move-result-object v0

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v8, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 424
    move-result-object v0

    .line 425
    .line 426
    const-string v8, "deviceToken"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 430
    move-result-object v0

    .line 431
    .line 432
    const-string v8, "deviceTokenType"

    .line 433
    .line 434
    .line 435
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    move-result-object v9

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v8, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 440
    move-result-object v0

    .line 441
    .line 442
    iget-object v8, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 443
    .line 444
    .line 445
    invoke-interface {v8}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 446
    move-result-object v8

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 450
    move-result-object v8

    .line 451
    .line 452
    const-string v9, "bundleID"

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v9, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 456
    move-result-object v0

    .line 457
    .line 458
    sget v8, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 459
    .line 460
    .line 461
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    move-result-object v8

    .line 463
    .line 464
    const-string v9, "clientType"

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v9, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 468
    move-result-object v0

    .line 469
    .line 470
    .line 471
    const-string/jumbo v8, "timezone"

    .line 472
    .line 473
    .line 474
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    move-result-object v2

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v8, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 479
    move-result-object v0

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 483
    move-result v2

    .line 484
    .line 485
    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 487
    move-result-object v2

    .line 488
    .line 489
    .line 490
    const-string/jumbo v3, "systemPushEnabled"

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 494
    .line 495
    sget-object v0, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 499
    .line 500
    iget-object v0, v7, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 501
    .line 502
    const-string v2, "api"

    .line 503
    .line 504
    .line 505
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    move-result-object v0

    .line 507
    move-object v8, v0

    .line 508
    .line 509
    check-cast v8, Lcom/narvii/util/http/ApiService;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 513
    move-result-object v9

    .line 514
    .line 515
    new-instance v10, Lcom/narvii/pushservice/PushService$5;

    .line 516
    .line 517
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 518
    move-object v0, v10

    .line 519
    move-object v1, p0

    .line 520
    move-object v3, v13

    .line 521
    .line 522
    move-object/from16 v4, p2

    .line 523
    .line 524
    .line 525
    invoke-direct/range {v0 .. v6}, Lcom/narvii/pushservice/PushService$5;-><init>(Lcom/narvii/pushservice/PushService;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v8, v9, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 529
    goto :goto_3

    .line 530
    .line 531
    .line 532
    :cond_a
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->unbind()Z

    .line 533
    move-result v0

    .line 534
    .line 535
    if-eqz v4, :cond_b

    .line 536
    .line 537
    new-instance v1, Landroid/os/Bundle;

    .line 538
    .line 539
    .line 540
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v11, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v8, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-interface {v4, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 553
    :cond_b
    :goto_3
    return-void
.end method

.method public dismissChatNotification(ILjava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    shl-int/lit8 v0, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x8

    .line 10
    or-int/2addr v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    const-string v3, "account"

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    new-instance v3, Ljava/io/File;

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v5, "push_"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 51
    .line 52
    const-class v2, Lcom/narvii/pushservice/PushPayloadSet;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/pushservice/PushPayloadSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    const/4 v0, 0x0

    .line 61
    .line 62
    :goto_1
    if-eqz v0, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Lcom/narvii/pushservice/PushPayloadSet;->removeThread(Ljava/lang/String;)I

    .line 66
    .line 67
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    .line 71
    move-result p2

    .line 72
    .line 73
    if-nez p2, :cond_3

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 77
    :cond_3
    return-void
.end method

.method public dismissNotification(II)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushService;->isMaster:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    and-int/lit8 p1, p1, -0x8

    .line 9
    or-int/2addr p1, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, p2

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->notifiManager:Landroid/app/NotificationManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    if-eq p2, v0, :cond_1

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    if-ne p2, v0, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-object p2, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v0, "account"

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v2, "push_"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    :cond_2
    return-void
.end method

.method public dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/pushservice/PushService$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/narvii/pushservice/PushService$2;-><init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    const-string v1, "narvii_push"

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    const-string v4, "pushed_ids"

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    const-string v5, ","

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {v0, v5}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    :goto_0
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v3

    .line 75
    .line 76
    const/16 v6, 0x8

    .line 77
    .line 78
    if-le v3, v6, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    iget-object v3, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 85
    .line 86
    .line 87
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v5}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_3
    const-string p1, "duplicate push payload, ignored"

    .line 103
    .line 104
    .line 105
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 107
    .line 108
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 109
    .line 110
    const-string v3, "account"

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    .line 120
    move-result v3

    .line 121
    .line 122
    const/16 v4, 0x64

    .line 123
    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 127
    .line 128
    if-ne v3, v4, :cond_6

    .line 129
    .line 130
    iget v3, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 136
    move-result v3

    .line 137
    .line 138
    if-eqz v3, :cond_17

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    if-nez v0, :cond_6

    .line 145
    .line 146
    goto/16 :goto_9

    .line 147
    .line 148
    :cond_6
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->uid:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 153
    .line 154
    const-string v3, "block"

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 161
    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->uid:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v3}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    .line 168
    move-result v0

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->msgType:I

    .line 173
    .line 174
    .line 175
    packed-switch v0, :pswitch_data_0

    .line 176
    .line 177
    const-string p1, "filter payload from blocked user"

    .line 178
    .line 179
    .line 180
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 182
    .line 183
    :cond_7
    :pswitch_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 184
    .line 185
    new-instance v3, Lcom/narvii/pushservice/PushService$3;

    .line 186
    .line 187
    .line 188
    invoke-direct {v3, p0, p1}, Lcom/narvii/pushservice/PushService$3;-><init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 192
    .line 193
    iput-boolean v2, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    .line 194
    .line 195
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 196
    .line 197
    new-instance v3, Lcom/narvii/pushservice/PushService$4;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, p0, p1}, Lcom/narvii/pushservice/PushService$4;-><init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 204
    .line 205
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushService;->intercept:Z

    .line 206
    .line 207
    if-eqz v0, :cond_8

    .line 208
    return-void

    .line 209
    .line 210
    :cond_8
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 211
    .line 212
    iget v0, v0, Lcom/narvii/pushservice/PushAPS;->badge:I

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 217
    .line 218
    const-string v3, "badge"

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    check-cast v0, Lcom/narvii/util/badge/BadgeService;

    .line 225
    .line 226
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 227
    .line 228
    iget v3, v3, Lcom/narvii/pushservice/PushAPS;->badge:I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v3}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    .line 232
    .line 233
    :cond_9
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 234
    .line 235
    const-string v3, "_pushNotification"

    .line 236
    .line 237
    .line 238
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    check-cast v0, Lcom/narvii/pushservice/PushNotificationService;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p1}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;)V

    .line 245
    .line 246
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    .line 247
    .line 248
    if-eqz v3, :cond_16

    .line 249
    .line 250
    new-instance v3, Lcom/narvii/util/NotificationManagerHelper;

    .line 251
    .line 252
    iget-object v5, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 253
    .line 254
    .line 255
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 256
    move-result-object v5

    .line 257
    .line 258
    .line 259
    invoke-direct {v3, v5}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 263
    move-result v3

    .line 264
    .line 265
    const-class v5, Landroid/app/NotificationManager;

    .line 266
    .line 267
    const/16 v6, 0x1a

    .line 268
    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 272
    .line 273
    if-lt v7, v6, :cond_b

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p1}, Lcom/narvii/pushservice/PushNotificationService;->getChannelId(Lcom/narvii/pushservice/PushPayload;)Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 278
    .line 279
    if-nez v0, :cond_a

    .line 280
    goto :goto_3

    .line 281
    .line 282
    :cond_a
    iget-object v7, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 283
    .line 284
    .line 285
    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 286
    move-result-object v7

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 290
    move-result-object v7

    .line 291
    .line 292
    check-cast v7, Landroid/app/NotificationManager;

    .line 293
    .line 294
    .line 295
    invoke-static {v7, v0}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    if-eqz v0, :cond_c

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    .line 302
    move-result v0

    .line 303
    .line 304
    if-eqz v0, :cond_c

    .line 305
    const/4 v2, 0x1

    .line 306
    goto :goto_3

    .line 307
    :cond_b
    move v2, v3

    .line 308
    .line 309
    .line 310
    :cond_c
    :goto_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 311
    move-result-object v0

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 315
    move-result-object v0

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 319
    move-result-object v0

    .line 320
    .line 321
    const-string v7, "push/track"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushService;->getPostHeaders()Ljava/util/List;

    .line 329
    move-result-object v7

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->headers(Ljava/util/List;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 333
    move-result-object v0

    .line 334
    .line 335
    .line 336
    const-string/jumbo v7, "trackId"

    .line 337
    .line 338
    iget-object v8, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v7, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    .line 345
    const-string/jumbo v7, "trackType"

    .line 346
    .line 347
    const-string v8, "receive"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v7, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    iget-boolean v7, p0, Lcom/narvii/pushservice/PushService;->resumed:Z

    .line 354
    .line 355
    if-eqz v7, :cond_d

    .line 356
    .line 357
    const-string v7, "foreground"

    .line 358
    goto :goto_4

    .line 359
    .line 360
    :cond_d
    const-string v7, "background"

    .line 361
    .line 362
    :goto_4
    const-string v8, "scenario"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v8, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 366
    move-result-object v0

    .line 367
    .line 368
    const-string v7, "off"

    .line 369
    .line 370
    const-string v8, "on"

    .line 371
    .line 372
    if-eqz v3, :cond_e

    .line 373
    move-object v9, v8

    .line 374
    goto :goto_5

    .line 375
    :cond_e
    move-object v9, v7

    .line 376
    .line 377
    .line 378
    :goto_5
    const-string/jumbo v10, "systemPushStatus"

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v10, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 382
    move-result-object v0

    .line 383
    .line 384
    const-string v9, "shown"

    .line 385
    .line 386
    .line 387
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 388
    move-result-object v2

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v9, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 392
    move-result-object v0

    .line 393
    .line 394
    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 398
    move-result-object v0

    .line 399
    .line 400
    if-eqz v3, :cond_15

    .line 401
    .line 402
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 403
    .line 404
    if-lt v2, v6, :cond_15

    .line 405
    .line 406
    .line 407
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 408
    move-result-object v2

    .line 409
    .line 410
    iget-object v3, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 411
    .line 412
    .line 413
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 414
    move-result-object v3

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 418
    move-result-object v3

    .line 419
    .line 420
    check-cast v3, Landroid/app/NotificationManager;

    .line 421
    .line 422
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 423
    .line 424
    if-ne v5, v4, :cond_12

    .line 425
    .line 426
    const-string v4, "broadcast"

    .line 427
    .line 428
    .line 429
    invoke-static {v3, v4}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 430
    move-result-object v5

    .line 431
    .line 432
    .line 433
    invoke-static {v5}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    .line 434
    move-result v5

    .line 435
    .line 436
    if-eqz v5, :cond_f

    .line 437
    move-object v5, v8

    .line 438
    goto :goto_6

    .line 439
    :cond_f
    move-object v5, v7

    .line 440
    .line 441
    .line 442
    :goto_6
    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 443
    .line 444
    const-string v4, "chat"

    .line 445
    .line 446
    .line 447
    invoke-static {v3, v4}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 448
    move-result-object v5

    .line 449
    .line 450
    .line 451
    invoke-static {v5}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    .line 452
    move-result v5

    .line 453
    .line 454
    if-eqz v5, :cond_10

    .line 455
    move-object v5, v8

    .line 456
    goto :goto_7

    .line 457
    :cond_10
    move-object v5, v7

    .line 458
    .line 459
    .line 460
    :goto_7
    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 461
    .line 462
    const-string v4, "alert"

    .line 463
    .line 464
    .line 465
    invoke-static {v3, v4}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 466
    move-result-object v3

    .line 467
    .line 468
    .line 469
    invoke-static {v3}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    .line 470
    move-result v3

    .line 471
    .line 472
    if-eqz v3, :cond_11

    .line 473
    move-object v7, v8

    .line 474
    .line 475
    .line 476
    :cond_11
    invoke-virtual {v2, v4, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 477
    goto :goto_8

    .line 478
    .line 479
    :cond_12
    const/16 v4, 0xc8

    .line 480
    .line 481
    if-ne v5, v4, :cond_14

    .line 482
    .line 483
    const-string v4, "community-management"

    .line 484
    .line 485
    .line 486
    invoke-static {v3, v4}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 487
    move-result-object v3

    .line 488
    .line 489
    .line 490
    invoke-static {v3}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    .line 491
    move-result v3

    .line 492
    .line 493
    if-eqz v3, :cond_13

    .line 494
    move-object v7, v8

    .line 495
    .line 496
    .line 497
    :cond_13
    invoke-virtual {v2, v4, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 498
    .line 499
    .line 500
    :cond_14
    :goto_8
    const-string/jumbo v3, "systemPushCategory"

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 504
    .line 505
    :cond_15
    iget-object v2, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 506
    .line 507
    const-string v3, "api"

    .line 508
    .line 509
    .line 510
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 511
    move-result-object v2

    .line 512
    .line 513
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 517
    move-result-object v0

    .line 518
    .line 519
    sget-object v3, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 523
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    const-string v2, "push receive with trackId: "

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object p1

    .line 542
    .line 543
    .line 544
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_16
    return-void

    .line 546
    .line 547
    :cond_17
    :goto_9
    const-string p1, "push payload is ignored when logout"

    .line 548
    .line 549
    .line 550
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void

    .line 552
    nop

    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getGcmToken()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "gcmToken"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method getPostHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->getNDCAuth()Lcom/narvii/util/http/NameValuePair;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->getSMDeviceID()Lcom/narvii/util/http/NameValuePair;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->getNdcDeviceId()Lcom/narvii/util/http/NameValuePair;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->getAuid()Lcom/narvii/util/http/NameValuePair;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-object v0
.end method

.method public removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "gcmVersion"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "gcmToken"

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "gcmTokenTime"

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-string v0, "fallbackAvos"

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    .line 62
    return-void
.end method

.method public updateGcmToken(ZLcom/narvii/util/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "version"

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    const-string v4, "narvii_push"

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    .line 56
    .line 57
    const-string/jumbo v0, "version upgrade, reset push service!"

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_0
    const-string v0, "gcmToken"

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 67
    .line 68
    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    .line 79
    :cond_1
    iget-object v1, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    move-result-wide v1

    .line 88
    .line 89
    iget-object v3, p0, Lcom/narvii/pushservice/PushService;->prefs:Landroid/content/SharedPreferences;

    .line 90
    .line 91
    const-string v5, "gcmTokenTime"

    .line 92
    .line 93
    const-wide/16 v6, 0x0

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 97
    move-result-wide v5

    .line 98
    sub-long/2addr v1, v5

    .line 99
    .line 100
    .line 101
    const-wide/32 v5, 0x240c8400

    .line 102
    .line 103
    cmp-long v1, v1, v5

    .line 104
    const/4 v2, 0x0

    .line 105
    const/4 v3, 0x1

    .line 106
    .line 107
    if-lez v1, :cond_2

    .line 108
    move v1, v3

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    move v1, v2

    .line 111
    .line 112
    :goto_0
    if-eqz v0, :cond_4

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    .line 119
    goto :goto_2

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/narvii/pushservice/PushService;->checkPlayServices()Z

    .line 123
    move-result v0

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->o()Lcom/google/android/gms/tasks/Task;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    new-instance v2, Lcom/narvii/pushservice/e;

    .line 136
    .line 137
    .line 138
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/narvii/pushservice/e;-><init>(Lcom/narvii/pushservice/PushService;ZZLcom/narvii/util/Callback;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 142
    goto :goto_2

    .line 143
    .line 144
    :cond_5
    const-string v0, "google play service not available"

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    if-nez p1, :cond_6

    .line 150
    .line 151
    if-eqz v1, :cond_7

    .line 152
    :cond_6
    move v2, v3

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-virtual {p0, v2, p2}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    .line 156
    :goto_2
    return-void
.end method
