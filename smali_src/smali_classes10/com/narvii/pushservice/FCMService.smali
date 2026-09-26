.class public Lcom/narvii/pushservice/FCMService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "narvii_push"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "narvii_push"

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v2, "FCM message received in "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "payload"

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "data"

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_0
    :goto_0
    const-class v2, Lcom/narvii/pushservice/PushPayload;

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Lcom/narvii/pushservice/PushPayload;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    iget-object v3, v2, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    const-string v1, "push"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Lcom/narvii/pushservice/PushService;->dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    check-cast v3, Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    const-string v2, "no content in push payload "

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :goto_2
    const-string v1, "fail to process push payload from GCM"

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :goto_3
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/BlockingItem;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/BlockingItem;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    const-string v2, "push"

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/pushservice/PushService;

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/pushservice/a;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/narvii/pushservice/a;-><init>(Lcom/narvii/util/BlockingItem;)V

    .line 28
    const/4 v3, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, v3, v2}, Lcom/narvii/pushservice/PushService;->setGcmToken(Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    .line 32
    .line 33
    const-wide/16 v1, 0x7530

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/BlockingItem;->tryTake(J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    return-void
.end method
