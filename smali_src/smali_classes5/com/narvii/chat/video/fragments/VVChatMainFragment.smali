.class public Lcom/narvii/chat/video/fragments/VVChatMainFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;
.implements Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;
.implements Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;
.implements Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;
.implements Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;
.implements Lcom/narvii/chat/video/events/LiveChannelErrorListener;
.implements Lcom/narvii/chat/ThreadInfoHost;
.implements Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;
.implements Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;


# static fields
.field private static final EVENT_SOURCE_NAVBAR:Ljava/lang/String; = "Navbar"

.field public static final KEY_AUTO_JOIN_AS_PRESENTER:Ljava/lang/String; = "auto_join_as_presenter"

.field public static final KEY_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field public static final KEY_CHAT_THREAD:Ljava/lang/String; = "thread"

.field public static final KEY_FORCE_DISALLOW_FLOATING_WINDOW:Ljava/lang/String; = "forceDisableFloatingWindow"

.field public static final KEY_FROM_LIVE_EVENT:Ljava/lang/String; = "fromLiveEvent"

.field public static final KEY_IS_CREATOR:Ljava/lang/String; = "creator"

.field public static final KEY_IS_RELAUNCH:Ljava/lang/String; = "relaunch"

.field private static final KEY_PAYLOAD_VVCHAT_DIALOG_SHOWN:Ljava/lang/String; = "payload_vvchat_dialog_shown"

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "vvCallPendingIntent"

.field public static final KEY_SHOW_GO_LIVE:Ljava/lang/String; = "showGoLive"

.field private static final TAG:Ljava/lang/String; = "VVChatMainFragment"

.field private static final TAG_FRAGMENT_CONTENT:Ljava/lang/String; = "live_content_fragment"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private backFromPermission:Z

.field private btnNetWorkStatusClose:Landroid/view/View;

.field private callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private channelType:I

.field chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private configService:Lcom/narvii/config/ConfigService;

.field private curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field private curChannelInfo:Landroid/os/Bundle;

.field finishLiveChannelCallback:Lcom/narvii/util/Callback;

.field private floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

.field inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

.field private isAutoJoinChannel:Z

.field private isCreator:Z

.field private isCurChannelFinishing:Z

.field private isIntentLeave:Z

.field private liveChannelContainer:Landroid/view/View;

.field private liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

.field private liveChannelContentView:Landroid/widget/FrameLayout;

.field private liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

.field private liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

.field private liveExtraBundle:Landroid/os/Bundle;

.field private ndcId:I

.field private needJoinAsGuest:Z

.field private noNeedAutoJoin:Z

.field private payloadInViteDialogShown:Z

.field private pendingIntent:Landroid/content/Intent;

.field private permissionTmpChannelType:I

.field private permissionTmpExtra:Landroid/os/Bundle;

.field private permissionTmpIsCreator:Z

.field private presenterNotExistedDialog:Lcom/narvii/util/dialog/AlertDialog;

.field private privateCallLimitDialog:Lcom/narvii/widget/ACMAlertDialog;

.field private promoteAsAudienceRequestSent:Z

.field private final pushListener:Lcom/narvii/pushservice/PushService$PushListener;

.field private pushService:Lcom/narvii/pushservice/PushService;

.field receiver:Landroid/content/BroadcastReceiver;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field showFloatingRunnable:Ljava/lang/Runnable;

.field private statExpanded:Ljava/lang/Boolean;

.field private threadFullInfoFetched:Z

.field private threadFullInfoRequestSent:Z

.field private threadId:Ljava/lang/String;

.field private tvNetworkStatus:Landroid/widget/TextView;

.field private vLandingContainer:Landroid/view/View;

.field private vNetworkContainer:Landroid/view/View;

.field private vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

.field private vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCurChannelFinishing:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoFetched:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$12;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$12;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->finishLiveChannelCallback:Lcom/narvii/util/Callback;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingRunnable:Ljava/lang/Runnable;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 46
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoFetched:Z

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->closeCurrentChatRoom()V

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->forceFinishSameThreadActivity()V

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isPrivateCallLauncher()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic F(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isScreenRoomType()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic G(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isVideoType()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic H(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isVoiceType()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic I(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendVVChatPermissionRequest()V

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V

    .line 33
    return-void
.end method

.method private changeNetworkStatusVisibility(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vNetworkContainer:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_1
    const/16 p1, 0x8

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void
.end method

.method private closeCurrentChatRoom()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->forceFinishSameThreadActivity()V

    .line 4
    .line 5
    const-string v0, "Navbar"

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V

    .line 10
    return-void
.end method

.method private configLiveChannelFrame()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "live_content_fragment"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    instance-of v3, v2, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    move-object v3, v2

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 32
    .line 33
    iget v4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isMappedLiveChannel(I)Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    return-void

    .line 41
    .line 42
    :cond_2
    if-eqz v2, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 57
    .line 58
    :cond_3
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 59
    const/4 v3, 0x5

    .line 60
    const/4 v4, 0x1

    .line 61
    .line 62
    if-nez v2, :cond_7

    .line 63
    .line 64
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 65
    .line 66
    if-eq v2, v4, :cond_6

    .line 67
    const/4 v5, 0x3

    .line 68
    .line 69
    if-eq v2, v5, :cond_5

    .line 70
    const/4 v5, 0x4

    .line 71
    .line 72
    if-eq v2, v5, :cond_5

    .line 73
    .line 74
    if-eq v2, v3, :cond_4

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_4
    new-instance v2, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;-><init>()V

    .line 81
    .line 82
    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_5
    new-instance v2, Lcom/narvii/chat/video/fragments/VideoChatFragment;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2}, Lcom/narvii/chat/video/fragments/VideoChatFragment;-><init>()V

    .line 89
    .line 90
    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_6
    new-instance v2, Lcom/narvii/chat/video/fragments/VoiceChatFragment;

    .line 94
    .line 95
    .line 96
    invoke-direct {v2}, Lcom/narvii/chat/video/fragments/VoiceChatFragment;-><init>()V

    .line 97
    .line 98
    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 99
    .line 100
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 101
    .line 102
    iget v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 103
    .line 104
    iget-boolean v6, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 105
    .line 106
    const-string v7, "Source"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v7}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    .line 112
    iget-object v8, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStartLiveChannel(IZLjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 116
    .line 117
    :cond_7
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 118
    .line 119
    if-nez v2, :cond_8

    .line 120
    .line 121
    sget-object v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    const-string v2, "no live channel fragment to handle channel type "

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 145
    .line 146
    .line 147
    :cond_8
    invoke-virtual {v2, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->setCollapseChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    if-nez v2, :cond_9

    .line 154
    .line 155
    new-instance v2, Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 159
    .line 160
    :cond_9
    const-string v5, "creator"

    .line 161
    .line 162
    iget-boolean v6, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    .line 167
    const-string v5, "channel_type"

    .line 168
    .line 169
    iget v6, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 173
    .line 174
    iget-object v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    .line 175
    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 180
    .line 181
    :cond_a
    iget-object v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 191
    .line 192
    if-eq v2, v3, :cond_b

    .line 193
    .line 194
    const-string v2, "fromLiveEvent"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 198
    move-result v2

    .line 199
    .line 200
    if-nez v2, :cond_b

    .line 201
    .line 202
    .line 203
    const v2, 0x7f01005c

    .line 204
    .line 205
    .line 206
    const v3, 0x7f010039

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->y(II)Landroidx/fragment/app/FragmentTransaction;

    .line 210
    .line 211
    .line 212
    :cond_b
    const v2, 0x7f0a0dee

    .line 213
    .line 214
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->m()V

    .line 222
    .line 223
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    .line 224
    .line 225
    if-eqz v0, :cond_d

    .line 226
    .line 227
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    .line 231
    move-result v1

    .line 232
    .line 233
    if-eqz v1, :cond_c

    .line 234
    const/4 v4, 0x2

    .line 235
    .line 236
    .line 237
    :cond_c
    invoke-interface {v0, v4}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    .line 238
    :cond_d
    return-void
.end method

.method private configLiveChannelParams()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setIsChannelCreator(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setMainChannelChatThread(Lcom/narvii/model/ChatThread;)V

    .line 18
    return-void
.end method

.method private currentChannelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 29
    .line 30
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 31
    .line 32
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_2
    :goto_0
    return v0
.end method

.method private forceFinishSameThreadActivity()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    new-instance v2, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v3, "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH"

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    const-string v3, "threadId"

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 46
    :cond_0
    return-void
.end method

.method private hasAnotherOngoingChannel()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private hasMemberOnChannel()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private isAutoJoinAsPresenter()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "auto_join_as_presenter"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isAutoJoinChannel()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private isPrivateCallLauncher()Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isPrivateCall(Lcom/narvii/model/ChatThread;I)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private isScreenRoomType()Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideoType()Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method private isVoiceType()Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private joinCurChannelAsGuest()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needBlockLiveChannelRequest()Z

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->joinChannelAsGuest(ILjava/lang/String;)V

    .line 49
    :cond_2
    return-void
.end method

.method private synthetic lambda$onChannelEntryClicked$1(Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->hidePlayListFragment(Lcom/narvii/chat/ChatFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3, p4}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;)V

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setVideoPickCallback(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;)V

    .line 13
    return-void
.end method

.method private synthetic lambda$onPermissionGranted$0(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lw7/l0;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpChannelType:I

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpIsCreator:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpExtra:Landroid/os/Bundle;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    :cond_0
    const-string v1, "cameraMute"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    const-string p1, "cameraFlip"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 40
    .line 41
    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V

    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method private leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;Lcom/narvii/util/Callback;)Z

    move-result p1

    return p1
.end method

.method private leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;Lcom/narvii/util/Callback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isIntentLeave:Z

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 2
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 4
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;

    invoke-direct {v3, p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, v1, v0, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 6
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$9;

    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$9;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    return v2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p2, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    return v0
.end method

.method public static synthetic n(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lw7/l0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->lambda$onPermissionGranted$0(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lw7/l0;

    move-result-object p0

    return-object p0
.end method

.method private needBlockLiveChannelRequest()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoFetched:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendThreadDetailRequest(Z)Z

    .line 23
    return v2

    .line 24
    .line 25
    :cond_1
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
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    move v1, v2

    .line 61
    :cond_3
    return v1
.end method

.method public static synthetic o(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->lambda$onChannelEntryClicked$1(Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/call/CallScreenService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    return-object p0
.end method

.method private promoteAsAudienceInCurrentChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

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
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinAsPresenter()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->noNeedAutoJoin:Z

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCurChannelFinishing:Z

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToAutoJoinCurrentChannel()V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object p0
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

.method private saveCurChannelInfo()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 39
    .line 40
    const-string v1, "isCreator"

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 48
    .line 49
    const-string v1, "threadId"

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v2, "thread"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 70
    .line 71
    const-string v1, "__communityId"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 75
    move-result v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 81
    .line 82
    const-string v1, "channel_type"

    .line 83
    .line 84
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 90
    .line 91
    const-string v1, "__fromGlobalChat"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 95
    move-result v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 101
    .line 102
    const-string v1, "__community"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 112
    .line 113
    const-string v1, "__hideDrawer"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 117
    move-result v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->saveCurrentLiveChannelInfo(Landroid/os/Bundle;)V

    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method private sendThreadDetailRequest(Z)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendThreadDetailRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 29
    return v0

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method private sendVVChatPermissionRequest()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "vvChatJoinType"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/narvii/chat/util/ChatRequestHelper;->sendVVChatPermissionRequest(Ljava/lang/String;I)V

    .line 22
    :cond_0
    return-void
.end method

.method private setThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

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
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->saveCurChannelInfo()V

    .line 13
    return-void
.end method

.method private shouldReportActiveStatus(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method private showPresenterNotExistedDialog()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->presenterNotExistedDialog:Lcom/narvii/util/dialog/AlertDialog;

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 18
    .line 19
    iget v2, v2, Lcom/narvii/chat/rtc/RtcService;->oldChannelType:I

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->finishLiveChannelCallback:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedDialog(IILcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->presenterNotExistedDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 28
    return-void
.end method

.method private showPrivateCallLimitDialog()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->privateCallLimitDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->finishLiveChannelCallback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallLimitDialog(ILcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->privateCallLimitDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 21
    return-void
.end method

.method private showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

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
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 14
    .line 15
    const-string v1, "InviteToTalk"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0d01b7

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a0f36

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 38
    .line 39
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a0722

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    const/4 v1, 0x1

    .line 55
    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    const-string v2, ""

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    :goto_0
    const/4 v3, 0x0

    .line 69
    .line 70
    aput-object v2, v1, v3

    .line 71
    .line 72
    .line 73
    const v2, 0x7f120869

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 83
    .line 84
    .line 85
    const v1, 0x7f0a0c09

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 100
    .line 101
    .line 102
    const v1, 0x7f0a002d

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/pushservice/PushPayload;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 120
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/video/ui/floating/FloatingPermissionUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    return-object p0
.end method

.method private tryToAutoJoinCurrentChannel()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->hasAnotherOngoingChannel()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget v0, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 19
    .line 20
    :goto_0
    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 24
    .line 25
    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showChannelComeLiveDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 39
    const/4 v3, 0x2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V

    .line 43
    :goto_1
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    return p0
.end method

.method private updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    :goto_0
    move v6, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->setEmbedFragment(Z)V

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 39
    move-result v5

    .line 40
    .line 41
    iget-boolean v7, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 42
    move-object v3, p1

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateLiveChannelEntryView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;ZZZ)V

    .line 46
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatLogHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isIntentLeave:Z

    return-void
.end method


# virtual methods
.method public getLiveContentHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getContentHeight()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public initLiveChannel(IZLandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x6d

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;I)V

    return-void
.end method

.method public initLiveChannel(IZLandroid/os/Bundle;I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpChannelType:I

    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpIsCreator:Z

    iput-object p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpExtra:Landroid/os/Bundle;

    .line 2
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestTypeForHost(I)Z

    move-result p1

    const-string p2, "android.permission.RECORD_AUDIO"

    if-eqz p1, :cond_0

    const-string p1, "android.permission.CAMERA"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p4}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return-void
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public joinLiveChannel()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "joinVVChat"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 20
    return v1

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move v0, v2

    .line 36
    .line 37
    :goto_1
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v0}, Lcom/narvii/chat/rtc/RtcService;->isAlreadyJoinedCurChannel(Ljava/lang/String;I)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    return v1

    .line 47
    .line 48
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 57
    const/4 v2, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    .line 61
    return v1

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->hasAnotherOngoingChannel()Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 70
    .line 71
    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 75
    .line 76
    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$6;

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$6;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showSwitchChannelDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatFragment;->setAllowFloatingWindow(Z)V

    .line 100
    :cond_5
    return v1

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendThreadDetailRequest(Z)Z

    .line 104
    move-result v3

    .line 105
    .line 106
    if-nez v3, :cond_7

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendVVChatPermissionRequest()V

    .line 110
    .line 111
    :cond_7
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 117
    .line 118
    iget v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 119
    .line 120
    iget-object v4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 121
    .line 122
    iget v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/narvii/chat/rtc/RtcService;->joinLiveChannel(ILjava/lang/String;II)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelParams()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    new-instance v1, Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    const-class v4, Lcom/narvii/chat/signalling/ProcessKillMonitorService;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    :cond_8
    return v2
.end method

.method public leaveCurrentLiveChannel(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public leaveCurrentLiveChannel(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v5

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v7, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v8, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 8
    new-instance v9, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;

    move-object v1, v9

    move-object v2, p0

    move v3, p3

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v7, v8, v9}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/narvii/chat/video/ChatLogEventHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 15
    invoke-virtual {p2, p3, p1, v0}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    :cond_4
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 16
    invoke-virtual {p2, p3, p1, v0}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    :goto_1
    return-void
.end method

.method public minimizeLiveChannelRoom(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToShowMinWindow(Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logMinimizeLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 15
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 p2, 0x66

    .line 6
    .line 7
    if-ne p1, p2, :cond_2

    .line 8
    .line 9
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    :goto_0
    const-string p2, "huawei"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 p2, 0x17

    .line 32
    .line 33
    if-le p1, p2, :cond_1

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 39
    .line 40
    const-wide/16 p2, 0x12c

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onBackPressed()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    return v1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Lcom/narvii/chat/ChatFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->getPlayListFragment(Lcom/narvii/chat/ChatFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    instance-of v2, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->dismiss()V

    .line 48
    return v1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 66
    return v1

    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 84
    move-result v2

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    iget v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 92
    move-result v2

    .line 93
    .line 94
    if-nez v2, :cond_3

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_3
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    .line 101
    move-result v2

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->minimizeLiveChannelRoom(Ljava/lang/String;)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_4
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 111
    .line 112
    iget v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 113
    .line 114
    new-instance v4, Lcom/narvii/chat/video/fragments/VVChatMainFragment$14;

    .line 115
    .line 116
    .line 117
    invoke-direct {v4, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$14;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 118
    .line 119
    new-instance v5, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;

    .line 120
    .line 121
    .line 122
    invoke-direct {v5, p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3, v4, v5}, Lcom/narvii/chat/video/utils/VVChatHelper;->showCloseOrMiniLiveChannelHintDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;

    .line 126
    :goto_0
    return v1

    .line 127
    .line 128
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCurChannelFinishing:Z

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 131
    .line 132
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 133
    .line 134
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 139
    return v0
.end method

.method public onChannelCameraPreview(IZLandroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x134

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;I)V

    .line 6
    return-void
.end method

.method public onChannelEntryClicked(IZLandroid/os/Bundle;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v2, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    new-instance v7, Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    const-string p2, "showGoLive"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    move v4, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x5

    .line 57
    .line 58
    if-ne p1, v0, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 70
    move-result-object v0

    .line 71
    move-object v4, v0

    .line 72
    .line 73
    check-cast v4, Lcom/narvii/chat/ChatFragment;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPlayListFragment(Lcom/narvii/chat/ChatFragment;Z)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    new-instance v1, Lcom/narvii/chat/video/fragments/g;

    .line 84
    move-object v2, v1

    .line 85
    move-object v3, p0

    .line 86
    move v5, p1

    .line 87
    move v6, p2

    .line 88
    move-object v7, p3

    .line 89
    move-object v8, v0

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v2 .. v8}, Lcom/narvii/chat/video/fragments/g;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setVideoPickCallback(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;)V

    .line 100
    :cond_5
    :goto_0
    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 2
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    return-void

    .line 59
    .line 60
    :cond_2
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_7

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isIntentLeave:Z

    .line 69
    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    const/16 p1, 0x63

    .line 73
    .line 74
    if-ne p2, p1, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showPrivateCallLimitDialog()V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isPrivateCallLauncher()Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->isEnding()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-nez p1, :cond_4

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 100
    .line 101
    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedToast(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 108
    goto :goto_1

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 112
    .line 113
    :cond_7
    :goto_1
    const-string p1, "fromLiveEvent"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 117
    move-result p1

    .line 118
    .line 119
    if-eqz p1, :cond_8

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 122
    .line 123
    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedToast(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 130
    :cond_8
    :goto_2
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceInCurrentChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 57
    :cond_2
    :goto_0
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
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->currentChannelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceInCurrentChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a09e5

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->changeNetworkStatusVisibility(Z)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string p1, "Navbar"

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;)Z

    .line 26
    :goto_0
    return-void
.end method

.method public onCloseClicked()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$4;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 6
    .line 7
    const-string v1, "Navbar"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;Lcom/narvii/util/Callback;)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContainer:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    const v0, 0x7f070236

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContainer:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    :goto_0
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
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

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
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    const-string v0, "config"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 34
    .line 35
    const-string v0, "callScreen"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 44
    .line 45
    const-string v0, "push"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 66
    .line 67
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatLogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 89
    move-result v0

    .line 90
    .line 91
    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    const-string v1, "vvCallPendingIntent"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    check-cast v0, Landroid/content/Intent;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 110
    .line 111
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 120
    move-result v0

    .line 121
    .line 122
    if-nez v0, :cond_0

    .line 123
    .line 124
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 125
    .line 126
    new-instance v1, Landroid/content/IntentFilter;

    .line 127
    .line 128
    const-string v2, "com.narvii.action.LIVE_CHANNEL_QUIT"

    .line 129
    .line 130
    .line 131
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 137
    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    .line 139
    .line 140
    const-string v2, "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH"

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 147
    .line 148
    :cond_0
    const-string v0, "creator"

    .line 149
    .line 150
    const-string v1, "channel_type"

    .line 151
    .line 152
    const-string v2, "id"

    .line 153
    .line 154
    if-eqz p1, :cond_1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 164
    move-result v1

    .line 165
    .line 166
    iput v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 170
    move-result v0

    .line 171
    .line 172
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 173
    .line 174
    const-string v0, "payload_vvchat_dialog_shown"

    .line 175
    const/4 v1, 0x0

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 179
    move-result p1

    .line 180
    .line 181
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    .line 182
    goto :goto_0

    .line 183
    .line 184
    .line 185
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 192
    move-result p1

    .line 193
    .line 194
    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 198
    move-result p1

    .line 199
    .line 200
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 201
    .line 202
    :goto_0
    const-string p1, "thread"

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 209
    .line 210
    .line 211
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 215
    .line 216
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 223
    .line 224
    if-nez p1, :cond_2

    .line 225
    .line 226
    new-instance p1, Landroid/os/Bundle;

    .line 227
    .line 228
    .line 229
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 230
    .line 231
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    const-string v0, "live_content_fragment"

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    instance-of v0, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 244
    .line 245
    if-eqz v0, :cond_3

    .line 246
    .line 247
    check-cast p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 248
    .line 249
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->setCollapseChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V

    .line 253
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0341

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->leaveChannelAsGuest(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public onEntryViewVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public onFansClubStatusActive()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    .line 4
    return-void
.end method

.method public onLiveChannelError(ILcom/narvii/util/ws/WsError;)V
    .locals 2
    .param p2    # Lcom/narvii/util/ws/WsError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    :cond_1
    const/16 v0, 0x6a

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0d01d2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0a039d

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    const p2, 0x7f0a0627

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    const/16 v0, 0x65

    .line 81
    .line 82
    if-eq p1, v0, :cond_3

    .line 83
    .line 84
    const/16 v0, 0x66

    .line 85
    .line 86
    if-ne p1, v0, :cond_4

    .line 87
    .line 88
    :cond_3
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    iget-object p2, p2, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    new-instance p2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$17;

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$17;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f120df2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 118
    :cond_4
    :goto_0
    return-void
.end method

.method public onLiveContentStatusChanged(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

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
    const-string v0, "statistics"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->statExpanded:Ljava/lang/Boolean;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    const-string p1, "Collapse Live Section"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "Collapse Live Section Total"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 36
    .line 37
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->statExpanded:Ljava/lang/Boolean;

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x1

    .line 42
    .line 43
    if-ne p1, v1, :cond_5

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->statExpanded:Ljava/lang/Boolean;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->statExpanded:Ljava/lang/Boolean;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    if-ne p1, v1, :cond_4

    .line 57
    .line 58
    const-string p1, "Expand Live Section"

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    const-string v0, "Expand Live Section Total"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 68
    .line 69
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->statExpanded:Ljava/lang/Boolean;

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->statExpanded:Ljava/lang/Boolean;

    .line 77
    :cond_5
    :goto_0
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 3
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
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelParams()V

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x3

    .line 26
    .line 27
    if-ne p1, v1, :cond_6

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->saveCurChannelInfo()V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->shouldReportActiveStatus(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 82
    .line 83
    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->reportLiveLayerActiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isPrivateCallLauncher()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    .line 122
    move-result p1

    .line 123
    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    if-eqz p3, :cond_7

    .line 127
    .line 128
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 129
    .line 130
    if-ne p1, v0, :cond_7

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 133
    .line 134
    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 138
    move-result-object p3

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0, p2, p3}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(IILjava/lang/String;)V

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    const/4 p3, 0x2

    .line 144
    .line 145
    if-ne p1, p3, :cond_7

    .line 146
    const/4 p1, 0x0

    .line 147
    .line 148
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    .line 155
    :cond_7
    :goto_0
    return-void
.end method

.method public onNetworkStatusUpdated(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tvNetworkStatus:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    const v0, 0x7f121025

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vNetworkContainer:Landroid/view/View;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    const v0, 0x7f121024

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x3

    .line 50
    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    const v0, 0x7f120d3f

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 70
    :cond_3
    :goto_0
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
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    .line 14
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    .line 7
    .line 8
    const/16 v0, 0x6d

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpChannelType:I

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpIsCreator:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpExtra:Landroid/os/Bundle;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->hideAll()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    const/16 v0, 0x132

    .line 40
    .line 41
    if-ne p1, v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->hideAll()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_1
    const/16 v0, 0x134

    .line 59
    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    new-instance p1, Lcom/narvii/chat/ChatCameraPreviewDialog;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/narvii/chat/ChatCameraPreviewDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 66
    .line 67
    new-instance v0, Lcom/narvii/chat/video/fragments/h;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/h;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatCameraPreviewDialog;->setPreviewFinishCallback(Le8/p;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/chat/BottomPopupDialog;->show()V

    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->noNeedAutoJoin:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    const-string v1, "relaunch"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    instance-of v3, v1, Lcom/narvii/chat/ChatFragment;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/chat/ChatFragment;

    .line 43
    .line 44
    const-string v3, "forceDisableFloatingWindow"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 48
    move-result v3

    .line 49
    xor-int/2addr v3, v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lcom/narvii/chat/ChatFragment;->setAllowFloatingWindow(Z)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v3

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 60
    move-result-wide v5

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-gez v1, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 68
    move-result-wide v3

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 76
    .line 77
    const-string v5, "expireTime"

    .line 78
    .line 79
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 83
    move-result-wide v8

    .line 84
    .line 85
    cmp-long v1, v8, v6

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    const-wide/16 v5, 0x3e8

    .line 90
    mul-long/2addr v8, v5

    .line 91
    .line 92
    cmp-long v1, v8, v3

    .line 93
    .line 94
    if-gez v1, :cond_2

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 102
    .line 103
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 104
    .line 105
    :cond_4
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-nez v1, :cond_5

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 120
    .line 121
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v4}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    .line 138
    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    .line 146
    .line 147
    :cond_5
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 160
    .line 161
    .line 162
    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 163
    move-result v3

    .line 164
    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 168
    .line 169
    .line 170
    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 171
    move-result v3

    .line 172
    .line 173
    if-eqz v3, :cond_6

    .line 174
    move v0, v2

    .line 175
    .line 176
    :cond_6
    if-eqz v0, :cond_7

    .line 177
    .line 178
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    .line 179
    .line 180
    if-eqz v2, :cond_7

    .line 181
    .line 182
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 183
    .line 184
    const/16 v3, 0x8

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    :cond_7
    if-eqz v0, :cond_8

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 192
    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 197
    .line 198
    iget v0, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 199
    .line 200
    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 201
    .line 202
    iget-object v0, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 210
    move-result v0

    .line 211
    .line 212
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 213
    .line 214
    .line 215
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 216
    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "id"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "channel_type"

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    const-string v0, "creator"

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    const-string v0, "payload_vvchat_dialog_shown"

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1
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
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 22
    .line 23
    iget p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    .line 28
    .line 29
    const/16 p2, 0x8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    .line 6
    const p2, 0x7f0a09e7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vNetworkContainer:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a09e6

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tvNetworkStatus:Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a09e5

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->btnNetWorkStatusClose:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a0c5c

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0a0dee

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContainer:Landroid/view/View;

    .line 54
    .line 55
    .line 56
    const p2, 0x7f0a1011

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->setChannelEntryClickListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;)V

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->setEntryViewVisibilityChangeListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;)V

    .line 73
    .line 74
    .line 75
    const p2, 0x7f0a1010

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Landroid/widget/FrameLayout;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentView:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 99
    move-result-object p1

    .line 100
    const/4 p2, 0x1

    .line 101
    .line 102
    if-eqz p1, :cond_0

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-eqz p1, :cond_0

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 126
    move-result p1

    .line 127
    .line 128
    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 134
    move-result p1

    .line 135
    .line 136
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinAsPresenter()Z

    .line 150
    move-result p1

    .line 151
    .line 152
    if-eqz p1, :cond_2

    .line 153
    const/4 p1, 0x5

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestTypeForHost(I)Z

    .line 157
    move-result p1

    .line 158
    .line 159
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 160
    .line 161
    if-eqz p1, :cond_1

    .line 162
    .line 163
    const-string p1, "android.permission.CAMERA"

    .line 164
    .line 165
    .line 166
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    goto :goto_0

    .line 169
    .line 170
    .line 171
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    :goto_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    const/16 v0, 0x132

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_2
    const-string p1, "fromLiveEvent"

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 200
    move-result p1

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    .line 205
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needBlockLiveChannelRequest()Z

    .line 206
    move-result p1

    .line 207
    .line 208
    if-eqz p1, :cond_3

    .line 209
    return-void

    .line 210
    .line 211
    .line 212
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    if-nez p1, :cond_4

    .line 216
    .line 217
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    .line 218
    goto :goto_1

    .line 219
    .line 220
    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    iget-boolean p1, p1, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 225
    .line 226
    if-nez p1, :cond_7

    .line 227
    .line 228
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->hideAll()V

    .line 232
    .line 233
    .line 234
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 235
    .line 236
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 237
    .line 238
    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 239
    .line 240
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 241
    .line 242
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 243
    const/4 v3, 0x2

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->joinLiveChannel(ILjava/lang/String;II)V

    .line 247
    goto :goto_1

    .line 248
    .line 249
    :cond_5
    const-string p1, "showGoLive"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 253
    move-result p1

    .line 254
    .line 255
    if-eqz p1, :cond_6

    .line 256
    .line 257
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->showGoLive()V

    .line 261
    goto :goto_1

    .line 262
    .line 263
    :cond_6
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    .line 264
    .line 265
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 266
    .line 267
    .line 268
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 269
    .line 270
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    .line 271
    .line 272
    if-nez p1, :cond_8

    .line 273
    .line 274
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    .line 275
    .line 276
    const-string p1, "payload"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    const-class p2, Lcom/narvii/pushservice/PushPayload;

    .line 283
    .line 284
    .line 285
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 286
    move-result-object p1

    .line 287
    .line 288
    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    .line 289
    .line 290
    if-eqz p1, :cond_8

    .line 291
    .line 292
    .line 293
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V

    .line 294
    :cond_8
    return-void
.end method

.method public removeLiveContentFragment()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLiveContentForceRemoved()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v0}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public setContentVisibilityChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    return-void
.end method

.method public setNoNeedAutoJoin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->noNeedAutoJoin:Z

    return-void
.end method

.method public showFloatingWindow()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showNotification()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setMainChannelChatThread(Lcom/narvii/model/ChatThread;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingRunnable:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v3, 0xc8

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/chat/rtc/RtcService;->postShowFloatingRunnable(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 30
    return-void
.end method

.method public tryToShowMinWindow(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->requestDrawOverlays(Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;)V

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logMinimizeLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method
