.class public final Lcom/narvii/chat/video/utils/VVChatHelper;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatHelper.kt\ncom/narvii/chat/video/utils/VVChatHelper\n*L\n1#1,617:1\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "_ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method private final isDeviceOffline()Z
    .locals 2

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    goto :goto_1

    .line 186
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic quitAsPresenter$default(Lcom/narvii/chat/video/utils/VVChatHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 429
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic showLeaveChannelConfirmDialog$default(Lcom/narvii/chat/video/utils/VVChatHelper;Landroid/app/Activity;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 230
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic showPlayListFragment$default(Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/chat/ChatFragment;ZILjava/lang/Object;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 504
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPlayListFragment(Lcom/narvii/chat/ChatFragment;Z)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_3

    .line 397
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 398
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final checkEligibleWithHint()Z
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final checkRtcStatus(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "ws"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->getConnectStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0f0f0f

    invoke-static {v0, v3, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    if-eqz p1, :cond_3

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isDeviceOffline()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0f0f10

    invoke-static {v0, v3, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    if-eqz p1, :cond_3

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    .line 66
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getPlayListFragment(Lcom/narvii/chat/ChatFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 522
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "chatFragment.childFragmentManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "playlist"

    .line 523
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of v1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    return-object p1
.end method

.method public final hasOtherHostInCurrentChannel(Lcom/narvii/model/ChatThread;)Z
    .locals 7

    .line 564
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 565
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 566
    invoke-virtual {p0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentThreadLive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 570
    :cond_0
    invoke-virtual {v0, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_2

    return v3

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v4, "account"

    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    const-string v4, "accountService"

    .line 575
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 576
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 577
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v3, :cond_3

    :cond_4
    iget v5, v4, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v5, v3, :cond_5

    goto :goto_1

    .line 580
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_3

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method public final hidePlayListFragment(Lcom/narvii/chat/ChatFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "chatFragment.childFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playlist"

    .line 531
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 532
    instance-of v0, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    if-eqz v0, :cond_1

    .line 533
    check-cast p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public final isAgoraVideoType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

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

.method public final isAgoraVoiceType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 541
    :cond_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 544
    :cond_1
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 547
    :cond_2
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final isCurrentThreadLive(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v2, "rtc"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 558
    invoke-virtual {v1, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 559
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isEligibleForVVChat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isMePresenterInCurrentChannel(Ljava/lang/String;)Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 589
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final isPrivateCall(Lcom/narvii/model/ChatThread;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 180
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final isReadyToLaunchLiveChannel(Lcom/narvii/model/ChatThread;Z)Z
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/narvii/chat/video/utils/VVChatHelper;->checkEligibleWithHint()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final isThreadOwner(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 222
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final isValidChannelToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 336
    :cond_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v2, "rtc"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 600
    new-instance v2, Lcom/narvii/chat/util/ChatHelper;

    iget-object v3, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ctx.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 601
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 602
    iget-object v4, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/narvii/chat/signalling/ChannelUser;

    iget v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget v8, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    goto :goto_2

    :cond_6
    move-object v6, v3

    :goto_2
    move-object v4, v6

    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    :goto_3
    if-eqz v4, :cond_7

    .line 605
    iget-boolean v6, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eq v6, v5, :cond_b

    :cond_7
    if-eqz v4, :cond_8

    .line 604
    iget-object v6, v4, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    move-object v6, v3

    :goto_4
    invoke-virtual {v2, p1, v6}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v4, :cond_9

    .line 605
    iget-object v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v4, :cond_9

    iget-object v3, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_9
    invoke-virtual {v2, p1, v3}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v2, 0x1

    .line 606
    :goto_6
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->hasOtherHostInCurrentChannel(Lcom/narvii/model/ChatThread;)Z

    move-result v3

    if-eqz v1, :cond_c

    .line 607
    iget-object v4, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    if-le v4, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_f

    .line 609
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isMePresenterInCurrentChannel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz v2, :cond_f

    if-eqz v3, :cond_e

    if-eqz v1, :cond_f

    iget p1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_f

    :cond_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public final quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 430
    new-instance v8, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v8}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 432
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v2, "rtc"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/chat/rtc/RtcService;

    const v1, 0x7f0f0e63

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 434
    iget-object v4, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v4, :cond_0

    iget-boolean v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget-object v4, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    invoke-virtual {v0, p2, v4}, Lcom/narvii/chat/util/ChatHelper;->isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const v1, 0x7f0f0e62

    .line 441
    :goto_1
    invoke-virtual {v8, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0c29

    const-wide v4, 0xffbbbbbbL

    long-to-int v1, v4

    .line 442
    invoke-virtual {v8, v0, v3, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v9, 0x7f0f119f

    .line 443
    new-instance v10, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;

    move-object v0, v10

    move-object v1, v8

    move-object v3, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/chat/rtc/ChannelUserWrapper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    invoke-virtual {v8, v9, v10}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 454
    invoke-virtual {v8}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final reportLiveLayerActiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V
    .locals 5

    if-eqz p1, :cond_1

    .line 262
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p3}, Lcom/narvii/model/ChatThread;->isLegalThreadType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "liveLayer"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    sget-object v3, Lcom/narvii/livelayer/LiveLayerService;->ACTION_CHATTING:Ljava/lang/String;

    const-string v4, "LiveLayerService.ACTION_CHATTING"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v3, "threadType"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "channelType"

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v0, v2, p2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final reportLiveLayerInactiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 279
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {p3}, Lcom/narvii/model/ChatThread;->isLegalThreadType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "liveLayerWS"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_CHATTING:Ljava/lang/String;

    const-string v3, "LiveLayerService.ACTION_CHATTING"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v3, "threadType"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget p3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "channelType"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    iget p3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-static {p3, p2}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 293
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportInactive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final requestToBePresenter(Lcom/narvii/model/ChatThread;)V
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_1

    .line 405
    iget v1, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 407
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0227

    .line 408
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x7f0f0193

    .line 409
    new-instance v3, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$1;

    invoke-direct {v3, v1}, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0025

    .line 410
    new-instance v3, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;-><init>(Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 417
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 419
    :cond_0
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 420
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 421
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v4, "accountService"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 422
    new-instance v4, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$3;

    invoke-direct {v4, v0}, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$3;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 421
    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 425
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;)V

    :goto_0
    return-void
.end method

.method public final sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 303
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x1

    const/16 v2, 0x35

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x38

    goto :goto_0

    :cond_2
    const/16 v2, 0x3b

    .line 308
    :cond_3
    :goto_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;->buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 309
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const-string v1, "api"

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    if-eqz p2, :cond_4

    .line 311
    sget-object v0, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final sendCallNoAnswerMessage(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 321
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v2, 0x1

    const/16 v3, 0x34

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x37

    goto :goto_0

    :cond_2
    const/16 v3, 0x3a

    .line 326
    :cond_3
    :goto_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/video/view/VoiceCallHelper;->buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 327
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const-string v2, "api"

    invoke-virtual {v1, p1, v2}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 328
    sget-object v1, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final showAcceptChatInvitationDialog(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 461
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0227

    .line 462
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0193

    .line 463
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showAcceptChatInvitationDialog$1;

    invoke-direct {v1, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$showAcceptChatInvitationDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x7f0f0025

    .line 464
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showAcceptChatInvitationDialog$2;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showAcceptChatInvitationDialog$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 468
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final showChannelComeLiveDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 489
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0efe

    .line 491
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 492
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showChannelComeLiveDialog$1;

    invoke-direct {v0, p3, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$showChannelComeLiveDialog$1;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;)V

    const p3, 0x7f0f0c29

    invoke-virtual {p1, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 496
    new-instance p3, Lcom/narvii/chat/video/utils/VVChatHelper$showChannelComeLiveDialog$2;

    invoke-direct {p3, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showChannelComeLiveDialog$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    const p2, 0x7f0f119f

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p2, 0x0

    .line 500
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 501
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final showCloseOrMiniLiveChannelHintDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/widget/ACMAlertDialog;"
        }
    .end annotation

    .line 101
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0e62

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showCloseOrMiniLiveChannelHintDialog$1;

    invoke-direct {v0, p3}, Lcom/narvii/chat/video/utils/VVChatHelper$showCloseOrMiniLiveChannelHintDialog$1;-><init>(Lcom/narvii/util/Callback;)V

    const p3, 0x7f0f0ad9

    invoke-virtual {p1, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 105
    new-instance p3, Lcom/narvii/chat/video/utils/VVChatHelper$showCloseOrMiniLiveChannelHintDialog$2;

    invoke-direct {p3, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showCloseOrMiniLiveChannelHintDialog$2;-><init>(Lcom/narvii/util/Callback;)V

    const p2, 0x7f0f0ba3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f09098b

    .line 106
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/chat/video/utils/VVChatHelper$showCloseOrMiniLiveChannelHintDialog$3;

    invoke-direct {p3, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$showCloseOrMiniLiveChannelHintDialog$3;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-object p1
.end method

.method public final showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const p2, 0x7f0f0f13

    goto :goto_0

    :cond_0
    const p2, 0x7f0f0e62

    .line 234
    :goto_0
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0c29

    .line 235
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showLeaveChannelConfirmDialog$1;

    invoke-direct {v1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper$showLeaveChannelConfirmDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f119f

    .line 238
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showLeaveChannelConfirmDialog$2;

    invoke-direct {v1, p3, v0}, Lcom/narvii/chat/video/utils/VVChatHelper$showLeaveChannelConfirmDialog$2;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 242
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 246
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f013c

    .line 211
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 212
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showNotEligibleForVVChatDialog$1;

    invoke-direct {v1, v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$showNotEligibleForVVChatDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 216
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final showPermissionRequestDialog(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0709

    .line 143
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 145
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0705

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$1;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    const v1, 0x7f0f0193

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 149
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$2;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    const p2, 0x104000a

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 153
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final showPlayListFragment(Lcom/narvii/chat/ChatFragment;Z)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "chatFragment.childFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "playlist"

    .line 509
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 511
    new-instance v3, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-direct {v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;-><init>()V

    .line 512
    invoke-virtual {p1}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setIsPrePickMode(ZLcom/narvii/model/ChatThread;)V

    .line 513
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0909b3

    invoke-virtual {p1, p2, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 515
    :cond_1
    instance-of p1, v3, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    return-object v0
.end method

.method public final showPresenterNotExistedDialog(IILcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/util/dialog/AlertDialog;"
        }
    .end annotation

    .line 157
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0b0188

    .line 158
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p2, 0x7f0903f3

    .line 161
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "dlg.findViewById<TextView>(R.id.end_hint)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0af0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09064f

    .line 162
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showPresenterNotExistedDialog$1;

    invoke-direct {v0, p1, p3}, Lcom/narvii/chat/video/utils/VVChatHelper$showPresenterNotExistedDialog$1;-><init>(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 167
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-object p1
.end method

.method public final showPresenterNotExistedToast(I)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0af0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public final showPrivateCallLimitDialog(ILcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/widget/ACMAlertDialog;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    const p1, 0x7f0f0e25

    .line 132
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p1, 0x7f0f0cca

    .line 133
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showPrivateCallLimitDialog$1;

    invoke-direct {v1, v0, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showPrivateCallLimitDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 137
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-object v0
.end method

.method public final showPrivateCallRetryDialog(Lcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/util/dialog/AlertDialog;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0187

    .line 114
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090193

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper$showPrivateCallRetryDialog$1;

    invoke-direct {v2, p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper$showPrivateCallRetryDialog$1;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09097a

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper$showPrivateCallRetryDialog$2;

    invoke-direct {v2, p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper$showPrivateCallRetryDialog$2;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 123
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 124
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-object v0
.end method

.method public final showReputationClaimDialog(Lcom/narvii/app/NVActivity;ILcom/narvii/chat/signalling/SignallingChannel;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "api"

    .line 346
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 347
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/avchat-reputation"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 348
    new-instance p3, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;

    const-class v1, Lcom/narvii/model/api/ReputationPostResponse;

    invoke-direct {p3, p4, p1, v1}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;-><init>(Landroid/content/DialogInterface$OnDismissListener;Lcom/narvii/app/NVActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showStrangerHintDialog(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 472
    iget p2, p2, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    if-eqz p3, :cond_0

    .line 473
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 476
    :cond_1
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f105f

    .line 477
    invoke-virtual {p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v1, 0x7f0f105b

    .line 479
    invoke-virtual {p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    if-eq p1, v0, :cond_2

    const p1, 0x7f0f116a

    goto :goto_0

    :cond_2
    const p1, 0x7f0f0aee

    .line 480
    :goto_0
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showStrangerHintDialog$1;

    invoke-direct {v0, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showStrangerHintDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f02e9

    .line 481
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper$showStrangerHintDialog$2;

    invoke-direct {v0, p2, p3}, Lcom/narvii/chat/video/utils/VVChatHelper$showStrangerHintDialog$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 485
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public final showSwitchChannelDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    const-string/jumbo v1, "rtcService"

    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 85
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f108c

    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0c29

    .line 88
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$1;

    invoke-direct {v2, v0, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f119f

    .line 92
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;

    invoke-direct {v1, v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p1, 0x0

    .line 96
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 97
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method public final supportLiveChannelInCurCommunity()Z
    .locals 2

    .line 374
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 379
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVoiceChatEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
