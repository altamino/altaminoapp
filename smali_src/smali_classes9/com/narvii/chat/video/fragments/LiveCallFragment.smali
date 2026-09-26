.class public abstract Lcom/narvii/chat/video/fragments/LiveCallFragment;
.super Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/call/CallStatusChangeListener;
.implements Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;
.implements Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;
.implements Lcom/narvii/chat/video/PresenterItemClickListener;
.implements Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;


# instance fields
.field private callCompetitorView:Landroid/view/View;

.field private callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

.field protected callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field protected callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field protected chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

.field private retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

.field private vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkCommunityAvailability(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)Z
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v1, "config"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 17
    move-result v1

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 27
    move-result p2

    .line 28
    xor-int/2addr p1, p2

    .line 29
    return p1
.end method

.method private delayCloseLiveChannelRoom()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    .line 6
    .line 7
    const-wide/16 v1, 0x5dc

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method private dismissRetryPrivateCallDialog()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 16
    :cond_0
    return-void
.end method

.method private isChannelFull(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getPresenterCount(Ljava/util/Collection;)I

    .line 10
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    .line 13
    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    .line 15
    cmpl-float p1, p1, v0

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method private synthetic lambda$onPresenterItemClicked$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->openWaitingList()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipants()V

    .line 4
    return-void
.end method

.method private onPresenterItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 2

    if-nez p1, :cond_3

    if-nez p2, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 p2, 0x0

    .line 17
    invoke-static {p0, p0, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 18
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    new-instance v0, Lcom/narvii/chat/video/fragments/b;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/b;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->openWaitingList()V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinOrSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    :cond_2
    const-class p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 23
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "channel_type"

    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "thread"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "id"

    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    goto :goto_0

    .line 28
    :cond_3
    new-instance p2, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 30
    invoke-virtual {p2, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 32
    invoke-virtual {p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method private openWaitingList()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "chatWaitingList"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->show(Lcom/narvii/model/ChatThread;)V

    .line 16
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRetryPrivateCallDialog()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallRetryDialog(Lcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 25
    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/video/fragments/LiveCallFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->lambda$onPresenterItemClicked$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateLayout()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x2

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateCallLayout(Lcom/narvii/model/User;IZ)V

    .line 34
    return-void
.end method

.method private updateLiveUserLayout()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 19
    return-void
.end method

.method public static synthetic v(Lcom/narvii/chat/video/fragments/LiveCallFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/chat/video/fragments/LiveCallFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onPresenterItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    return-void
.end method


# virtual methods
.method protected changeCallCompetitorViewVisibility(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callCompetitorView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isVideoType(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callCompetitorView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const/16 p1, 0x8

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_1
    return-void
.end method

.method protected getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    return-object v0
.end method

.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->handleAddMemberOnActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onAnimationFinished()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    .line 12
    return-void
.end method

.method public onCallStatusChanged(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->isChannelFull(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    .line 29
    const/4 v1, 0x2

    .line 30
    .line 31
    if-nez v0, :cond_6

    .line 32
    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    const/16 v0, 0x8

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallNoAnswerMessage(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->showRetryPrivateCallDialog()V

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x7

    .line 60
    .line 61
    if-ne p1, v0, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->disableCancelButton()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_3
    const/16 v0, 0xa

    .line 76
    .line 77
    if-eq p1, v0, :cond_4

    .line 78
    const/4 v0, 0x3

    .line 79
    .line 80
    if-ne p1, v0, :cond_5

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V

    .line 87
    :cond_5
    :goto_0
    return-void

    .line 88
    .line 89
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 101
    move-result v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0, p1, v2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateCallLayout(Lcom/narvii/model/User;IZ)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->dismissRetryPrivateCallDialog()V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    .line 113
    :cond_7
    :goto_2
    return-void
.end method

.method public onCancelClicked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onCancelPrivateCall(Z)V

    .line 5
    return-void
.end method

.method protected onCancelPrivateCall(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V

    .line 28
    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 12
    const/4 p2, 0x6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 12
    .line 13
    const-string v0, "__communityId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "callScreen"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/chat/call/CallScreenService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 13
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/chat/signalling/ChannelUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 4
    return-void
.end method

.method public onPresenterItemClicked(Landroid/view/View;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZI)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 1
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "account"

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "host"

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatThread;->isCoHost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "co-host"

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->joined()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "member"

    goto :goto_0

    :cond_2
    const-string v0, "others"

    :goto_0
    const-string v1, "SpeakerArea"

    .line 8
    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "joinRole"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "chatRole"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 12
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->checkCommunityAvailability(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x1

    if-ne p4, p1, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalVideo()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    if-ne p4, p1, :cond_6

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->flipCamera()V

    goto :goto_1

    .line 15
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onPresenterItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLayout()V

    .line 7
    return-void
.end method

.method protected onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLiveUserLayout()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLayout()V

    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0240

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setCallCancelClickListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;)V

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a0814

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setLandscape(Z)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    move-result v0

    .line 52
    .line 53
    if-ge p2, v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    const-string v2, "callCompetitor"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callCompetitorView:Landroid/view/View;

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 80
    .line 81
    new-instance p2, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 90
    .line 91
    new-instance p2, Lcom/narvii/chat/video/fragments/a;

    .line 92
    .line 93
    .line 94
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/a;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setOnUserCountClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLiveUserLayout()V

    .line 108
    return-void
.end method

.method protected updateCallLayout(Lcom/narvii/model/User;IZ)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateViews(Lcom/narvii/model/User;I)V

    .line 30
    const/4 p1, 0x2

    .line 31
    .line 32
    if-ne p2, p1, :cond_2

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversation()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 60
    const/4 p3, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    .line 76
    .line 77
    :goto_0
    if-ne p2, v2, :cond_4

    .line 78
    .line 79
    const-string p1, "relaunch"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->showRetryPrivateCallDialog()V

    .line 89
    :cond_4
    return-void
.end method
