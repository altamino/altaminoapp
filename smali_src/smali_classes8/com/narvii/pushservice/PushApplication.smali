.class public abstract Lcom/narvii/pushservice/PushApplication;
.super Lcom/narvii/app/NVApplication;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/app/NVApplication;-><init>(ZILjava/lang/String;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/pushservice/PushNotificationService;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lcom/narvii/pushservice/PushNotificationService;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication;->pushNotificationService:Lcom/narvii/pushservice/PushNotificationService;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/pushservice/PushApplication$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/pushservice/PushApplication$1;-><init>(Lcom/narvii/pushservice/PushApplication;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method


# virtual methods
.method protected activityOnCreate(Landroid/app/Activity;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnCreate(Landroid/app/Activity;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "ForwardActivity"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "push"

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v3, "_pushClearType"

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/pushservice/PushService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    const-string v6, "_pushClearCid"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    move-result v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4, v1}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    const-string v3, "_pushTrackId"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    check-cast v1, Lcom/narvii/pushservice/PushService;

    .line 87
    .line 88
    iget-boolean v1, v1, Lcom/narvii/pushservice/PushService;->resumed:Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    check-cast v2, Lcom/narvii/pushservice/PushService;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    const-string v4, "push/track"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/narvii/pushservice/PushService;->getPostHeaders()Ljava/util/List;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers(Ljava/util/List;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    const-string/jumbo v3, "trackId"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    const-string/jumbo v3, "trackType"

    .line 139
    .line 140
    const-string v4, "open"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    const-string v1, "foreground"

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_1
    const-string v1, "background"

    .line 152
    .line 153
    :goto_0
    const-string v3, "scenario"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    const-string v2, "api"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 176
    .line 177
    sget-object v3, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    const-string v2, "push open with trackId: "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    const-string v1, "narvii_push"

    .line 200
    .line 201
    .line 202
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_2
    return v0
.end method

.method protected initApplicationServices(Lcom/narvii/services/ServiceManager;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/pushservice/PushApplication$PushStartupService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/narvii/pushservice/PushApplication$PushStartupService;-><init>(Lcom/narvii/pushservice/PushApplication;Lcom/narvii/pushservice/c;)V

    .line 7
    .line 8
    const-string v1, "_push"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/pushservice/PushServiceProvider;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/narvii/pushservice/PushServiceProvider;-><init>()V

    .line 17
    .line 18
    const-string v1, "push"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 22
    .line 23
    const-string v0, "_pushNotification"

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/pushservice/PushApplication;->pushNotificationService:Lcom/narvii/pushservice/PushNotificationService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/pushservice/WsPushRelayProvider;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/narvii/pushservice/WsPushRelayProvider;-><init>()V

    .line 34
    .line 35
    const-string v1, "_wsPushRelay"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 39
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->onCreate()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/pushservice/PushApplication;->receiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    new-instance v2, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/pushservice/PushApplication;->receiver:Landroid/content/BroadcastReceiver;

    .line 26
    .line 27
    new-instance v2, Landroid/content/IntentFilter;

    .line 28
    .line 29
    const-string v3, "com.narvii.action.SID_CHANGED"

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, ".dev"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const-string v1, ".manager"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    const-string v2, "app_id"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
