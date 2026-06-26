.class public Lcom/narvii/chat/input/ChatThreadCheckFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatThreadCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;,
        Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;
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

    .line 45
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannelWithSystemPermissionCheck()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/input/ChatThreadCheckFragment;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendWaitListJoinRequest(I)V

    return-void
.end method

.method private checkEligible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;
    .locals 3

    .line 59
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "vvchatJoinCheck"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-direct {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;-><init>()V

    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 66
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 68
    invoke-virtual {v0, p0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    iput-object p1, v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    .line 70
    iput-object p2, v0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    return-object v0
.end method

.method private getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    return-object v0
.end method

.method private requestToBePresenter()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinStart()V

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 432
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V

    return-void
.end method

.method private requestToJoinChannelWithSystemPermissionCheck()V
    .locals 8

    .line 350
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 353
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    move-result v1

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x2

    const-string v4, "android.permission.RECORD_AUDIO"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/String;

    aput-object v4, v7, v5

    aput-object v2, v7, v6

    invoke-static {v1, v7}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 355
    :cond_0
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-ne v1, v6, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/String;

    aput-object v4, v7, v5

    invoke-static {v1, v7}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x5

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 361
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToBePresenter()V

    goto :goto_2

    .line 363
    :cond_2
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/String;

    aput-object v4, v0, v5

    aput-object v2, v0, v6

    goto :goto_1

    :cond_3
    new-array v0, v6, [Ljava/lang/String;

    aput-object v4, v0, v5

    .line 366
    :goto_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const/16 v1, 0x130

    .line 369
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :goto_2
    return-void
.end method

.method private sendWaitListJoinRequest(I)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$EobZqrs9tmVn7t6rfjNCqFCQAg0;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$EobZqrs9tmVn7t6rfjNCqFCQAg0;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->waitListJoin(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public checkChannelPermission()Z
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public checkChannelUserLimit()Z
    .locals 3

    .line 345
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 346
    iget v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2, v0}, Lcom/narvii/chat/rtc/RtcService;->getPresenterCountInChannel(Lcom/narvii/chat/signalling/SignallingChannel;)I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

    const-string v0, "config"

    .line 268
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 269
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;ILcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p2

    xor-int/2addr p1, p2

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

    .line 311
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    iget v2, v0, Lcom/narvii/model/ChatThread;->status:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/narvii/model/User;->status:I

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v2, v3, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f01d4

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 318
    :cond_2
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0233

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eqz p1, :cond_6

    .line 323
    invoke-virtual {p0, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V

    goto :goto_1

    .line 326
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return v2

    .line 315
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f01e1

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_6
    :goto_1
    return v1
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "thread"

    .line 106
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatThreadData:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;->getThreadId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "threadId"

    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$null$1$ChatThreadCheckFragment(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 4

    .line 229
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 230
    iget-object p2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    if-eqz p2, :cond_0

    .line 231
    invoke-interface {p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinStart()V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    .line 234
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 235
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v0, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;

    invoke-direct {v3, p0, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 242
    :cond_1
    iget p1, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendWaitListJoinRequest(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$requestToJoinChannel$0$ChatThreadCheckFragment(Ljava/lang/Boolean;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannelWithSystemPermissionCheck()V

    return-void
.end method

.method public synthetic lambda$requestToSpeak$2$ChatThreadCheckFragment(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/view/View;)V
    .locals 0

    .line 228
    new-instance p2, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkThreadAvailable(ZLcom/narvii/util/Callback;)Z

    return-void
.end method

.method public synthetic lambda$sendWaitListJoinRequest$3$ChatThreadCheckFragment(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->joinEventListener:Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    if-eqz p1, :cond_0

    .line 253
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinEnd()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "rtc"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string p1, "account"

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->account:Lcom/narvii/account/AccountService;

    .line 80
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 81
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 82
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 83
    new-instance p1, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 376
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToBePresenter()V

    :cond_0
    return-void
.end method

.method public requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 3

    if-nez p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 148
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkEligible()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 153
    :cond_1
    new-instance v1, Lcom/narvii/chat/input/ChatThreadCheckFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$1;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkChannelPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 168
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0729

    .line 169
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f073e

    .line 170
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 171
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkChannelUserLimit()Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f01ca

    .line 175
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x104000a

    .line 176
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 177
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 p1, 0x1

    .line 182
    new-instance v0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$tUPiCWLQJXQRZW1vq7MkprUWU4s;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$tUPiCWLQJXQRZW1vq7MkprUWU4s;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkThreadAvailable(ZLcom/narvii/util/Callback;)Z

    return-void

    .line 185
    :cond_5
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 186
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showStrangerHintDialog(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public requestToJoinOrSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 127
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0729

    .line 128
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f073e

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 130
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 132
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :goto_0
    return-void
.end method

.method public requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 3

    if-nez p1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 205
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkEligible()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 210
    :cond_1
    new-instance v1, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 224
    :cond_2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0128

    .line 225
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0126

    .line 227
    new-instance v2, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 247
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

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

    .line 383
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    iget v0, v3, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 385
    new-instance v5, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "account"

    .line 387
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 388
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/member/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v6

    const-string v0, "api"

    .line 391
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 392
    new-instance v8, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Ljava/lang/Class;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v7, v6, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method
