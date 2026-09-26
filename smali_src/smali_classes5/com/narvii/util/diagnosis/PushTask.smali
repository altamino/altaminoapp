.class Lcom/narvii/util/diagnosis/PushTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


# instance fields
.field final id:Ljava/lang/String;

.field final listener:Lcom/narvii/util/http/ApiResponseListener;

.field push:Lcom/narvii/pushservice/PushService;

.field rebindTime:J

.field rebinded:Z

.field final receiver:Landroid/content/BroadcastReceiver;

.field sendTime:J


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "Push"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/diagnosis/PushTask$1;

    .line 8
    .line 9
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/diagnosis/PushTask$1;-><init>(Lcom/narvii/util/diagnosis/PushTask;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/diagnosis/PushTask$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/util/diagnosis/PushTask$2;-><init>(Lcom/narvii/util/diagnosis/PushTask;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->receiver:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->id:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "push"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method appendTo(Landroid/text/SpannableStringBuilder;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-wide v3, p0, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    .line 9
    .line 10
    cmp-long v3, v3, v1

    .line 11
    .line 12
    if-lez v3, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 16
    move-result-wide v3

    .line 17
    .line 18
    iget-wide v5, p0, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    .line 19
    .line 20
    const-wide/16 v7, 0x2710

    .line 21
    add-long/2addr v5, v7

    .line 22
    .line 23
    cmp-long v0, v3, v5

    .line 24
    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/narvii/util/diagnosis/PushTask;->rebinded:Z

    .line 28
    .line 29
    const-string v3, "Timeout ("

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "). Refreshing token..."

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->rebindToken()V

    .line 63
    const/4 v0, 0x1

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/narvii/util/diagnosis/PushTask;->rebinded:Z

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, ")."

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_1
    if-nez v0, :cond_2

    .line 100
    .line 101
    iget-wide v3, p0, Lcom/narvii/util/diagnosis/PushTask;->rebindTime:J

    .line 102
    .line 103
    cmp-long v0, v3, v1

    .line 104
    .line 105
    if-lez v0, :cond_2

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 109
    move-result-wide v0

    .line 110
    .line 111
    iget-wide v2, p0, Lcom/narvii/util/diagnosis/PushTask;->rebindTime:J

    .line 112
    .line 113
    const-wide/16 v4, 0x4e20

    .line 114
    add-long/2addr v2, v4

    .line 115
    .line 116
    cmp-long v0, v0, v2

    .line 117
    .line 118
    if-lez v0, :cond_2

    .line 119
    .line 120
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 123
    .line 124
    const-string v0, "Timeout (bind)."

    .line 125
    .line 126
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/util/diagnosis/DiagnosisTask;->appendTo(Landroid/text/SpannableStringBuilder;)V

    .line 130
    return-void
.end method

.method destory()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    .line 9
    return-void
.end method

.method lastBind()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/pushservice/PushService;->getGcmToken()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string v0, "gcm"

    .line 13
    :goto_0
    return-object v0
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->id:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/util/NotificationManagerHelper;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p1, "Notification is blocked by system."

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method

.method rebindToken()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/util/diagnosis/PushTask;->rebindTime:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/diagnosis/PushTask$3;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/narvii/util/diagnosis/PushTask$3;-><init>(Lcom/narvii/util/diagnosis/PushTask;)V

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/narvii/pushservice/PushService;->updateGcmToken(ZLcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method

.method requestSend()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

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
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "/device"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    sget-object v2, La0/a;->o:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string v2, "bundleID"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-string v2, "clientType"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "testPushId"

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/util/diagnosis/PushTask;->id:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 78
    .line 79
    const-string v2, "api"

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/util/diagnosis/PushTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->requestSend()V

    .line 4
    return-void
.end method
