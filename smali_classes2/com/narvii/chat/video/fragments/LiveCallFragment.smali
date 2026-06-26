.class public abstract Lcom/narvii/chat/video/fragments/LiveCallFragment;
.super Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.source "LiveCallFragment.java"

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

    .line 54
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onPresenterItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/fragments/LiveCallFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-object p1
.end method

.method private checkCommunityAvailability(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)Z
    .locals 3

    .line 385
    new-instance v0, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "config"

    .line 386
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 387
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    new-instance v2, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1
.end method

.method private delayCloseLiveChannelRoom()V
    .locals 3

    .line 255
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private dismissRetryPrivateCallDialog()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isChannelFull(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getPresenterCount(Ljava/util/Collection;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 251
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onPresenterItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 2

    if-nez p1, :cond_3

    if-nez p2, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 p2, 0x0

    .line 352
    invoke-static {p0, p0, p2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 354
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    new-instance v0, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$yPdw8rUo9HXBbJANElJ9Ov0I2lQ;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$yPdw8rUo9HXBbJANElJ9Ov0I2lQ;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 356
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->openWaitingList()V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p2, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinOrSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

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

    .line 363
    :cond_2
    const-class p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "channel_type"

    .line 364
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "thread"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :cond_3
    new-instance p2, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 371
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 372
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 374
    invoke-virtual {p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method private openWaitingList()V
    .locals 2

    const-string v0, "chatWaitingList"

    .line 380
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 381
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->show(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method private showRetryPrivateCallDialog()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    new-instance v1, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallRetryDialog(Lcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->retryPrivateCallDialog:Lcom/narvii/util/dialog/AlertDialog;

    return-void
.end method

.method private updateLayout()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateCallLayout(Lcom/narvii/model/User;IZ)V

    return-void
.end method

.method private updateLiveUserLayout()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected changeCallCompetitorViewVisibility(Z)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callCompetitorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isVideoType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callCompetitorView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    return-object v0
.end method

.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onPresenterItemClicked$1$LiveCallFragment(Ljava/lang/Boolean;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->openWaitingList()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$LiveCallFragment(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipants()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->vvChatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->handleAddMemberOnActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAnimationFinished()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    return-void
.end method

.method public onCallStatusChanged(I)V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->isChannelFull(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    const/4 v1, 0x2

    if-nez v0, :cond_6

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 197
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallNoAnswerMessage(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 198
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 199
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->showRetryPrivateCallDialog()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 201
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->disableCancelButton()V

    .line 202
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 203
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 206
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    .line 207
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V

    :cond_5
    :goto_0
    return-void

    .line 191
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateCallLayout(Lcom/narvii/model/User;IZ)V

    .line 192
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->dismissRetryPrivateCallDialog()V

    .line 193
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCancelClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onCancelPrivateCall(Z)V

    return-void
.end method

.method protected onCancelPrivateCall(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->leaveCurrentChannel(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V

    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V

    .line 156
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    :cond_0
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 164
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const-string v0, "__communityId"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
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

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "callScreen"

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/call/CallScreenService;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 71
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 72
    new-instance p1, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 73
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method public onPresenterItemClicked(Landroid/view/View;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZI)V
    .locals 3

    .line 310
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 311
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "account"

    .line 314
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 315
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "host"

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatThread;->isCoHost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "co-host"

    goto :goto_0

    .line 321
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

    .line 325
    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "joinRole"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "chatRole"

    .line 327
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 331
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->checkCommunityAvailability(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x1

    if-ne p4, p1, :cond_5

    .line 335
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalVideo()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    if-ne p4, p1, :cond_6

    .line 337
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->flipCamera()V

    goto :goto_1

    .line 339
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onPresenterItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onResume()V

    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLayout()V

    return-void
.end method

.method protected onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 130
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLiveUserLayout()V

    .line 131
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLayout()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 84
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09018c

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 86
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setCallCancelClickListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;)V

    const p2, 0x7f09068b

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 88
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setLandscape(Z)V

    .line 89
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V

    .line 90
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "callCompetitor"

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callCompetitorView:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    new-instance p2, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    new-instance p2, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$zret9aoYIkoQW_i8kCfDd-ZAMIQ;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$zret9aoYIkoQW_i8kCfDd-ZAMIQ;-><init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setOnUserCountClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->liveUserLayout:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 115
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->updateLiveUserLayout()V

    return-void
.end method

.method protected updateCallLayout(Lcom/narvii/model/User;IZ)V
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 268
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateViews(Lcom/narvii/model/User;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_1

    .line 275
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversation()V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    invoke-virtual {p0, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment;->callingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->changeCallCompetitorViewVisibility(Z)V

    :goto_0
    if-ne p2, v2, :cond_4

    const-string p1, "relaunch"

    .line 289
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 290
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->showRetryPrivateCallDialog()V

    :cond_4
    return-void
.end method
