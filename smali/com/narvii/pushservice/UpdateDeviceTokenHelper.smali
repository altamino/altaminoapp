.class public Lcom/narvii/pushservice/UpdateDeviceTokenHelper;
.super Ljava/lang/Object;
.source "UpdateDeviceTokenHelper.java"

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


# static fields
.field public static final GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final REQUEST_DURATION:J = 0x927c0L

.field private static final REQ_TAG:Ljava/lang/String; = "cid"


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field private final deviceInfoListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/pushservice/DeviceResponse;",
            ">;"
        }
    .end annotation
.end field

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field prevUid:Ljava/lang/String;

.field final receiver:Landroid/content/BroadcastReceiver;

.field final requestTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 103
    new-instance v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;-><init>(Lcom/narvii/pushservice/UpdateDeviceTokenHelper;)V

    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;

    const-class v1, Lcom/narvii/pushservice/DeviceResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;-><init>(Lcom/narvii/pushservice/UpdateDeviceTokenHelper;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->deviceInfoListener:Lcom/narvii/util/http/ApiResponseListener;

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

    .line 87
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz p1, :cond_0

    .line 89
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    :cond_0
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 6

    .line 56
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez p2, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 59
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    const-string p2, "account"

    .line 63
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 64
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->prevUid:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 66
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_1
    const-string p2, "config"

    .line 69
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 70
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    .line 73
    sget-object v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const-string p1, "enter community by headline, skip /device"

    .line 76
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->sendDeviceRequest(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method sendDeviceRequest(Lcom/narvii/app/NVContext;I)V
    .locals 6

    const-string v0, "account"

    .line 117
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 118
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v0

    .line 119
    new-instance v1, Lcom/narvii/util/NotificationManagerHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "/device"

    .line 122
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->silent()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    iget-object v3, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceID"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 124
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bundleID"

    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    sget v4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "clientType"

    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "timezone"

    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v3, "systemPushEnabled"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "locale"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 129
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "cid"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo p2, "push"

    .line 134
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/pushservice/PushService;

    .line 135
    invoke-virtual {p2}, Lcom/narvii/pushservice/PushService;->getGcmToken()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deviceToken"

    .line 137
    invoke-virtual {v2, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 p2, 0x1

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "deviceTokenType"

    invoke-virtual {v2, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_0
    const-string p2, "api"

    .line 141
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 142
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->deviceInfoListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

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
