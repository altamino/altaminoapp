.class public abstract Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.super Lcom/narvii/app/NVFragment;
.source "LiveChannelFragment.java"

# interfaces
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;
.implements Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;
.implements Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;
.implements Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;


# instance fields
.field VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

.field protected accountService:Lcom/narvii/account/AccountService;

.field protected channelType:I

.field protected chatThread:Lcom/narvii/model/ChatThread;

.field collapseChangeListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

.field collapseListener:Landroid/view/View$OnClickListener;

.field expandContentListener:Landroid/view/View$OnClickListener;

.field protected isContentCollapsed:Z

.field protected isCreator:Z

.field private liveMiniContent:Landroid/view/View;

.field protected liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

.field private miniIndicator:Landroid/view/View;

.field private miniIndicatorRoot:Landroid/view/View;

.field protected rtcService:Lcom/narvii/chat/rtc/RtcService;

.field userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

.field protected vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 199
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseListener:Landroid/view/View$OnClickListener;

    .line 220
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$3;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContentListener:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveChannelFragment$3FBkK5Ik6aW-CdJc7kcBNx1m10Q;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveChannelFragment$3FBkK5Ik6aW-CdJc7kcBNx1m10Q;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 466
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->dispatchInitData()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->showLiveContent(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/logging/ActSemantic;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->sendLog(Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContent(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipantsListFragment()V

    return-void
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 488
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 490
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    return-void
.end method

.method private dispatchInitData()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 317
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChannelUserList()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelFilteredUserWrapperList()Landroid/util/SparseArray;

    move-result-object v3

    .line 316
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V

    return-void
.end method

.method private expandContent(Z)V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setIsAllMuted(Z)V

    .line 231
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteAllRemoteStream(Z)V

    .line 232
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->removeAllLocalMuteUsers()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    if-nez v0, :cond_1

    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 238
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    new-array v4, v2, [F

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    aput v5, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    const-string/jumbo v5, "translationY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 239
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 240
    new-instance v5, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v2, [Landroid/animation/Animator;

    aput-object v3, p1, v1

    aput-object v0, p1, v6

    .line 257
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    .line 258
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 259
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private openParticipantsListFragment()V
    .locals 3

    .line 570
    const-class v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 571
    iget v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    const-string v2, "key_channel_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 498
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 499
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 500
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendLog(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    .line 297
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ChatArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private showLiveContent(Z)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 303
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    .line 306
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 308
    :cond_3
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isContentCollapsed:Z

    return-void
.end method


# virtual methods
.method public checkCommunityAvailability()Z
    .locals 4

    const-string v0, "config"

    .line 578
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 579
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 580
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 581
    new-instance v2, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected closeCurrentLiveChannelRoom()V
    .locals 1

    .line 519
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 521
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    :cond_0
    return-void
.end method

.method protected configCollapse()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->supportCollapse()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/narvii/chat/video/layout/VVContentLayout;->setSupportCollapse(Z)V

    return-void
.end method

.method protected getContentHeight()I
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isContentCollapsed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getMiniContentHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getNormalContentHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
.end method

.method protected getMiniContentHeight()I
    .locals 2

    .line 630
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getNormalContentHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    return-object v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "thread"

    .line 332
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

    const-string v0, "id"

    .line 322
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isCreator()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract isMappedLiveChannel(I)Z
.end method

.method protected isMeOrganizer()Z
    .locals 2

    const-string v0, "account"

    .line 530
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 531
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPrivateCall()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isPrivateCall(Lcom/narvii/model/ChatThread;I)Z

    move-result v0

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected joinLiveChannel()V
    .locals 1

    .line 504
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 506
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$LiveChannelFragment(Lcom/narvii/model/User;)V
    .locals 2

    const-string v0, "account"

    .line 346
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 347
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 349
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected leaveCurrentChannel(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator:Z

    .line 512
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 514
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected liveContentId()I
    .locals 1

    const v0, 0x7f090ced

    return v0
.end method

.method protected notifyCollapseStatusChange(I)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseChangeListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->setIsInMiniStatus(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    .line 424
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 395
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->onChannelStatusChanged()V

    :cond_1
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

    .line 409
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 413
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 417
    iget-object p3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p3}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object p3

    .line 418
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p1, p4, p3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;I)V

    :cond_2
    return-void
.end method

.method public onCollapsePercentChange(F)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "rtc"

    .line 96
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string v0, "account"

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 98
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 99
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    const-string v0, "creator"

    .line 100
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator:Z

    const-string v0, "channel_type"

    .line 101
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    if-nez p1, :cond_0

    .line 106
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    .line 108
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onExpanded()V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->showLiveContent(Z)V

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 266
    sget-object v0, Lcom/narvii/logging/ActSemantic;->expand:Lcom/narvii/logging/ActSemantic;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->sendLog(Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method protected onLiveContentForceRemoved()V
    .locals 0

    return-void
.end method

.method public onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 436
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    :cond_1
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 1

    .line 453
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 456
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne p1, v0, :cond_2

    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-eq p1, p3, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 462
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContent(Z)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 195
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->removeChannelRelatedListener(Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 559
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    .line 561
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 180
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    return-void
.end method

.method protected onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 363
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 364
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 365
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->updateMiniIndicatorView()V

    .line 366
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 447
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_1
    return-void
.end method

.method public onVVContentCollapsed()V
    .locals 2

    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->showLiveContent(Z)V

    .line 282
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x2

    .line 285
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 286
    sget-object v0, Lcom/narvii/logging/ActSemantic;->collapse:Lcom/narvii/logging/ActSemantic;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->sendLog(Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 116
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    instance-of p2, p1, Landroid/view/ViewGroup;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveContentId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/video/layout/VVContentLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 120
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 122
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/layout/VVContentLayout;->setCollapseListener(Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0b0495

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p2, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 125
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    invoke-virtual {v3, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 132
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v2, "mini_content"

    .line 135
    invoke-virtual {p2, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 137
    new-instance v3, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-direct {v3}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;-><init>()V

    .line 138
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v4, 0x7f090715

    invoke-virtual {p2, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    const p2, 0x7f090717

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicatorRoot:Landroid/view/View;

    const p2, 0x7f090716

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicator:Landroid/view/View;

    .line 146
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicator:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 147
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->updateMiniIndicatorView()V

    .line 152
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isContentCollapsed:Z

    .line 154
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    if-eqz p1, :cond_7

    .line 155
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x8

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 158
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v0, 0x0

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    goto :goto_1

    :cond_a
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    return-void
.end method

.method protected openParticipants()V
    .locals 0

    .line 566
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipantsListFragment()V

    return-void
.end method

.method protected requestToBePresenter()V
    .locals 7

    .line 536
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    move-result v0

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x2

    const-string v3, "android.permission.RECORD_AUDIO"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/String;

    aput-object v3, v6, v4

    aput-object v1, v6, v5

    invoke-static {v0, v6}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 538
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    if-ne v0, v5, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-static {v0, v6}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter(Lcom/narvii/model/ChatThread;)V

    goto :goto_2

    .line 546
    :cond_2
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    aput-object v3, v0, v4

    aput-object v1, v0, v5

    goto :goto_1

    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    aput-object v3, v0, v4

    .line 549
    :goto_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v1

    .line 550
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const/16 v1, 0x130

    .line 552
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :goto_2
    return-void
.end method

.method public setCollapseChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseChangeListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    return-void
.end method

.method protected supportCollapse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateMiniIndicatorView()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicatorRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 386
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicatorRoot:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->supportCollapse()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
