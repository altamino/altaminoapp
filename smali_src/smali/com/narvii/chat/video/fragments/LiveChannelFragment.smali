.class public abstract Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$3;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$3;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContentListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/fragments/c;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/c;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

    .line 32
    return-void
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    .line 28
    return-void
.end method

.method private dispatchInitData()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChannelUserList()Ljava/util/Collection;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelFilteredUserWrapperList()Landroid/util/SparseArray;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V

    .line 50
    return-void
.end method

.method private expandContent(Z)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->muteAllRemoteUsers(Z)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setIsAllMuted(Z)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->removeAllLocalMuteUsers()V

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    return-void

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 40
    const/4 v2, 0x2

    .line 41
    .line 42
    new-array v3, v2, [F

    .line 43
    .line 44
    .line 45
    fill-array-data v3, :array_0

    .line 46
    .line 47
    const-string v4, "alpha"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 54
    .line 55
    new-array v4, v2, [F

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 59
    move-result v5

    .line 60
    .line 61
    aput v5, v4, v1

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x1

    .line 64
    .line 65
    aput v5, v4, v6

    .line 66
    .line 67
    const-string/jumbo v5, "translationY"

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 77
    .line 78
    new-instance v5, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;

    .line 79
    .line 80
    .line 81
    invoke-direct {v5, p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    .line 86
    new-array p1, v2, [Landroid/animation/Animator;

    .line 87
    .line 88
    aput-object v3, p1, v1

    .line 89
    .line 90
    aput-object v0, p1, v6

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    .line 95
    const-wide/16 v0, 0xc8

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 102
    return-void

    nop

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$new$0(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "chatInvite"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v1, "chat"

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    const-string/jumbo v1, "uid"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->lambda$new$0(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    return-object p0
.end method

.method private openParticipantsListFragment()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "key_channel_type"

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string/jumbo v2, "thread"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    const-string v1, "id"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->dispatchInitData()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContent(Z)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipantsListFragment()V

    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/logging/ActSemantic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->sendLog(Lcom/narvii/logging/ActSemantic;)V

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

.method private sendLog(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "ChatArea"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
    return-void
.end method

.method private showLiveContent(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v1, v2

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    :cond_3
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isContentCollapsed:Z

    .line 29
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->showLiveContent(Z)V

    return-void
.end method


# virtual methods
.method public checkCommunityAvailability()Z
    .locals 4

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
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    xor-int/lit8 v0, v0, 0x1

    .line 30
    return v0
.end method

.method protected closeCurrentLiveChannelRoom()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 18
    :cond_0
    return-void
.end method

.method protected configCollapse()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v2

    .line 19
    .line 20
    :goto_0
    if-nez v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->supportCollapse()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    move v2, v3

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/layout/VVContentLayout;->setSupportCollapse(Z)V

    .line 31
    return-void
.end method

.method protected getContentHeight()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isContentCollapsed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getMiniContentHeight()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getNormalContentHeight()I

    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method protected abstract getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
.end method

.method protected getMiniContentHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f07047f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method protected getNormalContentHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_1
    const-string/jumbo v0, "thread"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 39
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected isCreator()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public abstract isMappedLiveChannel(I)Z
.end method

.method protected isMeOrganizer()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method protected isPrivateCall()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isPrivateCall(Lcom/narvii/model/ChatThread;I)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected joinLiveChannel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    .line 18
    :cond_0
    return-void
.end method

.method protected leaveCurrentChannel(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;Z)V

    .line 21
    :cond_0
    return-void
.end method

.method protected liveContentId()I
    .locals 1

    const v0, 0x7f0a1012

    return v0
.end method

.method protected notifyCollapseStatusChange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseChangeListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->setIsInMiniStatus(Z)V

    .line 19
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->onChannelStatusChanged()V

    .line 17
    :cond_1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 24
    .line 25
    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 41
    move-result p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1, p4, p3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;I)V

    .line 45
    :cond_2
    return-void
.end method

.method public onCollapsePercentChange(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    const v1, 0x3dcccccd    # 0.1f

    .line 8
    .line 9
    cmpl-float v1, p1, v1

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 21
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "rtc"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    const-string v0, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 37
    .line 38
    const-string v0, "creator"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator:Z

    .line 45
    .line 46
    const-string v0, "channel_type"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 50
    move-result v0

    .line 51
    .line 52
    iput v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iput-object v1, v0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    .line 61
    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 68
    .line 69
    new-instance v0, Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    const-string v1, "Source"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const-string v1, "chatInvite"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 102
    :cond_0
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->showLiveContent(Z)V

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/logging/ActSemantic;->expand:Lcom/narvii/logging/ActSemantic;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->sendLog(Lcom/narvii/logging/ActSemantic;)V

    .line 14
    return-void
.end method

.method protected onLiveContentForceRemoved()V
    .locals 0

    return-void
.end method

.method public onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    .line 17
    :cond_1
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    if-eqz p3, :cond_2

    .line 10
    .line 11
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 12
    .line 13
    iget v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 18
    const/4 p3, 0x1

    .line 19
    .line 20
    if-ne p1, p3, :cond_2

    .line 21
    .line 22
    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 23
    .line 24
    if-eq p1, p3, :cond_1

    .line 25
    const/4 p2, 0x5

    .line 26
    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    const/4 p1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContent(Z)V

    .line 36
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 11
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
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter(Lcom/narvii/model/ChatThread;)V

    .line 17
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method protected onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->updateMiniIndicatorView()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 17
    :cond_1
    return-void
.end method

.method public onVVContentCollapsed()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->showLiveContent(Z)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/logging/ActSemantic;->collapse:Lcom/narvii/logging/ActSemantic;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->sendLog(Lcom/narvii/logging/ActSemantic;)V

    .line 23
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz p2, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveContentId()I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/layout/VVContentLayout;->setCollapseListener(Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    move-result-object p2

    .line 41
    move-object v2, p1

    .line 42
    .line 43
    check-cast v2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    .line 46
    const v3, 0x7f0d04c3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    check-cast p2, Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    .line 69
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContentListener:Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    const-string v2, "mini_content"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    if-nez v3, :cond_3

    .line 97
    .line 98
    new-instance v3, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    .line 99
    .line 100
    .line 101
    invoke-direct {v3}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;-><init>()V

    .line 102
    .line 103
    new-instance v4, Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 107
    .line 108
    const-string v5, "id"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    const v4, 0x7f0a0977

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 133
    .line 134
    .line 135
    :cond_3
    const p2, 0x7f0a0979

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicatorRoot:Landroid/view/View;

    .line 142
    .line 143
    .line 144
    const p2, 0x7f0a0978

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicator:Landroid/view/View;

    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->collapseListener:Landroid/view/View$OnClickListener;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->updateMiniIndicatorView()V

    .line 161
    .line 162
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    .line 166
    move-result p1

    .line 167
    .line 168
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isContentCollapsed:Z

    .line 169
    .line 170
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 171
    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    .line 178
    move-result p2

    .line 179
    .line 180
    if-eqz p2, :cond_6

    .line 181
    move p2, v0

    .line 182
    goto :goto_0

    .line 183
    :cond_6
    move p2, v1

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveMiniContent:Landroid/view/View;

    .line 189
    .line 190
    if-eqz p1, :cond_9

    .line 191
    .line 192
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    .line 196
    move-result p2

    .line 197
    .line 198
    if-eqz p2, :cond_8

    .line 199
    move v0, v1

    .line 200
    .line 201
    .line 202
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    .line 208
    move-result p1

    .line 209
    .line 210
    if-eqz p1, :cond_a

    .line 211
    const/4 p1, 0x2

    .line 212
    goto :goto_1

    .line 213
    :cond_a
    const/4 p1, 0x1

    .line 214
    .line 215
    .line 216
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 217
    return-void
.end method

.method protected openParticipants()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipantsListFragment()V

    .line 4
    return-void
.end method

.method protected requestToBePresenter()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v1, "android.permission.CAMERA"

    .line 9
    .line 10
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v3}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 28
    const/4 v3, 0x1

    .line 29
    .line 30
    if-ne v0, v3, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    filled-new-array {v2}, [Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestType(I)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    .line 56
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_2
    filled-new-array {v2}, [Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    const/16 v1, 0x130

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter(Lcom/narvii/model/ChatThread;)V

    .line 94
    :goto_3
    return-void
.end method

.method public setCollapseChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V
    .locals 0

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->miniIndicatorRoot:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v2

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->supportCollapse()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_2
    const/16 v2, 0x8

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void
.end method
