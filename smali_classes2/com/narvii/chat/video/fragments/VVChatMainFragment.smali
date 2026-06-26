.class public Lcom/narvii/chat/video/fragments/VVChatMainFragment;
.super Lcom/narvii/app/NVFragment;
.source "VVChatMainFragment.java"

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

.field private static final TAG:Ljava/lang/String;

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
    .locals 1

    .line 108
    const-class v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel:Z

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    .line 174
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCurChannelFinishing:Z

    .line 175
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoFetched:Z

    .line 176
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    .line 180
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    .line 184
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 973
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$12;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$12;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->finishLiveChannelCallback:Lcom/narvii/util/Callback;

    .line 1336
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingRunnable:Ljava/lang/Runnable;

    .line 1458
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    return-void
.end method

.method static synthetic access$1102(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendVVChatPermissionRequest()V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/video/ui/floating/FloatingPermissionUtils;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isIntentLeave:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isPrivateCallLauncher()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/call/CallScreenService;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isVoiceType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isVideoType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->forceFinishSameThreadActivity()V

    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isScreenRoomType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->closeCurrentChatRoom()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatLogHelper;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoFetched:Z

    return p1
.end method

.method static synthetic access$900(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 1094
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 1098
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 1099
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 1100
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V

    .line 1101
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V

    return-void
.end method

.method private changeNetworkStatusVisibility(Z)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vNetworkContainer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1024
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private closeCurrentChatRoom()V
    .locals 2

    .line 759
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->forceFinishSameThreadActivity()V

    const/4 v0, 0x1

    const-string v1, "Navbar"

    .line 760
    invoke-virtual {p0, v1, v0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private configLiveChannelFrame()V
    .locals 9

    .line 1117
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1120
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1123
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "live_content_fragment"

    .line 1124
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1125
    instance-of v3, v2, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget v4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {v3, v4}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isMappedLiveChannel(I)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 1129
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 1130
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1131
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v2, 0x0

    .line 1132
    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 1135
    :cond_3
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez v2, :cond_7

    .line 1136
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    if-eq v2, v4, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    const/4 v5, 0x4

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_4

    goto :goto_0

    .line 1145
    :cond_4
    new-instance v2, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-direct {v2}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    goto :goto_0

    .line 1142
    :cond_5
    new-instance v2, Lcom/narvii/chat/video/fragments/VideoChatFragment;

    invoke-direct {v2}, Lcom/narvii/chat/video/fragments/VideoChatFragment;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    goto :goto_0

    .line 1138
    :cond_6
    new-instance v2, Lcom/narvii/chat/video/fragments/VoiceChatFragment;

    invoke-direct {v2}, Lcom/narvii/chat/video/fragments/VoiceChatFragment;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 1148
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-boolean v6, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    const-string v7, "Source"

    invoke-virtual {p0, v7}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStartLiveChannel(IZLjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 1150
    :cond_7
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-nez v2, :cond_8

    .line 1151
    sget-object v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no live channel fragment to handle channel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1154
    :cond_8
    invoke-virtual {v2, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->setCollapseChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V

    .line 1155
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1157
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1159
    :cond_9
    iget-boolean v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    const-string v6, "creator"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1160
    iget v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    const-string v6, "channel_type"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1161
    iget-object v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_a

    .line 1162
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1164
    :cond_a
    iget-object v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1165
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1166
    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    if-eq v2, v3, :cond_b

    const-string v2, "fromLiveEvent"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const v2, 0x7f01003e

    const v3, 0x7f01002b

    .line 1167
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_b
    const v2, 0x7f090b09

    .line 1169
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1171
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    if-eqz v0, :cond_d

    .line 1172
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isInMiniStatus()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v4, 0x2

    :cond_c
    invoke-interface {v0, v4}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    :cond_d
    return-void
.end method

.method private configLiveChannelParams()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 1002
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setIsChannelCreator(Z)V

    .line 1003
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setMainChannelChatThread(Lcom/narvii/model/ChatThread;)V

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

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 736
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 741
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private forceFinishSameThreadActivity()V
    .locals 4

    .line 764
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 768
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    const-string v3, "threadId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private hasAnotherOngoingChannel()Z
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasMemberOnChannel()Z
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 477
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAutoJoinAsPresenter()Z
    .locals 1

    const-string v0, "auto_join_as_presenter"

    .line 561
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isAutoJoinChannel()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPrivateCallLauncher()Z
    .locals 3

    .line 982
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isPrivateCall(Lcom/narvii/model/ChatThread;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScreenRoomType()Z
    .locals 2

    .line 1401
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

    .line 1396
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

    .line 1392
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

    .line 1428
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needBlockLiveChannelRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 1432
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->joinChannelAsGuest(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;)Z
    .locals 1

    .line 834
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

    .line 843
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isIntentLeave:Z

    .line 845
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 846
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 853
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;

    invoke-direct {v3, p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, v1, v0, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    return v2

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 865
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    return v0

    .line 868
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$9;

    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$9;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    return v2

    .line 847
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    return v0
.end method

.method private needBlockLiveChannelRequest()Z
    .locals 4

    .line 1440
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1444
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoFetched:Z

    if-nez v0, :cond_1

    .line 1445
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendThreadDetailRequest(Z)Z

    return v2

    :cond_1
    const-string v0, "account"

    .line 1448
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1449
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1450
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/model/ChatThread;->needHidden:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private promoteAsAudienceInCurrentChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 592
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 593
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    if-nez v0, :cond_2

    .line 596
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 597
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinAsPresenter()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->noNeedAutoJoin:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCurChannelFinishing:Z

    if-nez v0, :cond_1

    .line 598
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToAutoJoinCurrentChannel()V

    goto :goto_0

    .line 600
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 1105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 1109
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 1110
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 1111
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V

    .line 1112
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveCurChannelInfo()V
    .locals 3

    .line 1405
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    const-string v2, "isCreator"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1412
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    const-string v1, "__communityId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1415
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    const-string v2, "channel_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1416
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    const-string v1, "__fromGlobalChat"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1417
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    const-string v1, "__community"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    const-string v1, "__hideDrawer"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1420
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->saveCurrentLiveChannelInfo(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendThreadDetailRequest(Z)Z
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadFullInfoRequestSent:Z

    .line 943
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;

    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendThreadDetailRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendVVChatPermissionRequest()V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "vvChatJoinType"

    .line 966
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 968
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/narvii/chat/util/ChatRequestHelper;->sendVVChatPermissionRequest(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private setThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 453
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 457
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->saveCurChannelInfo()V

    return-void
.end method

.method private shouldReportActiveStatus(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1007
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showPresenterNotExistedDialog()V
    .locals 4

    .line 994
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->presenterNotExistedDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v2, v2, Lcom/narvii/chat/rtc/RtcService;->oldChannelType:I

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->finishLiveChannelCallback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedDialog(IILcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->presenterNotExistedDialog:Lcom/narvii/util/dialog/AlertDialog;

    return-void
.end method

.method private showPrivateCallLimitDialog()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->privateCallLimitDialog:Lcom/narvii/widget/ACMAlertDialog;

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->finishLiveChannelCallback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallLimitDialog(ILcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->privateCallLimitDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method

.method private showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V
    .locals 5

    .line 1474
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1477
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    const-string v1, "InviteToTalk"

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 1478
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 1479
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v1, 0x7f090c10

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1480
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v1, 0x7f09059b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f07b6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    .line 1481
    :cond_1
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v2, v3

    .line 1480
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v1, 0x7f09094c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/pushservice/PushPayload;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1502
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private tryToAutoJoinCurrentChannel()V
    .locals 4

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 607
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->hasAnotherOngoingChannel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    :goto_0
    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;

    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showChannelComeLiveDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    goto :goto_1

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 8

    .line 540
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->setEmbedFragment(Z)V

    .line 545
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result v5

    iget-boolean v7, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateLiveChannelEntryView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;ZZZ)V

    return-void
.end method


# virtual methods
.method public getLiveContentHeight()I
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getContentHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public initLiveChannel(IZLandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x6d

    .line 482
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;I)V

    return-void
.end method

.method public initLiveChannel(IZLandroid/os/Bundle;I)V
    .locals 1

    .line 486
    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpChannelType:I

    .line 487
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpIsCreator:Z

    .line 488
    iput-object p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpExtra:Landroid/os/Bundle;

    .line 489
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestTypeForHost(I)Z

    move-result p1

    const-string p2, "android.permission.RECORD_AUDIO"

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, p3

    const-string p2, "android.permission.CAMERA"

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, p3

    .line 492
    :goto_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p2

    .line 493
    invoke-virtual {p2, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 494
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1, p4}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 496
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

    const-string v0, "HEEEEEEY SEXY BABY"

    const-string v1, "TRYING TO JOIN IN SHIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string v2, "joinVVChat"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return v1

    .line 779
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 780
    :goto_1
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/narvii/chat/rtc/RtcService;->isAlreadyJoinedCurChannel(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 783
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    move-result v3

    if-nez v3, :cond_4

    .line 784
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    return v1

    .line 787
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->hasAnotherOngoingChannel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 788
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    new-instance v3, Lcom/narvii/chat/video/fragments/VVChatMainFragment$6;

    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$6;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showSwitchChannelDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 815
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_5

    .line 816
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatFragment;->setAllowFloatingWindow(Z)V

    :cond_5
    return v1

    .line 820
    :cond_6
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendThreadDetailRequest(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 822
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendVVChatPermissionRequest()V

    .line 824
    :cond_7
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    iget v5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/narvii/chat/rtc/RtcService;->joinLiveChannel(ILjava/lang/String;II)V

    .line 826
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelParams()V

    .line 827
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 828
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/narvii/chat/signalling/ProcessKillMonitorService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_8
    return v2
.end method

.method public synthetic lambda$onChannelEntryClicked$1$VVChatMainFragment(Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->hidePlayListFragment(Lcom/narvii/chat/ChatFragment;)V

    .line 1261
    invoke-virtual {p0, p2, p3, p4}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 1262
    invoke-virtual {p5, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setVideoPickCallback(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;)V

    return-void
.end method

.method public synthetic lambda$onPermissionGranted$0$VVChatMainFragment(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 521
    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpChannelType:I

    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 522
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpIsCreator:Z

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 524
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpExtra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "cameraMute"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "cameraFlip"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    .line 532
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public leaveCurrentLiveChannel(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 880
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public leaveCurrentLiveChannel(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 884
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V
    .locals 10

    const/4 v0, 0x0

    .line 888
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 889
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 890
    .line 891
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v5

    .line 895
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v7, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v8, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    new-instance v9, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;

    move-object v1, v9

    move-object v2, p0

    move v3, p3

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v7, v8, v9}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 915
    :cond_1
    new-instance v0, Lcom/narvii/chat/video/ChatLogEventHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 917
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v0

    .line 918
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    if-eqz p3, :cond_2

    .line 920
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 921
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 924
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 927
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p2, p3, p1, v0}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 929
    :cond_4
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p2, p3, p1, v0}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    :goto_1
    return-void
.end method

.method public minimizeLiveChannelRoom(Ljava/lang/String;)V
    .locals 3

    .line 1071
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToShowMinWindow(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logMinimizeLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1047
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x66

    if-ne p1, p2, :cond_2

    .line 1049
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "huawei"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-le p1, p2, :cond_1

    .line 1053
    new-instance p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    const-wide/16 p2, 0x12c

    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 1064
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .line 1182
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1185
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->getPlayListFragment(Lcom/narvii/chat/ChatFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    move-result-object v0

    .line 1187
    instance-of v2, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    if-eqz v2, :cond_1

    .line 1188
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->dismiss()V

    return v1

    .line 1192
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return v1

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1198
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 1199
    invoke-static {v2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1205
    :cond_3
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    invoke-virtual {v2}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 1206
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->minimizeLiveChannelRoom(Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :cond_4
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    new-instance v4, Lcom/narvii/chat/video/fragments/VVChatMainFragment$14;

    invoke-direct {v4, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$14;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    new-instance v5, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;

    invoke-direct {v5, p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/narvii/chat/video/utils/VVChatHelper;->showCloseOrMiniLiveChannelHintDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;

    :goto_0
    return v1

    .line 1201
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCurChannelFinishing:Z

    .line 1202
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onChannelCameraPreview(IZLandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x134

    .line 1235
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;I)V

    return-void
.end method

.method public onChannelEntryClicked(IZLandroid/os/Bundle;)V
    .locals 9

    .line 1240
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    return-void

    .line 1247
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1248
    new-instance v2, Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1249
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_2

    const-string p2, "showGoLive"

    .line 1251
    invoke-virtual {v7, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1253
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 1255
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_5

    .line 1256
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/narvii/chat/ChatFragment;

    .line 1257
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0, v4, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPlayListFragment(Lcom/narvii/chat/ChatFragment;Z)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1259
    new-instance v1, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;

    move-object v2, v1

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setVideoPickCallback(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;)V

    goto :goto_0

    .line 1268
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->initLiveChannel(IZLandroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 2

    .line 644
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 647
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 648
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 652
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;Z)V

    .line 653
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    .line 654
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 655
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 658
    :cond_2
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 659
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isIntentLeave:Z

    if-nez p1, :cond_6

    const/16 p1, 0x63

    if-ne p2, p1, :cond_3

    .line 661
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showPrivateCallLimitDialog()V

    goto :goto_1

    .line 662
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isPrivateCallLauncher()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->isEnding()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 666
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    goto :goto_1

    .line 663
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedToast(I)V

    .line 664
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    goto :goto_1

    .line 669
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    :cond_7
    :goto_1
    const-string p1, "fromLiveEvent"

    .line 672
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 673
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedToast(I)V

    .line 674
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 570
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 574
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 578
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceInCurrentChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_2
    :goto_0
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

    .line 728
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 729
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->currentChannelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 730
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceInCurrentChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_1

    const v0, 0x7f090750

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 555
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->changeNetworkStatusVisibility(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "Navbar"

    .line 552
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onCloseClicked()Z
    .locals 2

    .line 750
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$4;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    const-string v1, "Navbar"

    invoke-direct {p0, v1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;Lcom/narvii/util/Callback;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1326
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1327
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1329
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContainer:Landroid/view/View;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 1331
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701b7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1332
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContainer:Landroid/view/View;

    invoke-virtual {v1, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 256
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "rtc"

    .line 257
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string v0, "account"

    .line 258
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "config"

    .line 259
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string v0, "callScreen"

    .line 260
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const-string v0, "push"

    .line 261
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 262
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 263
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 264
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatLogHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatLogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 265
    new-instance v0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 266
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    .line 267
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "vvCallPendingIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 268
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 269
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.LIVE_CHANNEL_QUIT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 271
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    const-string v0, "creator"

    const-string v1, "channel_type"

    const-string v2, "id"

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 277
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    const/4 v0, 0x0

    const-string v1, "payload_vvchat_dialog_shown"

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 282
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 283
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    :goto_0
    const-string p1, "thread"

    .line 286
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 288
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    if-nez p1, :cond_2

    .line 289
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannelInfo:Landroid/os/Bundle;

    .line 292
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "live_content_fragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 293
    instance-of v0, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-eqz v0, :cond_3

    .line 294
    check-cast p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 295
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->setCollapseChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b030e

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 439
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 443
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 444
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->leaveChannelAsGuest(ILjava/lang/String;)V

    return-void
.end method

.method public onEntryViewVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public onFansClubStatusActive()V
    .locals 0

    .line 1454
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    return-void
.end method

.method public onLiveChannelError(ILcom/narvii/util/ws/WsError;)V
    .locals 2

    .line 1291
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 1295
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/16 v0, 0x6a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1298
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b01b1

    .line 1299
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v0, 0x7f0902d0

    .line 1300
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p2, p2, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0904da

    .line 1301
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1308
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1309
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 1311
    :cond_3
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1312
    iget-object p2, p2, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f0cca

    .line 1313
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$17;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$17;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1319
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1320
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onLiveContentStatusChanged(I)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 3

    .line 691
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 694
    :cond_0
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 696
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelParams()V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    if-eqz p3, :cond_2

    .line 698
    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 699
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->saveCurChannelInfo()V

    .line 701
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 702
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 703
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 705
    :cond_3
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->shouldReportActiveStatus(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 706
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    invoke-virtual {p1, p2, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->reportLiveLayerActiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V

    .line 708
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isPrivateCallLauncher()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 709
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 710
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz p3, :cond_7

    iget p1, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne p1, v0, :cond_7

    .line 713
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    iget p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(IILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    const/4 p1, 0x0

    .line 717
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    .line 718
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 719
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onNetworkStatusUpdated(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1031
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tvNetworkStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f0f0f0e

    .line 1032
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vNetworkContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 1035
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1038
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0f0d

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 1040
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0c0e

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 432
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 433
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeChannelRelatedListener(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 434
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 501
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    .line 504
    iget p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpChannelType:I

    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 505
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpIsCreator:Z

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 506
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->permissionTmpExtra:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveExtraBundle:Landroid/os/Bundle;

    .line 507
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 509
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 510
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->hideAll()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x132

    if-ne p1, v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 515
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->hideAll()V

    .line 516
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x134

    if-ne p1, v0, :cond_2

    .line 519
    new-instance p1, Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-direct {p1, p0}, Lcom/narvii/chat/ChatCameraPreviewDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 520
    new-instance v0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$5jIdzrTqcG5uJ05PCxmHGXGw7zU;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$5jIdzrTqcG5uJ05PCxmHGXGw7zU;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatCameraPreviewDialog;->setPreviewFinishCallback(Lkotlin/jvm/functions/Function2;)V

    .line 535
    invoke-virtual {p1}, Lcom/narvii/chat/BottomPopupDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 381
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->noNeedAutoJoin:Z

    .line 383
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-string v1, "relaunch"

    .line 385
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 387
    instance-of v3, v1, Lcom/narvii/chat/ChatFragment;

    if-eqz v3, :cond_0

    .line 388
    check-cast v1, Lcom/narvii/chat/ChatFragment;

    const-string v3, "forceDisableFloatingWindow"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/narvii/chat/ChatFragment;->setAllowFloatingWindow(Z)V

    .line 390
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 391
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    const-wide/16 v5, 0x0

    const-string v7, "expireTime"

    invoke-virtual {v1, v7, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_2

    const-wide/16 v5, 0x3e8

    mul-long v7, v7, v5

    cmp-long v1, v7, v3

    if-gez v1, :cond_2

    goto :goto_1

    .line 396
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 401
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->pendingIntent:Landroid/content/Intent;

    .line 406
    :cond_4
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 407
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->backFromPermission:Z

    if-nez v1, :cond_5

    .line 409
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 410
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinCurChannelAsGuest()V

    .line 413
    :cond_5
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 414
    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 415
    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 416
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 417
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/16 v3, 0x8

    .line 418
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v0, :cond_8

    .line 420
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-nez v0, :cond_8

    .line 421
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 422
    iget v0, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iput v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 423
    iget-object v0, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 425
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 301
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    const-string v1, "channel_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    const-string v1, "creator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    const-string v1, "payload_vvchat_dialog_shown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 216
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 217
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 218
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 680
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinChannel()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 684
    iget p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    if-nez p1, :cond_1

    .line 685
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 316
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090752

    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vNetworkContainer:Landroid/view/View;

    const p2, 0x7f090751

    .line 319
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tvNetworkStatus:Landroid/widget/TextView;

    const p2, 0x7f090750

    .line 320
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->btnNetWorkStatusClose:Landroid/view/View;

    .line 321
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->btnNetWorkStatusClose:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090996

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vLandingContainer:Landroid/view/View;

    const p2, 0x7f090b09

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContainer:Landroid/view/View;

    const p2, 0x7f090cec

    .line 326
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/video/view/LiveChannelEntryView;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    .line 327
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->setChannelEntryClickListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;)V

    .line 328
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p2, p0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->setEntryViewVisibilityChangeListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;)V

    const p2, 0x7f090ceb

    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentView:Landroid/widget/FrameLayout;

    .line 330
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 331
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 332
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    .line 335
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 336
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 337
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    goto/16 :goto_1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isAutoJoinAsPresenter()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 340
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isCameraPermissionRequestTypeForHost(I)Z

    move-result p1

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/String;

    aput-object v1, p1, v2

    const-string v0, "android.permission.CAMERA"

    aput-object v0, p1, p2

    goto :goto_0

    :cond_1
    new-array p1, p2, [Ljava/lang/String;

    aput-object v1, p1, v2

    .line 343
    :goto_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 345
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x132

    .line 346
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto :goto_1

    :cond_2
    const-string p1, "fromLiveEvent"

    .line 348
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 349
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needBlockLiveChannelRequest()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-nez p1, :cond_4

    .line 353
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    goto :goto_1

    .line 354
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-boolean p1, p1, Lcom/narvii/model/ChatThread;->needHidden:Z

    if-nez p1, :cond_7

    .line 355
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->hideAll()V

    .line 356
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->configLiveChannelFrame()V

    .line 357
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    iget v3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/narvii/chat/rtc/RtcService;->joinLiveChannel(ILjava/lang/String;II)V

    goto :goto_1

    :cond_5
    const-string p1, "showGoLive"

    .line 359
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 360
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelEntryView:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-virtual {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->showGoLive()V

    goto :goto_1

    .line 363
    :cond_6
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    .line 366
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 368
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    if-nez p1, :cond_8

    .line 369
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->payloadInViteDialogShown:Z

    const-string p1, "payload"

    .line 370
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/pushservice/PushPayload;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    if-eqz p1, :cond_8

    .line 372
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V

    :cond_8
    return-void
.end method

.method public removeLiveContentFragment()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1079
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->isCreator:Z

    .line 1080
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLiveContentForceRemoved()V

    .line 1081
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->updateLiveChannelViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 1082
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1086
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v1, 0x0

    .line 1087
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelFragment:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 1088
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    if-eqz v1, :cond_1

    .line 1089
    invoke-interface {v1, v0}, Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;->onLiveContentStatusChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentVisibilityChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->liveChannelContentListener:Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;

    return-void
.end method

.method public setNoNeedAutoJoin(Z)V
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->noNeedAutoJoin:Z

    return-void
.end method

.method public showFloatingWindow()V
    .locals 5

    const/4 v0, 0x0

    .line 1352
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->promoteAsAudienceRequestSent:Z

    const/4 v0, 0x1

    .line 1353
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->needJoinAsGuest:Z

    .line 1354
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showNotification()V

    .line 1355
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setMainChannelChatThread(Lcom/narvii/model/ChatThread;)V

    .line 1356
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/chat/rtc/RtcService;->postShowFloatingRunnable(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public tryToShowMinWindow(Ljava/lang/String;)V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    if-eqz v0, :cond_1

    .line 1364
    new-instance v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->requestDrawOverlays(Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;)V

    if-eqz p1, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->vvChatLogHelper:Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logMinimizeLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    :cond_1
    :goto_0
    return-void
.end method
