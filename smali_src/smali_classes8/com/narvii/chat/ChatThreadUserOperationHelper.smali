.class public Lcom/narvii/chat/ChatThreadUserOperationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field chatThread:Lcom/narvii/model/ChatThread;

.field context:Lcom/narvii/app/NVContext;

.field private ownerId:Ljava/lang/String;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private threadId:Ljava/lang/String;

.field private threadType:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 2
    :cond_1
    iget v2, p2, Lcom/narvii/model/ChatThread;->type:I

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_2
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 6
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "rtc"

    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadType:I

    iput-object p4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->ownerId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->lambda$inviteAsSpeaker$0(Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method private synthetic lambda$inviteAsSpeaker$0(Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object p3, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0, p2, v1, v2}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->addInviteAsSpeakerLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    .line 23
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->setUserId(Ljava/lang/String;)V

    .line 35
    const/4 p2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->setInvited(Z)V

    .line 39
    .line 40
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 41
    .line 42
    const-string p3, "new"

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    const-string p3, "notification"

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 59
    :cond_0
    return-void
.end method

.method private showOrganizerLeaveVVChatConfirm(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/util/Callback;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f121028

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$2;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f120d57

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper$3;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$3;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;)V

    .line 34
    .line 35
    .line 36
    const p2, 0x7f1212a7

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 43
    return-void
.end method


# virtual methods
.method public inviteAsSpeaker(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/chat/t;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/chat/t;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    const-string v1, "uid"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v1, "/chat/thread/"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "/vvchat-presenter/invite"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iget-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 80
    .line 81
    iget p2, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    iget-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 92
    .line 93
    const-string v1, "api"

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public kickUserFromChat(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
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
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadType:I

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatThreadConfirmDialog(Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    .line 25
    :goto_1
    return-void
.end method

.method public sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v1}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    iget-object v4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v7, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 38
    .line 39
    new-instance v8, Lcom/narvii/chat/ChatThreadUserOperationHelper$8;

    .line 40
    .line 41
    .line 42
    invoke-direct {v8, p0, v0, p4}, Lcom/narvii/chat/ChatThreadUserOperationHelper$8;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    .line 43
    move-object v3, p1

    .line 44
    move v5, p2

    .line 45
    move v6, p3

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/util/ChatRequestHelper;->sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public sendLeaveThreadRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->getCurrentChatType(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    .line 34
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    new-instance v9, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;

    .line 41
    move-object v3, v9

    .line 42
    move-object v4, p0

    .line 43
    move-object v5, p3

    .line 44
    move-object v6, p1

    .line 45
    move-object v8, p2

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    iput-object v9, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 54
    .line 55
    const-string p1, "/chat/thread/"

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, "/member/"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 119
    .line 120
    const-string p3, "api"

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 127
    .line 128
    iget-object p3, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 132
    return-void
.end method

.method public showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d01ce

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a039d

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    const p2, 0x7f120fe5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    if-eqz p2, :cond_1

    .line 38
    .line 39
    .line 40
    const p2, 0x7f120fe6

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    const p2, 0x7f120fe9

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    const p2, 0x7f0a0b81

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Landroid/widget/CheckBox;

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a0b82

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    const/16 p1, 0x8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 p1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    const p1, 0x7f0a0b80

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    new-instance v1, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Landroid/widget/CheckBox;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    const p1, 0x7f0a0a0c

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    new-instance v1, Lcom/narvii/chat/ChatThreadUserOperationHelper$6;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/ChatThreadUserOperationHelper$6;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    const p1, 0x7f0a1043

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    new-instance v1, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, p0, v0, p3, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/widget/CheckBox;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 131
    return-void
.end method

.method public showRemoveFromChatThreadConfirmDialog(Ljava/lang/String;ZLcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p1, v0}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method
