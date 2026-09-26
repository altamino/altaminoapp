.class public Lcom/narvii/services/PushInviteHelper;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/services/PushInviteHelper;->lambda$onPushPayload$1(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/services/PushInviteHelper;->lambda$onPushPayload$0(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    return-void
.end method

.method private getBaseBundleFromPush(Lcom/narvii/pushservice/PushPayload;)Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 8
    .line 9
    const-string v2, "__communityId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    const-string v1, "id"

    .line 15
    .line 16
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string v1, "invite"

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    .line 27
    const-string v1, "inviteFromUid"

    .line 28
    .line 29
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->uid:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    const-string v1, "inviteNotifyType"

    .line 35
    .line 36
    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    const-string v1, "channel_type"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper;->getChannelType(Lcom/narvii/pushservice/PushPayload;)I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    return-object v0
.end method

.method private isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallCancelMessage()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isTimeoutMessage()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isDeclineMessage()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    :cond_2
    return v0
.end method

.method private isCoHostMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 7
    .line 8
    const/16 v1, 0x43

    .line 9
    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x44

    .line 13
    .line 14
    if-ne p1, v1, :cond_2

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    :cond_2
    return v0
.end method

.method private isPrivateVoiceCall(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->threadType:I

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    :cond_2
    const/4 v0, 0x1

    .line 22
    :cond_3
    return v0
.end method

.method private isRestrictedMode()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0
.end method

.method private isVVRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private static synthetic lambda$onPushPayload$0(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;->onCoHostResult(Z)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$onPushPayload$1(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;->onCoHostResult(Z)V

    .line 5
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Z)V

    return-void
.end method

.method private showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Z)V
    .locals 8

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "_pushNotification"

    .line 2
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/pushservice/PushNotificationService;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

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

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateNotificationBar(Lcom/narvii/pushservice/PushPayload;I)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-ne p2, v0, :cond_3

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->clone()Lcom/narvii/pushservice/PushPayload;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f120cac

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    .line 49
    const v2, 0x7f120cad

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    :cond_1
    iget-object v1, p2, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iput-object v0, v1, Lcom/narvii/pushservice/PushAPS;->message:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->getUri()Landroid/net/Uri;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/narvii/services/PushInviteHelper;->getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p2, p1}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;)V

    .line 71
    :cond_3
    return-void
.end method


# virtual methods
.method public addOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/PushInviteHelper;
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVApplication;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "push"

    .line 3
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->push:Lcom/narvii/pushservice/PushService;

    const-string v0, "callScreen"

    .line 4
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->push:Lcom/narvii/pushservice/PushService;

    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 7
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    const/16 p1, 0x5f32

    iput p1, p0, Lcom/narvii/services/PushInviteHelper;->notificationId:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/PushInviteHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public getChannelType(Lcom/narvii/pushservice/PushPayload;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x4

    .line 11
    .line 12
    if-eq p1, v1, :cond_3

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    return v0

    .line 19
    :cond_1
    const/4 p1, 0x5

    .line 20
    return p1

    .line 21
    :cond_2
    return v1

    .line 22
    :cond_3
    return v2
.end method

.method protected getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v0, "navigator"

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/navigator/Navigator;

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "android.intent.action.VIEW"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    .line 19
    const-string v1, "ndc"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string p1, "__forward"

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-interface {p2, v0}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isVVRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isScreenRoomType()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 21
    .line 22
    const/16 v1, 0x22

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x23

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x27

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isCoHostMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 43
    :goto_1
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper;->onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 10
    .line 11
    const/16 v1, 0x27

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/services/PushInviteHelper$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/services/PushInviteHelper$1;-><init>(Lcom/narvii/services/PushInviteHelper;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    const/16 v2, 0x43

    .line 27
    .line 28
    if-ne v0, v2, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/services/f;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2}, Lcom/narvii/services/f;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    const/16 v2, 0x44

    .line 47
    .line 48
    if-ne v0, v2, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/services/g;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Lcom/narvii/services/g;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 59
    .line 60
    :cond_3
    :goto_0
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    .line 65
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->isPrivateVoiceCall(Lcom/narvii/pushservice/PushPayload;)Z

    .line 76
    move-result v0

    .line 77
    const/4 v2, 0x2

    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x1

    .line 81
    .line 82
    if-eqz v0, :cond_1c

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-eqz v0, :cond_1c

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    move-result-wide v6

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 116
    move-result-wide v8

    .line 117
    .line 118
    cmp-long v0, v6, v8

    .line 119
    .line 120
    if-gez v0, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 124
    move-result-wide v6

    .line 125
    goto :goto_1

    .line 126
    .line 127
    .line 128
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    move-result-wide v6

    .line 130
    .line 131
    :goto_1
    iget-wide v8, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    .line 132
    .line 133
    const-wide/16 v10, 0x0

    .line 134
    .line 135
    cmp-long v0, v8, v10

    .line 136
    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    const-wide/16 v10, 0x3e8

    .line 140
    mul-long/2addr v8, v10

    .line 141
    .line 142
    cmp-long v0, v8, v6

    .line 143
    .line 144
    if-gez v0, :cond_7

    .line 145
    .line 146
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    const-string v0, "expired call push, ignore! (debug)"

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 164
    :cond_6
    return-void

    .line 165
    .line 166
    :cond_7
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 167
    .line 168
    const/16 v6, 0x12

    .line 169
    const/4 v7, 0x3

    .line 170
    .line 171
    const/16 v8, 0x9

    .line 172
    .line 173
    if-ne v0, v6, :cond_d

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallCancelMessage()Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_9

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 185
    move-result v0

    .line 186
    .line 187
    if-ne v0, v8, :cond_1b

    .line 188
    .line 189
    .line 190
    invoke-direct {p0}, Lcom/narvii/services/PushInviteHelper;->isRestrictedMode()Z

    .line 191
    move-result v0

    .line 192
    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, p1, v7}, Lcom/narvii/services/PushInviteHelper;->updateNotificationBar(Lcom/narvii/pushservice/PushPayload;I)V

    .line 197
    .line 198
    :cond_8
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v7}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 202
    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isTimeoutMessage()Z

    .line 207
    move-result v0

    .line 208
    .line 209
    if-eqz v0, :cond_c

    .line 210
    .line 211
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 215
    move-result v0

    .line 216
    .line 217
    const/16 v1, 0x8

    .line 218
    .line 219
    if-eq v0, v8, :cond_a

    .line 220
    .line 221
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 225
    move-result v0

    .line 226
    .line 227
    if-ne v0, v1, :cond_1b

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-direct {p0}, Lcom/narvii/services/PushInviteHelper;->isRestrictedMode()Z

    .line 231
    move-result v0

    .line 232
    .line 233
    if-eqz v0, :cond_b

    .line 234
    .line 235
    .line 236
    invoke-direct {p0, p1, v1}, Lcom/narvii/services/PushInviteHelper;->updateNotificationBar(Lcom/narvii/pushservice/PushPayload;I)V

    .line 237
    .line 238
    :cond_b
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    .line 246
    :cond_c
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isDeclineMessage()Z

    .line 247
    move-result p1

    .line 248
    .line 249
    if-eqz p1, :cond_1b

    .line 250
    .line 251
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 252
    const/4 v0, 0x7

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :cond_d
    if-ne v0, v1, :cond_e

    .line 260
    .line 261
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v7}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 265
    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    .line 269
    :cond_e
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    .line 270
    move-result v0

    .line 271
    .line 272
    if-eqz v0, :cond_1b

    .line 273
    .line 274
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    if-eqz v0, :cond_f

    .line 281
    .line 282
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    move-result v0

    .line 293
    .line 294
    if-nez v0, :cond_f

    .line 295
    return-void

    .line 296
    .line 297
    :cond_f
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 298
    .line 299
    const-string v1, "rtc"

    .line 300
    .line 301
    .line 302
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    move-result-object v0

    .line 304
    .line 305
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 306
    .line 307
    if-eqz v0, :cond_11

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    if-eqz v1, :cond_11

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    move-result v1

    .line 326
    .line 327
    if-eqz v1, :cond_11

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 334
    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 337
    move-result v1

    .line 338
    .line 339
    if-eq v1, v2, :cond_10

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    .line 343
    move-result v1

    .line 344
    .line 345
    if-eqz v1, :cond_11

    .line 346
    :cond_10
    return-void

    .line 347
    .line 348
    :cond_11
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 349
    .line 350
    if-eqz v1, :cond_12

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 354
    move-result v1

    .line 355
    goto :goto_2

    .line 356
    :cond_12
    move v1, v5

    .line 357
    .line 358
    :goto_2
    new-instance v2, Landroid/content/Intent;

    .line 359
    .line 360
    iget-object v6, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 361
    .line 362
    .line 363
    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 364
    move-result-object v6

    .line 365
    .line 366
    const-class v7, Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    .line 367
    .line 368
    .line 369
    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .line 371
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    .line 372
    .line 373
    .line 374
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 375
    move-result-object v6

    .line 376
    .line 377
    const-string v7, "key_caller_info"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    .line 382
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->community:Lcom/narvii/model/Community;

    .line 383
    .line 384
    .line 385
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    move-result-object v6

    .line 387
    .line 388
    const-string v7, "key_community_info"

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    .line 393
    const-string v6, "key_thread_id"

    .line 394
    .line 395
    iget-object v7, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    .line 400
    const-string v6, "key_community_id"

    .line 401
    .line 402
    iget v7, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    .line 407
    const-string v6, "key_pay_load"

    .line 408
    .line 409
    .line 410
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 411
    move-result-object v7

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    .line 416
    .line 417
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->getBaseBundleFromPush(Lcom/narvii/pushservice/PushPayload;)Landroid/os/Bundle;

    .line 418
    move-result-object v6

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    .line 423
    if-eqz v1, :cond_14

    .line 424
    .line 425
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 429
    move-result v0

    .line 430
    xor-int/2addr v0, v5

    .line 431
    .line 432
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Lcom/narvii/chat/call/CallScreenService;->setMissedIntent(Landroid/content/Intent;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {p0, p1, v2, v5}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Z)V

    .line 439
    .line 440
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 441
    .line 442
    .line 443
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 444
    move-result-object v1

    .line 445
    .line 446
    const-string v2, "power"

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    move-result-object v1

    .line 451
    .line 452
    check-cast v1, Landroid/os/PowerManager;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 456
    move-result v2

    .line 457
    .line 458
    if-nez v2, :cond_13

    .line 459
    .line 460
    :try_start_0
    const-string v2, "amino:CallScreen"

    .line 461
    .line 462
    .line 463
    const v3, 0x3000001a

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 467
    move-result-object v1

    .line 468
    .line 469
    const-wide/16 v2, 0x1388

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .line 474
    :catch_0
    :cond_13
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 475
    .line 476
    iget-wide v2, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/call/CallScreenService;->setCallExpireTime(J)V

    .line 480
    .line 481
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 482
    .line 483
    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 484
    .line 485
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v2, p1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 489
    .line 490
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1, v8}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 494
    .line 495
    if-nez v0, :cond_1b

    .line 496
    .line 497
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->onCallComeIn()V

    .line 501
    .line 502
    goto/16 :goto_4

    .line 503
    .line 504
    :cond_14
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v3}, Lcom/narvii/chat/call/CallScreenService;->setMissedIntent(Landroid/content/Intent;)V

    .line 508
    .line 509
    const/high16 v1, 0x10000000

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 516
    move-result-object v1

    .line 517
    .line 518
    iget-object v7, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 519
    .line 520
    .line 521
    const-string/jumbo v9, "topActivity"

    .line 522
    .line 523
    .line 524
    invoke-interface {v7, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    move-result-object v7

    .line 526
    .line 527
    check-cast v7, Lcom/narvii/util/services/TopActivityService;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    .line 531
    move-result-object v7

    .line 532
    .line 533
    .line 534
    const-string/jumbo v9, "threadId"

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    instance-of v6, v7, Lcom/narvii/app/NVActivity;

    .line 540
    .line 541
    if-eqz v6, :cond_15

    .line 542
    .line 543
    check-cast v7, Lcom/narvii/app/NVActivity;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 547
    move-result v6

    .line 548
    .line 549
    if-nez v6, :cond_15

    .line 550
    .line 551
    instance-of v6, v7, Lcom/narvii/chat/ChatActivity;

    .line 552
    .line 553
    if-eqz v6, :cond_15

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 557
    move-result-object v6

    .line 558
    .line 559
    if-eqz v6, :cond_15

    .line 560
    move-object v3, v7

    .line 561
    .line 562
    :cond_15
    if-eqz v1, :cond_18

    .line 563
    .line 564
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 565
    .line 566
    iget-object v6, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 570
    move-result v1

    .line 571
    .line 572
    if-nez v1, :cond_1a

    .line 573
    .line 574
    iget v1, v0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 575
    .line 576
    if-eq v1, v5, :cond_17

    .line 577
    .line 578
    instance-of v0, v3, Lcom/narvii/chat/ChatActivity;

    .line 579
    .line 580
    if-eqz v0, :cond_16

    .line 581
    .line 582
    check-cast v3, Lcom/narvii/chat/ChatActivity;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v5}, Lcom/narvii/chat/ChatActivity;->setNoNeedToAutoJoin(Z)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v3, v4}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 589
    .line 590
    :cond_16
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 591
    .line 592
    .line 593
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 594
    move-result-object v0

    .line 595
    .line 596
    .line 597
    invoke-static {v0, v2}, Lcom/narvii/services/PushInviteHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 598
    goto :goto_3

    .line 599
    .line 600
    .line 601
    :cond_17
    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 602
    move-result-object v1

    .line 603
    .line 604
    check-cast v1, Landroid/content/Intent;

    .line 605
    .line 606
    const-string v2, "expireTime"

    .line 607
    .line 608
    iget-wide v3, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v5, v1}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity(ZLandroid/content/Intent;)V

    .line 615
    goto :goto_3

    .line 616
    .line 617
    :cond_18
    instance-of v0, v3, Lcom/narvii/chat/ChatActivity;

    .line 618
    .line 619
    if-eqz v0, :cond_19

    .line 620
    .line 621
    check-cast v3, Lcom/narvii/chat/ChatActivity;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3, v5}, Lcom/narvii/chat/ChatActivity;->setNoNeedToAutoJoin(Z)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3, v4}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 628
    .line 629
    :cond_19
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 630
    .line 631
    .line 632
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 633
    move-result-object v0

    .line 634
    .line 635
    .line 636
    invoke-static {v0, v2}, Lcom/narvii/services/PushInviteHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 637
    .line 638
    :cond_1a
    :goto_3
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 639
    .line 640
    iget-wide v1, p1, Lcom/narvii/pushservice/PushPayload;->expireTime:J

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/call/CallScreenService;->setCallExpireTime(J)V

    .line 644
    .line 645
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 646
    .line 647
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 648
    .line 649
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 653
    .line 654
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 655
    .line 656
    .line 657
    invoke-virtual {p1, v8}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 658
    :cond_1b
    :goto_4
    return-void

    .line 659
    .line 660
    .line 661
    :cond_1c
    invoke-direct {p0, p1}, Lcom/narvii/services/PushInviteHelper;->getBaseBundleFromPush(Lcom/narvii/pushservice/PushPayload;)Landroid/os/Bundle;

    .line 662
    move-result-object v0

    .line 663
    .line 664
    new-instance v1, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 665
    .line 666
    iget-object v6, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 667
    .line 668
    iget v7, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 669
    .line 670
    .line 671
    invoke-direct {v1, v6, v7}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, v0, v4}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    .line 675
    move-result-object v0

    .line 676
    .line 677
    const-string v1, "_pushIntent"

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 681
    .line 682
    const-string v1, "_pushClearType"

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    .line 687
    const-string v1, "_pushClearCid"

    .line 688
    .line 689
    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    .line 694
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    .line 695
    .line 696
    if-eqz v1, :cond_1d

    .line 697
    .line 698
    const-string v2, "_pushTrackId"

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    .line 703
    :cond_1d
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    .line 704
    .line 705
    if-eqz v1, :cond_1e

    .line 706
    .line 707
    const-string v2, "_pushUrl"

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    .line 712
    :cond_1e
    const-string v1, "Source"

    .line 713
    .line 714
    const-string v2, "Push"

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    .line 719
    new-instance v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    .line 720
    .line 721
    .line 722
    invoke-direct {v1, p1}, Lcom/narvii/pushservice/PushNotificationService$PushFrom;-><init>(Lcom/narvii/pushservice/PushPayload;)V

    .line 723
    .line 724
    .line 725
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 726
    move-result-object v1

    .line 727
    .line 728
    const-string v2, "_pushFrom"

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    .line 733
    new-instance v1, Lcom/narvii/util/NotificationManagerHelper;

    .line 734
    .line 735
    iget-object v2, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 736
    .line 737
    .line 738
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 739
    move-result-object v2

    .line 740
    .line 741
    .line 742
    invoke-direct {v1, v2}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 746
    move-result v1

    .line 747
    .line 748
    if-eqz v1, :cond_1f

    .line 749
    .line 750
    .line 751
    invoke-direct {p0, p1, v0}, Lcom/narvii/services/PushInviteHelper;->showNotificationBar(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;)V

    .line 752
    goto :goto_6

    .line 753
    .line 754
    :cond_1f
    iget-object v1, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    .line 755
    .line 756
    if-nez v1, :cond_20

    .line 757
    move-object v1, v3

    .line 758
    goto :goto_5

    .line 759
    .line 760
    .line 761
    :cond_20
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 762
    move-result-object v1

    .line 763
    .line 764
    check-cast v1, Landroid/app/Activity;

    .line 765
    .line 766
    :goto_5
    if-nez v1, :cond_21

    .line 767
    .line 768
    .line 769
    const-string/jumbo p1, "unable to popup push invite, no active activity"

    .line 770
    .line 771
    .line 772
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 773
    goto :goto_6

    .line 774
    .line 775
    :cond_21
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    .line 776
    .line 777
    .line 778
    invoke-direct {v2, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->title()Ljava/lang/String;

    .line 782
    move-result-object v5

    .line 783
    .line 784
    .line 785
    invoke-virtual {v2, v5}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 786
    .line 787
    iget-object v5, p0, Lcom/narvii/services/PushInviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 788
    .line 789
    .line 790
    invoke-virtual {p1, v5}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 791
    move-result-object p1

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 795
    .line 796
    new-instance p1, Lcom/narvii/services/PushInviteHelper$2;

    .line 797
    .line 798
    .line 799
    invoke-direct {p1, p0, v1, v0}, Lcom/narvii/services/PushInviteHelper$2;-><init>(Lcom/narvii/services/PushInviteHelper;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 800
    .line 801
    .line 802
    const v0, 0x7f120b53

    .line 803
    const/4 v1, 0x4

    .line 804
    .line 805
    .line 806
    invoke-virtual {v2, v0, v1, p1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 807
    .line 808
    .line 809
    const p1, 0x7f1201e2

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2, p1, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 816
    :goto_6
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 1

    const/4 p2, 0x1

    iget v0, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    iget-object p2, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    :goto_0
    if-ne p2, p1, :cond_1

    iput-object v0, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public removeOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 1

    const/4 p2, 0x2

    iget v0, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    .line 3
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/services/PushInviteHelper;->activeActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    const/4 p1, 0x1

    iget p2, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/services/PushInviteHelper;->status:I

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushInviteHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/PushInviteHelper;)V

    return-void
.end method
