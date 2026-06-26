.class Lcom/narvii/util/diagnosis/PushTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "PushTask.java"

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

    const-string v0, "Push"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/narvii/util/diagnosis/PushTask$1;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/diagnosis/PushTask$1;-><init>(Lcom/narvii/util/diagnosis/PushTask;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 62
    new-instance v0, Lcom/narvii/util/diagnosis/PushTask$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/diagnosis/PushTask$2;-><init>(Lcom/narvii/util/diagnosis/PushTask;)V

    iput-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->receiver:Landroid/content/BroadcastReceiver;

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->id:Ljava/lang/String;

    const-string v0, "push"

    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    .line 39
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    invoke-virtual {p1, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method


# virtual methods
.method appendTo(Landroid/text/SpannableStringBuilder;)V
    .locals 10

    .line 139
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    .line 140
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/narvii/util/diagnosis/PushTask;->rebinded:Z

    const-string v4, "Timeout ("

    if-nez v0, :cond_0

    .line 142
    iput-wide v2, p0, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Refreshing token..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->rebindToken()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/narvii/util/diagnosis/PushTask;->rebinded:Z

    goto :goto_0

    .line 147
    :cond_0
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    iget-wide v4, p0, Lcom/narvii/util/diagnosis/PushTask;->rebindTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 152
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/util/diagnosis/PushTask;->rebindTime:J

    const-wide/16 v6, 0x4e20

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 153
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    const-string v0, "Timeout (bind)."

    .line 154
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 157
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/util/diagnosis/DiagnosisTask;->appendTo(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method destory()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 45
    invoke-super {p0}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    return-void
.end method

.method lastBind()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    invoke-virtual {v0}, Lcom/narvii/pushservice/PushService;->getGcmToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "gcm"

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

    .line 124
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 126
    new-instance p1, Lcom/narvii/util/NotificationManagerHelper;

    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Notification is blocked by system."

    .line 127
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method rebindToken()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/diagnosis/PushTask;->rebindTime:J

    .line 103
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask;->push:Lcom/narvii/pushservice/PushService;

    new-instance v1, Lcom/narvii/util/diagnosis/PushTask$3;

    invoke-direct {v1, p0}, Lcom/narvii/util/diagnosis/PushTask$3;-><init>(Lcom/narvii/util/diagnosis/PushTask;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/pushservice/PushService;->updateGcmToken(ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method requestSend()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 87
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/device"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceID"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 89
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bundleID"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clientType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/diagnosis/PushTask;->id:Ljava/lang/String;

    const-string v2, "testPushId"

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 94
    iget-object v2, p0, Lcom/narvii/util/diagnosis/PushTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/PushTask;->requestSend()V

    return-void
.end method
