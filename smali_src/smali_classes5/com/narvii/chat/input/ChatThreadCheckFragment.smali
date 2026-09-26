.class public Lcom/narvii/chat/input/ChatThreadCheckFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;,
        Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;
    }
.end annotation


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

.field private messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkEligible()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public static getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "vvchatJoinCheck"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 42
    .line 43
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    .line 51
    iput-object p1, v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 52
    .line 53
    iput-object p2, v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    .line 54
    return-object v0
.end method

.method private getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method private synthetic lambda$requestToJoinChannel$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannelWithSystemPermissionCheck()V

    .line 4
    return-void
.end method

.method private synthetic lambda$requestToSpeak$1(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinStart()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 20
    const/4 v0, 0x3

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    iget v0, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/model/ChatThread;)V

    .line 36
    const/4 p2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget p1, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendWaitListJoinRequest(I)V

    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestToSpeak$2(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/chat/input/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/input/g;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkThreadAvailable(ZLcom/narvii/util/Callback;)Z

    .line 10
    return-void
.end method

.method private synthetic lambda$sendWaitListJoinRequest$3(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinEnd()V

    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$requestToSpeak$2(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$requestToSpeak$1(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$sendWaitListJoinRequest$3(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/chat/input/ChatThreadCheckFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$requestToJoinChannel$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    return-object p0
.end method

.method private requestToBePresenter()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinStart()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 16
    const/4 v1, 0x3

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x4

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    .line 26
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    .line 32
    .line 33
    xor-int/lit8 v3, v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V

    .line 37
    return-void
.end method

.method private requestToJoinChannelWithSystemPermissionCheck()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    const-string v2, "android.permission.CAMERA"

    .line 13
    .line 14
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v4, v5}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-ne v1, v4, :cond_3

    .line 37
    .line 38
    sget-object v1, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    filled-new-array {v3}, [Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4, v5}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    .line 64
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_2
    filled-new-array {v3}, [Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    const/16 v1, 0x130

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 92
    goto :goto_3

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToBePresenter()V

    .line 96
    :goto_3
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    return-object p0
.end method

.method private sendWaitListJoinRequest(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Lcom/narvii/chat/input/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/i;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->waitListJoin(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 15
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannelWithSystemPermissionCheck()V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/input/ChatThreadCheckFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendWaitListJoinRequest(I)V

    return-void
.end method


# virtual methods
.method public checkChannelPermission()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x3

    .line 43
    .line 44
    if-ne v0, v2, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    :cond_3
    :goto_0
    return v1
.end method

.method public checkChannelUserLimit()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/narvii/chat/rtc/RtcService;->getPresenterCountInChannel(Lcom/narvii/chat/signalling/SignallingChannel;)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x7

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :cond_1
    :goto_0
    return v2
.end method

.method public checkCommunityAvailability(ILcom/narvii/util/Callback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;ILcom/narvii/util/Callback;)V

    .line 20
    const/4 p1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 24
    move-result p2

    .line 25
    xor-int/2addr p1, p2

    .line 26
    return p1
.end method

.method public checkThreadAvailable(ZLcom/narvii/util/Callback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :cond_0
    iget v2, v0, Lcom/narvii/model/ChatThread;->status:I

    .line 11
    .line 12
    const/16 v3, 0x9

    .line 13
    .line 14
    if-eq v2, v3, :cond_5

    .line 15
    .line 16
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v2, v2, Lcom/narvii/model/User;->status:I

    .line 21
    .line 22
    if-eq v2, v3, :cond_5

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->condition:I

    .line 30
    const/4 v3, 0x2

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    const p2, 0x7f120223

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 54
    const/4 v2, 0x3

    .line 55
    .line 56
    if-ne v0, v2, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    const p2, 0x7f120276

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v2, 0x1

    .line 73
    .line 74
    if-eq v0, v2, :cond_4

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 86
    return v2

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    const p2, 0x7f120230

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 101
    :cond_6
    :goto_1
    return v1
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    instance-of v0, v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    .line 57
    :cond_2
    const-string v0, "thread"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 70
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThreadId()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    instance-of v0, v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    .line 57
    :cond_2
    const-string v0, "threadId"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "rtc"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    const-string p1, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->account:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 35
    .line 36
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 42
    .line 43
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 60
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    .line 4
    .line 5
    const/16 v0, 0x130

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToBePresenter()V

    .line 11
    :cond_0
    return-void
.end method

.method public requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkEligible()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v1, Lcom/narvii/chat/input/ChatThreadCheckFragment$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$1;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkChannelPermission()Z

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f1207d2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f1207e7

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 62
    return-void

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkChannelUserLimit()Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const v0, 0x7f12021a

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 84
    .line 85
    .line 86
    const v0, 0x104000a

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 106
    const/4 v1, 0x2

    .line 107
    .line 108
    if-eq v0, v1, :cond_5

    .line 109
    .line 110
    new-instance p1, Lcom/narvii/chat/input/h;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/h;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    .line 114
    const/4 v0, 0x1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkThreadAvailable(ZLcom/narvii/util/Callback;)Z

    .line 118
    return-void

    .line 119
    .line 120
    :cond_5
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 124
    .line 125
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;

    .line 132
    .line 133
    .line 134
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showStrangerHintDialog(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 138
    return-void
.end method

.method public requestToJoinOrSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x3

    .line 29
    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const v0, 0x7f1207d2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f1207e7

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x2

    .line 62
    .line 63
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 71
    :goto_0
    return-void
.end method

.method public requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkEligible()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v1, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    return-void

    .line 31
    .line 32
    :cond_2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f12016b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 46
    .line 47
    .line 48
    const v1, 0x7f1201e2

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/chat/input/f;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/input/f;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f120169

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 67
    return-void
.end method

.method public sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v3

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    iget v0, v3, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v5, Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-direct {v5, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 24
    .line 25
    const-string v0, "account"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v4, "/chat/thread/"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "/member/"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 84
    move-result-object v6

    .line 85
    .line 86
    const-string v0, "api"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    move-object v7, v0

    .line 92
    .line 93
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 94
    .line 95
    new-instance v8, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;

    .line 96
    .line 97
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 98
    move-object v0, v8

    .line 99
    move-object v1, p0

    .line 100
    move-object v4, p1

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Ljava/lang/Class;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v6, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 107
    :cond_0
    return-void
.end method
