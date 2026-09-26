.class public Lcom/narvii/pushservice/UpdateDeviceTokenHelper;
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

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;-><init>(Lcom/narvii/pushservice/UpdateDeviceTokenHelper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;

    .line 20
    .line 21
    const-class v1, Lcom/narvii/pushservice/DeviceResponse;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;-><init>(Lcom/narvii/pushservice/UpdateDeviceTokenHelper;Ljava/lang/Class;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->deviceInfoListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 27
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

    .line 1
    .line 2
    instance-of p1, p1, Landroid/app/Application;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    :cond_0
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    instance-of p2, p1, Landroid/app/Application;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance v1, Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 31
    .line 32
    :cond_0
    const-string p2, "account"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->prevUid:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 56
    .line 57
    :cond_1
    const-string p2, "config"

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 67
    move-result p2

    .line 68
    .line 69
    sget-object v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 97
    move-result-wide v0

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 101
    move-result-wide v2

    .line 102
    .line 103
    .line 104
    const-wide/32 v4, 0x927c0

    .line 105
    sub-long/2addr v2, v4

    .line 106
    .line 107
    cmp-long v0, v0, v2

    .line 108
    .line 109
    if-lez v0, :cond_2

    .line 110
    .line 111
    const-string p1, "enter community by headline, skip /device"

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 115
    return-void

    .line 116
    .line 117
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 125
    move-result-wide v2

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->sendDeviceRequest(Lcom/narvii/app/NVContext;I)V

    .line 136
    return-void
.end method

.method sendDeviceRequest(Lcom/narvii/app/NVContext;I)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 14
    move-result v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/util/NotificationManagerHelper;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    const-string v3, "/device"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->silent()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    const-string v5, "bundleID"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    sget v4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    const-string v5, "clientType"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    const-string/jumbo v4, "timezone"

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 100
    move-result v1

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    const-string/jumbo v3, "systemPushEnabled"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    const-string v3, "locale"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    const-string v1, "cid"

    .line 134
    .line 135
    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 141
    .line 142
    const-string p2, "push"

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    check-cast p2, Lcom/narvii/pushservice/PushService;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/narvii/pushservice/PushService;->getGcmToken()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    move-result v0

    .line 157
    .line 158
    if-nez v0, :cond_0

    .line 159
    .line 160
    const-string v0, "deviceToken"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 164
    const/4 p2, 0x1

    .line 165
    .line 166
    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object p2

    .line 169
    .line 170
    const-string v0, "deviceTokenType"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 174
    .line 175
    :cond_0
    const-string p2, "api"

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->deviceInfoListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 191
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
