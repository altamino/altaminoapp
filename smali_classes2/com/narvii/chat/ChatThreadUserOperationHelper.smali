.class public Lcom/narvii/chat/ChatThreadUserOperationHelper;
.super Ljava/lang/Object;
.source "ChatThreadUserOperationHelper.java"


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

    .line 53
    :cond_0
    iget-object v1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    iget v2, p2, Lcom/narvii/model/ChatThread;->type:I

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_2
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 62
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "rtc"

    .line 63
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 64
    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadType:I

    .line 66
    iput-object p4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->ownerId:Ljava/lang/String;

    return-void
.end method

.method private showOrganizerLeaveVVChatConfirm(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/util/Callback;)V
    .locals 2

    .line 113
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0f13

    .line 115
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 116
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper$2;

    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$2;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;)V

    const v1, 0x7f0f0c29

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 124
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$3;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;)V

    const p2, 0x7f0f119f

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 132
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

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

    .line 225
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v1, Lcom/narvii/chat/-$$Lambda$ChatThreadUserOperationHelper$Iz5KS0i66_LuX3Hb1j1kiw4iNl8;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/chat/-$$Lambda$ChatThreadUserOperationHelper$Iz5KS0i66_LuX3Hb1j1kiw4iNl8;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 242
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 244
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    const-string/jumbo v1, "uid"

    .line 245
    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 246
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/vvchat-presenter/invite"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 248
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget p2, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 249
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 251
    iget-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 252
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public kickUserFromChat(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p0, p1, v3, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatThreadConfirmDialog(Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {p0, p1, v2, v2, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$inviteAsSpeaker$0$ChatThreadUserOperationHelper(Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 231
    sget-object p3, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    invoke-virtual {p3}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p3, v0, p2, v1, v2}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->addInviteAsSpeakerLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p3, 0x1

    .line 232
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 234
    new-instance p1, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;

    invoke-direct {p1}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;-><init>()V

    .line 235
    invoke-virtual {p1, p2}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->setUserId(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1, p3}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->setInvited(Z)V

    .line 237
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string p3, "new"

    invoke-direct {p2, p3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 238
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    const-string p3, "notification"

    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 239
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method

.method public sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V
    .locals 9

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v1}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 212
    iget-object v4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->threadId:Ljava/lang/String;

    iget-object v7, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->chatThread:Lcom/narvii/model/ChatThread;

    new-instance v8, Lcom/narvii/chat/ChatThreadUserOperationHelper$8;

    invoke-direct {v8, p0, v0, p4}, Lcom/narvii/chat/ChatThreadUserOperationHelper$8;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/util/ChatRequestHelper;->sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 221
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

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

    .line 71
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    iget-object v2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->getCurrentChatType(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v7

    .line 74
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v9, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 102
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p1, "/chat/thread/"

    if-eqz v1, :cond_0

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/member/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 106
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    const-string p3, "api"

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 108
    iget-object p3, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

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

    .line 162
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01ad

    .line 163
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f0902d0

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const p2, 0x7f0f0ecc

    .line 166
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p2, 0x7f0f0ecd

    .line 168
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0f0ed0

    .line 170
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const p2, 0x7f0908c2

    .line 173
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    const v1, 0x7f0908c3

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 175
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 177
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 179
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const p1, 0x7f0908c1

    .line 181
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;

    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090770

    .line 187
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/ChatThreadUserOperationHelper$6;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/ChatThreadUserOperationHelper$6;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090d15

    .line 193
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

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

    .line 151
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;-><init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v0}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V

    return-void
.end method
