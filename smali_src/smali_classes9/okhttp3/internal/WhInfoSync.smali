.class public Lokhttp3/internal/WhInfoSync;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Ljava/lang/Runnable;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/WhInfoSync$InfoSyncResp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lokhttp3/Callback;"
    }
.end annotation


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field handler:Landroid/os/Handler;

.field lastKeyHash:I

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field nextSyncTime:J

.field pushPrefs:Landroid/content/SharedPreferences;

.field final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lokhttp3/internal/WhInfoSync$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lokhttp3/internal/WhInfoSync$1;-><init>(Lokhttp3/internal/WhInfoSync;)V

    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/internal/WhInfoSync;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/internal/WhInfoSync;->create(Lcom/narvii/app/NVContext;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Runnable;
    .locals 2

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/WhInfoSync;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lokhttp3/internal/WhInfoSync;->context:Lcom/narvii/app/NVContext;

    .line 4
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "push"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/WhInfoSync;->pushPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhInfoSync;->destroy(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    const/4 v0, 0x4

    .line 3
    .line 4
    if-ge p1, v0, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "ENETUNREACH"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-wide/16 p1, 0x0

    .line 21
    .line 22
    iput-wide p1, p0, Lokhttp3/internal/WhInfoSync;->nextSyncTime:J

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Number;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    iput-wide v0, p0, Lokhttp3/internal/WhInfoSync;->nextSyncTime:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string p2, "{"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result p2

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    :try_start_0
    iget-object p2, p0, Lokhttp3/internal/WhInfoSync;->context:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    const-string v0, "whPushRecv"

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    check-cast p2, Lokhttp3/internal/WhPushRecv;

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 51
    .line 52
    const-class v1, Lokhttp3/internal/WhInfoSync$InfoSyncResp;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lokhttp3/internal/WhInfoSync$InfoSyncResp;

    .line 59
    .line 60
    iget-object p1, p1, Lokhttp3/internal/WhInfoSync$InfoSyncResp;->payloads:Ljava/util/ArrayList;

    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lcom/narvii/pushservice/PushPayload;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Lokhttp3/internal/WhPushRecv;->onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    const-wide/16 v0, 0x1388

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhInfoSync;->pause(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object p2, p0, Lokhttp3/internal/WhInfoSync;->receiver:Landroid/content/BroadcastReceiver;

    .line 2
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->pushPrefs:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhInfoSync;->resume(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object p2, p0, Lokhttp3/internal/WhInfoSync;->receiver:Landroid/content/BroadcastReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->pushPrefs:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x708

    .line 5
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 11

    .line 1
    .line 2
    const-string v0, "gcmToken"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/WhInfoSync;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    const-string v2, "account"

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v3, "00-"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    const-wide/16 v1, 0x3e8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    new-instance v3, Lcom/narvii/util/PackageUtils;

    .line 37
    .line 38
    iget-object v4, p0, Lokhttp3/internal/WhInfoSync;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    .line 54
    move-result v5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget-object v5, p0, Lokhttp3/internal/WhInfoSync;->pushPrefs:Landroid/content/SharedPreferences;

    .line 64
    const/4 v6, 0x0

    .line 65
    .line 66
    .line 67
    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 82
    move-result v6

    .line 83
    .line 84
    iget v7, p0, Lokhttp3/internal/WhInfoSync;->lastKeyHash:I

    .line 85
    .line 86
    if-eq v6, v7, :cond_1

    .line 87
    .line 88
    const-wide/16 v7, 0x0

    .line 89
    .line 90
    iput-wide v7, p0, Lokhttp3/internal/WhInfoSync;->nextSyncTime:J

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    move-result-wide v7

    .line 95
    .line 96
    iget-wide v9, p0, Lokhttp3/internal/WhInfoSync;->nextSyncTime:J

    .line 97
    .line 98
    cmp-long v9, v7, v9

    .line 99
    .line 100
    if-gez v9, :cond_2

    .line 101
    return-void

    .line 102
    .line 103
    .line 104
    :cond_2
    const-wide/32 v9, 0xea60

    .line 105
    add-long/2addr v9, v7

    .line 106
    .line 107
    iput-wide v9, p0, Lokhttp3/internal/WhInfoSync;->nextSyncTime:J

    .line 108
    .line 109
    iput v6, p0, Lokhttp3/internal/WhInfoSync;->lastKeyHash:I

    .line 110
    .line 111
    iget-object v6, p0, Lokhttp3/internal/WhInfoSync;->context:Lcom/narvii/app/NVContext;

    .line 112
    .line 113
    const-string v9, "whOkhttp3"

    .line 114
    .line 115
    .line 116
    invoke-interface {v6, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 118
    .line 119
    check-cast v6, Lokhttp3/OkHttpClient;

    .line 120
    const/4 v9, 0x0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    .line 125
    const-string v9, "https://www.altamino.top/whis?vc="

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    .line 132
    move-result v3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 141
    .line 142
    const-string v9, "did"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v9, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    const-string v2, "uid"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 153
    .line 154
    :cond_3
    const-string v1, "lc"

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 166
    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v0, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    new-instance v1, Lokhttp3/Request$Builder;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    const-wide/32 v1, 0xdbba0

    .line 195
    add-long/2addr v7, v1

    .line 196
    .line 197
    .line 198
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhInfoSync;->start(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhInfoSync;->stop(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method
