.class public Lcom/narvii/services/PushInviteHelper;
.super Ljava/lang/Object;
.source "PushInviteHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/PushInviteHelper$DismissBroadCastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/PushInviteHelper;",
        ">;",
        "Lcom/narvii/pushservice/PushService$PushListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_NOTIFY_ID:I = 0x5f32

.field public static final NOTIFICATION_TYPE_INVITE_PRESENTER_VV_CHAT:I = 0x27


# instance fields
.field activeActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field context:Lcom/narvii/app/NVContext;

.field dispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;",
            ">;"
        }
    .end annotation
.end field

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private notificationId:I

.field notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

.field push:Lcom/narvii/pushservice/PushService;

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method private getBaseBundleFromPush(Lcom/narvii/pushservice/PushPayload;)Landroid/os/Bundle;
    .locals 3

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "invite"

    const/4 v2, 0x1

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->uid:Ljava/lang/String;

    const-string v2, "inviteFromUid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const-string v2, "inviteNotifyType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper;->getChannelType(Lcom/narvii/pushservice/PushPayload;)I

    move-result p1

    const-string v1, "channel_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallCancelMessage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isTimeoutMessage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isDeclineMessage()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isCoHostMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 416
    :cond_0
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x999

    if-eq p1, v1, :cond_1

    const/16 v1, -0x6667

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isPrivateVoiceCall(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->threadType:I

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private isRestrictedMode()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private isVVRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 402
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$onPushPayload$0(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-interface {p0, v0}, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;->onCoHostResult(Z)V

    return-void
.end method

.method static synthetic lambda$onPushPayload$1(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-interface {p0, v0}, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;->onCoHostResult(Z)V

    return-void
.end method

.method private showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Z)V

    return-void
.end method

.method private showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Z)V
    .locals 8

    .line 379
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "_pushNotification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/pushservice/PushNotificationService;

    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x5f32

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x0

    const-string v6, "null"

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    .line 381
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateNotificationBar(Lcom/narvii/pushservice/PushPayload;I)V
    .locals 5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->clone()Lcom/narvii/pushservice/PushPayload;

    move-result-object p2

    .line 325
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0ba8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0ba9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_1
    iget-object v1, p2, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    if-eqz v1, :cond_2

    .line 330
    iput-object v0, v1, Lcom/narvii/pushservice/PushAPS;->message:Ljava/lang/String;

    .line 332
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/narvii/services/PushInviteHelper;->getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;

    move-result-object p1

    .line 333
    invoke-direct {p0, p2, p1}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/PushInviteHelper;
    .locals 2

    .line 74
    instance-of v0, p1, Lcom/narvii/app/NVApplication;

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "push"

    .line 76
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->push:Lcom/narvii/pushservice/PushService;

    const-string v0, "callScreen"

    .line 77
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 78
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->push:Lcom/narvii/pushservice/PushService;

    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 79
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 80
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    const/16 p1, 0x5f32

    .line 81
    iput p1, p0, Lcom/narvii/services/PushInviteHelper;->notificationId:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/PushInviteHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public getChannelType(Lcom/narvii/pushservice/PushPayload;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    move-result p1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x5

    return p1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method protected getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;
    .locals 2

    .line 420
    iget-object p2, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "navigator"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/navigator/Navigator;

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 422
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ndc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v1, "__forward"

    .line 423
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    :cond_0
    invoke-interface {p2, v0}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 393
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isVVRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isScreenRoomType()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    .line 397
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isCoHostMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 12

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper;->onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/services/PushInviteHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/PushInviteHelper$1;-><init>(Lcom/narvii/services/PushInviteHelper;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void

    :cond_1
    const/16 v2, 0x43

    if-ne v0, v2, :cond_2

    .line 142
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v2, Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;->INSTANCE:Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;

    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 144
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x44

    if-ne v0, v2, :cond_3

    .line 146
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v2, Lcom/narvii/services/-$$Lambda$PushInviteHelper$zjpSBu-TpunBHKktr4KrXsrV12I;->INSTANCE:Lcom/narvii/services/-$$Lambda$PushInviteHelper$zjpSBu-TpunBHKktr4KrXsrV12I;

    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 149
    :cond_3
    :goto_0
    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v0

    .line 150
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    if-eq v0, v2, :cond_4

    return-void

    .line 154
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isPrivateVoiceCall(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 155
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 156
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 157
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    .line 158
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v6

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 159
    :goto_1
    iget-wide v8, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    cmp-long v0, v8, v6

    if-gez v0, :cond_8

    .line 160
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 161
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "expired call push, ignore! (debug)"

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_7
    return-void

    .line 166
    :cond_8
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v6, 0x12

    const/4 v7, 0x3

    const/16 v8, 0x9

    if-ne v0, v6, :cond_e

    .line 167
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallCancelMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    if-ne v0, v8, :cond_1c

    .line 169
    invoke-direct {p0}, Lcom/narvii/services/PushInviteHelper;->isRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    invoke-direct {p0, p1, v7}, Lcom/narvii/services/PushInviteHelper;->updateNotificationBar(Lcom/narvii/pushservice/PushPayload;I)V

    .line 172
    :cond_9
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1, v7}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    goto/16 :goto_5

    .line 174
    :cond_a
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isTimeoutMessage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 175
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v8, :cond_b

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 176
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 177
    :cond_b
    invoke-direct {p0}, Lcom/narvii/services/PushInviteHelper;->isRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    invoke-direct {p0, p1, v1}, Lcom/narvii/services/PushInviteHelper;->updateNotificationBar(Lcom/narvii/pushservice/PushPayload;I)V

    .line 180
    :cond_c
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    goto/16 :goto_5

    .line 182
    :cond_d
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isDeclineMessage()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 183
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    goto/16 :goto_5

    :cond_e
    if-ne v0, v1, :cond_f

    .line 186
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1, v7}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    goto/16 :goto_5

    .line 187
    :cond_f
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 188
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 189
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 193
    :cond_10
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_12

    .line 196
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 197
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 198
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v2, :cond_11

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    return-void

    .line 202
    :cond_12
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_13

    .line 203
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    goto :goto_2

    :cond_13
    const/4 v1, 0x1

    .line 205
    :goto_2
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_caller_info"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->community:Lcom/narvii/model/Community;

    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_community_info"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    const-string v7, "key_thread_id"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget v6, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    const-string v7, "key_community_id"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_pay_load"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->getBaseBundleFromPush(Lcom/narvii/pushservice/PushPayload;)Landroid/os/Bundle;

    move-result-object v6

    .line 212
    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v1, :cond_15

    .line 214
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v0

    xor-int/2addr v0, v5

    .line 215
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v1, v2}, Lcom/narvii/chat/call/CallScreenService;->setMissedIntent(Landroid/content/Intent;)V

    .line 216
    invoke-direct {p0, p1, v2, v5}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Z)V

    .line 217
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 218
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_14

    const v2, 0x3000001a

    :try_start_0
    const-string v3, "CallScreen"

    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 227
    :cond_14
    :goto_3
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    iget-wide v2, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/call/CallScreenService;->setCallExpireTime(J)V

    .line 228
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1, v8}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    if-nez v0, :cond_1c

    .line 231
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->onCallComeIn()V

    goto/16 :goto_5

    .line 234
    :cond_15
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v1, v3}, Lcom/narvii/chat/call/CallScreenService;->setMissedIntent(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    .line 235
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    .line 237
    iget-object v7, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v9, "topActivity"

    invoke-interface {v7, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/util/services/TopActivityService;

    .line 238
    invoke-virtual {v7}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v9, "threadId"

    .line 239
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    instance-of v6, v7, Lcom/narvii/app/NVActivity;

    if-eqz v6, :cond_16

    .line 242
    move-object v6, v7

    check-cast v6, Lcom/narvii/app/NVActivity;

    .line 243
    invoke-virtual {v6}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v7

    if-nez v7, :cond_16

    .line 244
    instance-of v7, v6, Lcom/narvii/chat/ChatActivity;

    if-eqz v7, :cond_16

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_16

    move-object v3, v6

    :cond_16
    if-eqz v1, :cond_19

    .line 250
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 252
    iget v1, v0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    if-eq v1, v5, :cond_18

    .line 253
    instance-of v0, v3, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_17

    .line 254
    check-cast v3, Lcom/narvii/chat/ChatActivity;

    invoke-virtual {v3, v5}, Lcom/narvii/chat/ChatActivity;->setNoNeedToAutoJoin(Z)V

    .line 255
    invoke-virtual {v3, v4}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 257
    :cond_17
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 259
    :cond_18
    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 260
    iget-wide v2, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    const-string v4, "expireTime"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    invoke-virtual {v0, v5, v1}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity(ZLandroid/content/Intent;)V

    goto :goto_4

    .line 265
    :cond_19
    instance-of v0, v3, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_1a

    .line 266
    check-cast v3, Lcom/narvii/chat/ChatActivity;

    invoke-virtual {v3, v5}, Lcom/narvii/chat/ChatActivity;->setNoNeedToAutoJoin(Z)V

    .line 267
    invoke-virtual {v3, v4}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 269
    :cond_1a
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 271
    :cond_1b
    :goto_4
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    iget-wide v1, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/call/CallScreenService;->setCallExpireTime(J)V

    .line 272
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1, v8}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    :cond_1c
    :goto_5
    return-void

    .line 279
    :cond_1d
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->getBaseBundleFromPush(Lcom/narvii/pushservice/PushPayload;)Landroid/os/Bundle;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v6, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    iget v7, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-direct {v1, v6, v7}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 282
    invoke-virtual {v1, v0, v4}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushIntent"

    .line 285
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "_pushClearType"

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    const-string v2, "_pushClearCid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v2, "_pushTrackId"

    .line 289
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_1e
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    if-eqz v1, :cond_1f

    const-string v2, "_pushUrl"

    .line 292
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1f
    const-string v1, "Source"

    const-string v2, "Push"

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    new-instance v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    invoke-direct {v1, p1}, Lcom/narvii/pushservice/PushNotificationService$PushFrom;-><init>(Lcom/narvii/pushservice/PushPayload;)V

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_pushFrom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    new-instance v1, Lcom/narvii/util/NotificationManagerHelper;

    iget-object v2, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;)V

    goto :goto_7

    .line 302
    :cond_20
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_21

    move-object v1, v3

    goto :goto_6

    :cond_21
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_6
    if-nez v1, :cond_22

    const-string/jumbo p1, "unable to popup push invite, no active activity"

    .line 304
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_7

    .line 306
    :cond_22
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v2, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v5, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p1, v5}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0aa0

    const/4 v5, 0x4

    .line 309
    new-instance v6, Lcom/narvii/services/PushInviteHelper$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/narvii/services/PushInviteHelper$2;-><init>(Lcom/narvii/services/PushInviteHelper;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, p1, v5, v6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f0193

    .line 315
    invoke-virtual {v2, p1, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 316
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    :goto_7
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 1

    .line 109
    iget p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    .line 110
    iget-object p2, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    :goto_0
    if-ne p2, p1, :cond_1

    .line 112
    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public removeOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 1

    .line 101
    iget p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    const/4 v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    .line 102
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 103
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    .line 96
    iget p1, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method
