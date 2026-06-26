.class public Lcom/narvii/chat/rtc/RtcService;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/chat/signalling/SignallingListener;
.implements Lcom/narvii/video/model/RtcEventHandler;
.implements Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;
.implements Lcom/narvii/chat/waitinglist/WaitingListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_FREE:Ljava/lang/String; = "com.narvii.action.CAMERA_FREE"

.field public static final ACTION_CAMERA_TAKEN:Ljava/lang/String; = "com.narvii.action.CAMERA_TAKEN"

.field public static final ACTION_CHAT_ACTIVITY_FORCE_FINISH:Ljava/lang/String; = "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH"

.field public static final ACTION_LIVE_CHANNEL_QUIT:Ljava/lang/String; = "com.narvii.action.LIVE_CHANNEL_QUIT"

.field public static final CHANNEL_USER_LIMIT:I = 0x7

.field private static final CONNECTION_CHECK_INTERVAL:J = 0x1d4c0L

.field private static final IS_IN_MINI_STATUS:Ljava/lang/String; = "isMiniStatus"

.field private static final IS_MINI_ALL_MUTE:Ljava/lang/String; = "isMiniAllMute"

.field public static final KEY_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field public static final KEY_CHAT_THREAD:Ljava/lang/String; = "thread"

.field public static final KEY_COMMUNITY:Ljava/lang/String; = "__community"

.field public static final KEY_COMMUNITY_ID:Ljava/lang/String; = "__communityId"

.field public static final KEY_FROM_GLOBAL_CHAT:Ljava/lang/String; = "__fromGlobalChat"

.field public static final KEY_HIDE_DRAWER:Ljava/lang/String; = "__hideDrawer"

.field public static final KEY_IS_CREATOR:Ljava/lang/String; = "isCreator"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "threadId"

.field private static final LOCAL_MUTE_ACTION_ADD:I = 0x0

.field private static final LOCAL_MUTE_ACTION_REMOVE:I = 0x1

.field public static final SHOWING_MODE_MINI:I = 0x1

.field public static final SHOWING_MODE_NONE:I = -0x1

.field public static final SHOWING_MODE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RtcService"

.field private static final VOLUME_ZERO_UPDATE_TIME_LIMIT:J = 0x1388L

.field private static showFloatingWindowHandler:Landroid/os/Handler;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private volatile agoraJoinRequested:Z

.field private callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private channelErrorDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/LiveChannelErrorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public channelShowingMode:I

.field private channelStatusChangeDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/LiveChannelChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field channelUserCompareNew:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field

.field channelUserCompareOld:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field

.field private channelUserWrapperStatusDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field clickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

.field connectionCheckRunnable:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field private curChannelMiniInfo:Landroid/os/Bundle;

.field private curLiveChannelInfo:Landroid/os/Bundle;

.field private dataStreamListeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/rtc/DataStreamListener;",
            ">;"
        }
    .end annotation
.end field

.field private floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

.field private getAgoraChannelInfoCallBack:Lcom/narvii/util/Callback;

.field private hasShowingThread:Z

.field private isLostConnectionStatus:Z

.field private isPrivateMainChannelFullBefore:Z

.field public isScreenRoomRoleSet:Z

.field private joinAgoraMessageDispatched:Z

.field private lastVolumeZeroTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastVolumes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public liveExtraBundle:Landroid/os/Bundle;

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private localChannelUserStatusDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private localMuteUserList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localMuteUserListDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mainChannelChatThread:Lcom/narvii/model/ChatThread;

.field private mainChannelUserWrapperList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field private musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

.field public muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/MiniContentMuteStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private networkStatusDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

.field private nvContext:Lcom/narvii/app/NVContext;

.field public oldChannelType:I

.field private oldTotalVolume:I

.field private pendingFloatingThreadId:Ljava/lang/String;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field relaunchLiveChannelListener:Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;

.field private repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

.field private rtcManager:Lcom/narvii/chat/video/RtcChatManager;

.field public screenRoomHostUid:I

.field private sigService:Lcom/narvii/chat/signalling/SignallingService;

.field private srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRRoleChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public topActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private totalVolumeChangeDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private unbridledAgoraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

.field private videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

.field private vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

.field vvchatStartChatType:Ljava/lang/String;

.field vvchatStartTime:J

.field private waitingListDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/waitinglist/WaitingListListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/chat/rtc/RtcService;->showFloatingWindowHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 144
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 174
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 175
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 177
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/rtc/RtcService$1;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    .line 634
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/rtc/RtcService$5;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->clickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 869
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$8;

    invoke-direct {v0, p0}, Lcom/narvii/chat/rtc/RtcService$8;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->connectionCheckRunnable:Ljava/lang/Runnable;

    .line 950
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$11;

    invoke-direct {v0, p0}, Lcom/narvii/chat/rtc/RtcService$11;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->getAgoraChannelInfoCallBack:Lcom/narvii/util/Callback;

    .line 2389
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    .line 2390
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    .line 2564
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 228
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    .line 229
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    const-string/jumbo v0, "rtcManager"

    .line 230
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/RtcChatManager;

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    const-string/jumbo v0, "signalling"

    .line 231
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/SignallingService;

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    const-string/jumbo v0, "waitingList"

    .line 232
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/waitinglist/WaitingListService;

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    const-string v0, "account"

    .line 233
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "callScreen"

    .line 234
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 235
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-virtual {v0}, Lcom/narvii/chat/waitinglist/WaitingListService;->getListeners()Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lcom/narvii/chat/video/floating/FloatingManager;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-direct {v0, v1, p0, v2}, Lcom/narvii/chat/video/floating/FloatingManager;-><init>(Landroid/content/Context;Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/call/CallScreenService;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 239
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->clickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->setFloatingClickEvent(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 241
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 242
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 243
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.CAMERA_FREE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 244
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.CAMERA_TAKEN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 245
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    .line 249
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 250
    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/rtc/RtcService;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->getAgoraChannelInfoCallBack:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->tryToJoinAgoraChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/narvii/chat/rtc/RtcService;Z)Z
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/narvii/chat/rtc/RtcService;)Z
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isInitCameraMuted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 0

    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/narvii/chat/rtc/RtcService;)Ljava/util/Set;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelException(Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/rtc/RtcService;IZ)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->muteLocalStream(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/chat/rtc/RtcService;I)Z
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    return-object p0
.end method

.method private addAgoraUserDataToChannelUserWrapper(I)V
    .locals 4

    .line 2348
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    move-result-object v0

    .line 2349
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v1, :cond_0

    .line 2350
    iget-object v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2351
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    iput-object p1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    :cond_0
    return-void
.end method

.method private buildMainSignalChanel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 2246
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RtcService"

    const-string v1, "existed a main channel, when another main channel come in"

    .line 2250
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    .line 2253
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 2254
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateUserListChange(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 2393
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2396
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2397
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2399
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 2400
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    iget v3, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2403
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 2404
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    iget v3, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2408
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    .line 2409
    iget v3, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v4

    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 2412
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    iget v4, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v3, :cond_5

    .line 2414
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->onNewUserJoined(Lcom/narvii/chat/signalling/ChannelUser;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 2416
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v3, v1, :cond_6

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 2418
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v0, v2, :cond_3

    .line 2419
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V

    goto :goto_2

    .line 2424
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 2425
    iget v0, p2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v0, v3, :cond_9

    goto :goto_4

    .line 2428
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    iget v3, p2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v0, :cond_a

    .line 2430
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->onUserLeaveChannel(Lcom/narvii/chat/signalling/ChannelUser;)V

    :cond_a
    if-nez v0, :cond_8

    .line 2432
    iget p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne p2, v2, :cond_8

    .line 2433
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne p2, v2, :cond_8

    .line 2434
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    invoke-virtual {p2, v1}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method

.method private changeChannelUserWrapperStatus(II)V
    .locals 2

    .line 2121
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2124
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v0, :cond_1

    return-void

    .line 2128
    :cond_1
    invoke-virtual {v0, p2}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->setStatus(I)V

    .line 2130
    iget-object p2, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p2, :cond_2

    iget v1, p2, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    if-eq v1, p1, :cond_2

    .line 2131
    iput p1, p2, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 2133
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private cleanMainChannel()V
    .locals 3

    .line 2258
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->oldChannelType:I

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "threadId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2263
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 2265
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2266
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    :cond_3
    const/4 v0, 0x0

    .line 2268
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 2269
    invoke-direct {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 2270
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 2271
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 2272
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 2273
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    .line 2274
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    .line 2275
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    const/4 v2, -0x1

    .line 2276
    iput v2, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 2277
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->joinAgoraMessageDispatched:Z

    .line 2278
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    if-eqz v0, :cond_4

    .line 2279
    invoke-virtual {v0}, Lcom/narvii/video/pro/VideoPreProcessing;->doDeregisterPreProcessing()V

    .line 2280
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 2282
    :cond_4
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

    .line 2283
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2284
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2285
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 2286
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    :cond_5
    return-void
.end method

.method private configStream()V
    .locals 6

    .line 1217
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getCurLiveChannelInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "thread"

    .line 1218
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1219
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1220
    :goto_1
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    if-eqz v3, :cond_3

    .line 1221
    :goto_2
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1222
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v3, :cond_2

    .line 1224
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private dispatchChannelException(Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1899
    :cond_0
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$20;

    invoke-direct {v0, p0, p2, p3}, Lcom/narvii/chat/rtc/RtcService$20;-><init>(Lcom/narvii/chat/rtc/RtcService;ILcom/narvii/util/ws/WsError;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private dispatchChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2019
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 2023
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$24;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2035
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 2036
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$25;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$25;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchChannelUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 2009
    new-instance v7, Lcom/narvii/chat/rtc/RtcService$23;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/rtc/RtcService$23;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v7}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 2079
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$28;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchJoinAgoraSuccessed()V
    .locals 3

    .line 261
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->joinAgoraMessageDispatched:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v2, Lcom/narvii/chat/rtc/RtcService$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/rtc/RtcService$2;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->joinAgoraMessageDispatched:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchLocalMuteUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 1945
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$21;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$21;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 1958
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService$22;-><init>(Lcom/narvii/chat/rtc/RtcService;ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchNetworkStatusChange(I)V
    .locals 2

    .line 2058
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2061
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 2062
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$27;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$27;-><init>(Lcom/narvii/chat/rtc/RtcService;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2070
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchTotalVolumeChange(I)V
    .locals 2

    .line 2045
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 2049
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$26;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$26;-><init>(Lcom/narvii/chat/rtc/RtcService;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1925
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    return-void

    .line 1929
    :cond_0
    new-instance v1, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$eJVfsh8jsAX4ojSu6JIg9eJ69ks;

    invoke-direct {v1, p1}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$eJVfsh8jsAX4ojSu6JIg9eJ69ks;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private dispatchWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    return-void

    .line 1937
    :cond_0
    new-instance v1, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;

    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 6

    .line 1591
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    if-nez v0, :cond_3

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1594
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    .line 1595
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 1596
    iget-boolean v5, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v5, :cond_0

    .line 1597
    iget v1, v2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iput v1, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 1598
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v1, p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    move p1, v4

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 1604
    iput-boolean v3, p0, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    .line 1606
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/rtc/RtcService$19;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$19;-><init>(Lcom/narvii/chat/rtc/RtcService;Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_3
    return-void
.end method

.method private exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;)V"
        }
    .end annotation

    .line 1110
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    new-instance v1, Lcom/narvii/chat/rtc/RtcService$14;

    invoke-direct {v1, p0, p3}, Lcom/narvii/chat/rtc/RtcService$14;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/video/model/ChannelActionCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 1128
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/rtc/RtcService$15;

    invoke-direct {p2, p0}, Lcom/narvii/chat/rtc/RtcService$15;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    const/4 p1, -0x1

    .line 1134
    iput p1, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 1135
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, v1, Lcom/narvii/model/ChatThread;->type:I

    :goto_1
    invoke-virtual {p2, p3, v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->reportLiveLayerInactiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V

    .line 1137
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    return-void
.end method

.method public static getFilteredChannelUserList(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation

    .line 2534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 2536
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2537
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2538
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 2539
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {v2}, Lcom/narvii/chat/signalling/SignallingChannel;->isNotGuestRole(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2540
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFilteredUserList(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 2548
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 2550
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2551
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v2, :cond_0

    .line 2552
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {v2}, Lcom/narvii/chat/signalling/SignallingChannel;->isNotGuestRole(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2553
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isAgoraUserInMainChannel(I)Z
    .locals 1

    .line 2325
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isAllUseVoiceMuted()Z
    .locals 5

    .line 2217
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2221
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2222
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 2223
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v4, :cond_1

    .line 2224
    invoke-virtual {v4}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_1

    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method private isExistedInChannelAtLeastRole(Ljava/lang/String;I)Z
    .locals 3

    .line 2291
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2296
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 2299
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method private isExistedInChannelEqualRole(Ljava/lang/String;I)Z
    .locals 1

    .line 2305
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2309
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isHost(I)Z
    .locals 1

    .line 2356
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p1, :cond_0

    .line 2357
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInitCameraFlipped()Z
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "cameraFlip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInitCameraMuted()Z
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "cameraMute"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMainChannelVideoType()Z
    .locals 1

    .line 2333
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMainChannelVoiceType()Z
    .locals 1

    .line 2329
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isVoiceSignificantChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadyToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isValidChannelToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private isVideoSignificantChannelType(I)Z
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

.method private isVoiceSignificantChannelType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v6, 0x2

    .line 364
    :goto_0
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    .line 367
    :goto_2
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v2, :cond_4

    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_3
    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 369
    :goto_3
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v2, :cond_5

    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 370
    :goto_4
    iget-object v3, v0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    move/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Lcom/narvii/chat/video/RtcChatManager;->joinChannel(Ljava/lang/String;Ljava/lang/String;IIIZZZZZ)V

    return-void
.end method

.method static synthetic lambda$dispatchWaitingListApprove$4(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1929
    invoke-interface {p1, p0}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method static synthetic lambda$dispatchWaitingListChanged$5(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1937
    invoke-interface {p3, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic lambda$waitListClean$0(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1461
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 1462
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 1463
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$waitListJoin$3(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1495
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 1496
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p0, :cond_0

    .line 1498
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$waitListJoinApprove$1(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1471
    instance-of v0, p1, Lkotlin/Pair;

    if-eqz v0, :cond_0

    .line 1472
    check-cast p1, Lkotlin/Pair;

    .line 1473
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 1475
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1476
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$waitListJoinCancel$2(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1485
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 1486
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 1487
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 8

    const-string/jumbo v0, "vvchat"

    const-string v1, "chatType"

    const-string v2, "chatId"

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_3

    .line 1967
    iget-wide v5, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_3

    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 1969
    invoke-static {v5}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1970
    iget-object v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1971
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    .line 1973
    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v4}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 1974
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    if-eqz v5, :cond_1

    iget v5, v5, Lcom/narvii/model/ChatThread;->type:I

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chatType is null"

    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    sget-object v5, Lcom/narvii/logging/ActSemantic;->VVChatStart:Lcom/narvii/logging/ActSemantic;

    invoke-static {v4, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 1978
    invoke-virtual {v4, v5}, Lcom/narvii/logging/LogEvent$Builder;->ndcId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 1979
    invoke-virtual {v4, v2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1980
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "memberCount"

    invoke-virtual {p1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 1981
    invoke-virtual {p1, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1982
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1983
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1984
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1985
    :cond_3
    iget-object v5, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v5, :cond_6

    if-nez p1, :cond_6

    .line 1986
    iget-wide v6, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    cmp-long p1, v6, v3

    if-eqz p1, :cond_5

    .line 1987
    iget p1, v5, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {p1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    move-result-object p1

    .line 1988
    iget-object v5, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    sget-object v6, Lcom/narvii/logging/ActSemantic;->VVChatEnd:Lcom/narvii/logging/ActSemantic;

    invoke-static {v5, v6}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v6, v6, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 1989
    invoke-virtual {v5, v6}, Lcom/narvii/logging/LogEvent$Builder;->ndcId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v6, v6, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 1990
    invoke-virtual {v5, v2, v6}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 1991
    :goto_2
    invoke-virtual {v2, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1993
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1994
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1995
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    :cond_5
    iput-wide v3, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    const/4 p1, 0x0

    .line 1998
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    :cond_6
    :goto_3
    return-void
.end method

.method private mergeAgoraDataAndChannelData(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 2440
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2445
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 2446
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 2447
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2448
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2450
    iget v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    iput v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 2451
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 2452
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 2459
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 2463
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    move-result-object v0

    .line 2464
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2465
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v3, :cond_4

    goto :goto_0

    .line 2469
    :cond_4
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    iget v7, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v6, :cond_5

    .line 2471
    new-instance v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v7, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Lcom/narvii/chat/rtc/ChannelUserWrapper;-><init>(Lcom/narvii/chat/signalling/ChannelUser;ILcom/narvii/video/ui/UserStatusData;)V

    .line 2473
    :cond_5
    iput-object v3, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 2474
    iget-object v7, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    iget v8, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2476
    iget v7, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/video/ui/UserStatusData;

    .line 2477
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVideoType()Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v7, :cond_7

    .line 2478
    iget v8, v7, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    if-eq v8, v4, :cond_6

    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v8, 0x5

    if-ne v4, v8, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_8

    .line 2481
    iput v1, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    goto :goto_2

    .line 2483
    :cond_8
    iput v5, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    goto :goto_2

    :cond_9
    if-eqz v7, :cond_a

    .line 2487
    iput v1, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    goto :goto_2

    .line 2489
    :cond_a
    iput v5, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 2492
    :goto_2
    iput-object v7, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 2493
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2497
    :cond_b
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 2498
    :goto_3
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    .line 2499
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 2500
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2501
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2505
    :cond_d
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2506
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    :cond_e
    if-eqz v0, :cond_15

    .line 2510
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v4, 0x1

    :goto_5
    const/4 p1, 0x0

    .line 2512
    :goto_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_15

    .line 2513
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 2514
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 2515
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_10

    .line 2516
    iget-object v6, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v6, :cond_10

    iget-object v7, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    :goto_7
    if-eqz v2, :cond_13

    .line 2517
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_13

    iget v7, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v7, v1, :cond_11

    goto :goto_8

    :cond_11
    if-eqz v2, :cond_14

    if-eqz v6, :cond_12

    .line 2522
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v2, v4, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    goto :goto_9

    :cond_12
    if-eqz v3, :cond_14

    .line 2524
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2525
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v2, v4, p2, v5}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    goto :goto_9

    .line 2518
    :cond_13
    :goto_8
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2519
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v2, v4, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    :cond_14
    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_15
    :goto_a
    return-void
.end method

.method private muteLocalStream(IZ)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalStream(IZ)V

    return-void
.end method

.method private onNewUserJoined(Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    return-void
.end method

.method private onUserLeaveChannel(Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    return-void
.end method

.method private operaLocalMuteUser(ILjava/lang/String;)V
    .locals 7

    .line 1723
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1728
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :cond_3
    return-void

    .line 1733
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v4, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    .line 1734
    :cond_6
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v6, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1735
    iget v3, v4, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v5, :cond_8

    return-void

    :cond_8
    if-eqz v2, :cond_9

    .line 1743
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1745
    :cond_9
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1747
    :goto_3
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v2, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->isAgoraVideoType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    goto :goto_4

    :cond_a
    const/4 v2, 0x1

    :goto_4
    if-nez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-virtual {p2, v2, v3, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 1749
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchLocalMuteUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_c
    :goto_5
    return-void
.end method

.method private prepareAgoraWorkThread(I)V
    .locals 5

    .line 1018
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1020
    :goto_1
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v4}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v4}, Lcom/narvii/chat/video/RtcChatManager;->getCurChannelType()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 1021
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p1, v2}, Lcom/narvii/chat/video/RtcChatManager;->setForceAvatar(Z)V

    return-void

    .line 1024
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v4, v2}, Lcom/narvii/chat/video/RtcChatManager;->setForceAvatar(Z)V

    .line 1025
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v2, p0}, Lcom/narvii/chat/video/RtcChatManager;->setFaceTrackStatusChange(Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;)V

    .line 1026
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v2, p1}, Lcom/narvii/chat/video/RtcChatManager;->setCurSigChannelType(I)V

    .line 1027
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    const/4 v4, 0x5

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0, p0}, Lcom/narvii/chat/video/RtcChatManager;->initRtcService(ZILcom/narvii/video/model/RtcEventHandler;)V

    return-void
.end method

.method private tryToJoinAgoraChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 11

    if-eqz p1, :cond_5

    .line 962
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 965
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isReadyToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 966
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->prepareAgoraWorkThread(I)V

    .line 967
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 968
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLocalUid(I)V

    .line 969
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->setLocalVoiceStatus()V

    .line 970
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 971
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 972
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 973
    iput-boolean v2, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 974
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iget-object v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 995
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLocalUid(I)V

    .line 996
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 997
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 998
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 999
    iput-boolean v2, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 1000
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1001
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .line 1002
    :goto_0
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iget-object v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    goto :goto_2

    .line 979
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLocalUid(I)V

    .line 980
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->initLocalVideoStatus(I)V

    .line 981
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 982
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 984
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isInitCameraMuted()Z

    move-result v10

    .line 985
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isInitCameraFlipped()Z

    move-result v0

    .line 986
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v1, v10}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 987
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/RtcChatManager;->setCameraFacing(Z)V

    .line 989
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 990
    iput-boolean v2, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 991
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iget-object v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateChannelUserWrapperInfo(I)V
    .locals 2

    .line 2098
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v0, :cond_1

    return-void

    .line 2105
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isVideoType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 2106
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 2107
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    iget p1, p1, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    .line 2108
    iput p1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 2110
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V
    .locals 1

    .line 1792
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1794
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1796
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1797
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1845
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1847
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1848
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 1

    .line 1766
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1811
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1813
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1814
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1880
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1882
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1883
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1865
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1866
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMutedUser(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1711
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->operaLocalMuteUser(ILjava/lang/String;)V

    return-void
.end method

.method public addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1828
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1830
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1831
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1777
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1779
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1780
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSRChannelStatusChangeListener(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 1910
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1912
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 1913
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelNotification()V
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->cancelNotification()V

    return-void
.end method

.method public captureVideoFrame(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1143
    invoke-interface {p2, p1, v0, v0, v0}, Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;->onProcessYUV([BIII)V

    return-void

    .line 1146
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/pro/VideoPreProcessing;->capFile(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V

    return-void
.end method

.method public changeLocalVoiceMuteStatus(Z)V
    .locals 2

    .line 2235
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2236
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2239
    :cond_0
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v1, :cond_1

    .line 2240
    invoke-virtual {v1, p1}, Lcom/narvii/video/ui/UserStatusData;->setVoiceMuted(Z)V

    .line 2242
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 439
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    if-nez v1, :cond_1

    return v0

    .line 445
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 446
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 447
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 452
    :cond_3
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 453
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v3, v4, :cond_4

    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method public channelOnlyContaineMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 432
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public cleanMappedWindow(Ljava/lang/String;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    :cond_1
    return-void
.end method

.method public cleanThreadWindow(Ljava/lang/String;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingThread()Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, v0, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    :cond_0
    return-void
.end method

.method public cleaningAttachedWindows()V
    .locals 0

    .line 489
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->closeShowingWindow()V

    .line 490
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    return-void
.end method

.method public closeShowingWindow()V
    .locals 2

    .line 509
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideAudioFloatingWindow()V

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result v0

    if-nez v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideVideoFloatingWindow()V

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideSRFloatingWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public exitLiveChannel(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1031
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method

.method public exitLiveChannel(ILjava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1036
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method

.method public exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1040
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method

.method public exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            "Z)V"
        }
    .end annotation

    .line 1051
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasShowingThread:Z

    if-eqz p5, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 1064
    :cond_2
    iget-object p5, p0, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    if-nez p5, :cond_3

    move-object p5, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/Activity;

    .line 1065
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    .line 1066
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v3, :cond_4

    .line 1067
    invoke-virtual {v3}, Lcom/narvii/chat/video/RtcChatManager;->onPause()V

    .line 1069
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    if-eqz v3, :cond_5

    .line 1070
    invoke-virtual {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->destroy()V

    .line 1071
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 1074
    :cond_5
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    new-instance v4, Lcom/narvii/chat/rtc/RtcService$12;

    invoke-direct {v4, p0, v2}, Lcom/narvii/chat/rtc/RtcService$12;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v3, v4}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 1085
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v3

    .line 1086
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    const-string/jumbo v5, "thread"

    .line 1087
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/narvii/model/ChatThread;

    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 1088
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/model/ChatThread;

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatThread;

    goto :goto_1

    :cond_6
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_7

    .line 1089
    iget v4, v4, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v4, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    if-eqz p5, :cond_b

    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    .line 1091
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v3, "screenRoom"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v0, :cond_9

    .line 1093
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->stopPlay()V

    .line 1095
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    instance-of v3, p5, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_a

    move-object v1, p5

    check-cast v1, Lcom/narvii/app/NVActivity;

    :cond_a
    iget-object p5, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget p5, p5, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    new-instance v9, Lcom/narvii/chat/rtc/RtcService$13;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/rtc/RtcService$13;-><init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1, p5, v2, v9}, Lcom/narvii/chat/video/utils/VVChatHelper;->showReputationClaimDialog(Lcom/narvii/app/NVActivity;ILcom/narvii/chat/signalling/SignallingChannel;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    .line 1105
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    :goto_2
    return-void

    .line 1056
    :cond_c
    :goto_3
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p3, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public exitLiveChannelKeepWindow(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1044
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method

.method public exitLiveChannelOfCommunity(I)V
    .locals 2

    .line 542
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->hideLiveChannelFloatingWindow(I)V

    .line 544
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    if-ne v1, p1, :cond_0

    .line 546
    iget-object p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flipCamera()V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->flipCamera()V

    return-void
.end method

.method public getChannelUserWrapper(I)Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 4

    .line 2369
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2372
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2373
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v2, :cond_1

    .line 2374
    iget v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getCurLiveChannelInfo()Landroid/os/Bundle;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    return-object v0
.end method

.method public getLocalMutedUserList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1719
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    return-object v0
.end method

.method public getMainChannelChannelUserList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getMainChannelChatThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getMainChannelFilteredChannelUserList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->getFilteredChannelUserList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMainChannelFilteredUserWrapperList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->getFilteredUserList(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 6

    .line 2188
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v0

    .line 2189
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2190
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2193
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2194
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v5, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v4, v5, :cond_1

    .line 2195
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public getMainChannelType()I
    .locals 1

    .line 2094
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    :goto_0
    return v0
.end method

.method public getMainChannelUserWrapperList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 2090
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 2314
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {v0}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    move-result-object v0

    .line 2315
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v1, :cond_0

    .line 2316
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getMediaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPendingFloatingThreadId()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenterCountInChannel(Lcom/narvii/chat/signalling/SignallingChannel;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 385
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public getRtcManager()Lcom/narvii/chat/video/RtcChatManager;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    return-object v0
.end method

.method public getScreenRoomHostUser()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 3

    const/4 v0, 0x0

    .line 789
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 791
    invoke-virtual {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowingWindowType()I
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getShowingWindowType()I

    move-result v0

    return v0
.end method

.method public getSigService()Lcom/narvii/chat/signalling/SignallingService;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    return-object v0
.end method

.method public hasAtLeastOneMemberInCurrentChannel()Z
    .locals 2

    .line 2209
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hideAudioFloatingWindow()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAudioFloatingWindow()V

    return-void
.end method

.method public hideLiveChannelFloatingWindow(I)V
    .locals 2

    .line 551
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    if-ne v0, p1, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    :cond_0
    return-void
.end method

.method public hideSRFloatingWindow()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeSRFloatingWindow()V

    return-void
.end method

.method public hideThreadDetailWindow()V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    return-void
.end method

.method public hideThreadDetailWindow(I)V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingThread()Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget v0, v0, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    if-ne v0, p1, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    :cond_1
    return-void
.end method

.method public hideVideoFloatingWindow()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeVideoFloatingWindow()V

    .line 627
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->configStream()V

    return-void
.end method

.method public isAllMuted()Z
    .locals 3

    .line 2590
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    const-string v1, "isMiniAllMute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAlreadyJoinedCurChannel(Ljava/lang/String;I)Z
    .locals 4

    .line 2145
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {v0}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 2146
    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 2148
    iget p2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 2151
    iget p2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-eq p2, v0, :cond_4

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1

    :cond_5
    return v2
.end method

.method public isCreator()Z
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "isCreator"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEligible()Z
    .locals 2

    .line 748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->isEligible()Z

    move-result v0

    return v0
.end method

.method public isHasShowingThread()Z
    .locals 1

    .line 755
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasShowingThread:Z

    return v0
.end method

.method public isHostInCurrentChannel()Z
    .locals 1

    .line 2202
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMiniStatus()Z
    .locals 3

    .line 2574
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    const-string v1, "isMiniStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPresenterInChannel()Z
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPrivateMainChannelFullBefore()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    return v0
.end method

.method public isScreenRoomHost()Z
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    .line 778
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    return v0
.end method

.method public isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz p1, :cond_0

    iget p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public joinChannelAsGuest(ILjava/lang/String;)V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public joinLiveChannel(ILjava/lang/String;II)V
    .locals 8

    if-eqz p2, :cond_3

    .line 905
    invoke-static {p3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/narvii/chat/rtc/RtcService;->isExistedInChannelAtLeastRole(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 915
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasShowingThread:Z

    .line 917
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    new-instance v7, Lcom/narvii/chat/rtc/RtcService$10;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/rtc/RtcService$10;-><init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;II)V

    invoke-virtual {v0, p1, p2, v7}, Lcom/narvii/chat/signalling/SignallingService;->joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public leaveChannelAsGuest(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 884
    invoke-direct {p0, p2, v0}, Lcom/narvii/chat/rtc/RtcService;->isExistedInChannelEqualRole(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public muteRemoteUser(IZ)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    .line 356
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    :cond_0
    return-void
.end method

.method public muteVideoWithoutChangeStatus(Z)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(ZZ)I

    return-void
.end method

.method public onAudioQuality(IISS)V
    .locals 0

    .line 1445
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 0

    .line 1368
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 9

    .line 1316
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1322
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllUseVoiceMuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 1325
    :cond_1
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService;->oldTotalVolume:I

    if-eq v0, p2, :cond_2

    .line 1326
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatchTotalVolumeChange(I)V

    .line 1327
    iput p2, p0, Lcom/narvii/chat/rtc/RtcService;->oldTotalVolume:I

    :cond_2
    if-eqz p1, :cond_d

    .line 1330
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    .line 1331
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_d

    .line 1332
    aget-object v0, p1, p2

    .line 1333
    iget v2, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->volume:I

    .line 1334
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1335
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 1336
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1338
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    :cond_4
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v2, :cond_7

    .line 1340
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 1341
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v4, :cond_5

    iget v4, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 1342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v2, v5, v7

    if-lez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    move v2, v4

    .line 1348
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    iget v5, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->volume:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v3, :cond_8

    .line 1349
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    :cond_8
    if-eqz v3, :cond_c

    .line 1350
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-nez v0, :cond_9

    goto :goto_3

    .line 1353
    :cond_9
    invoke-static {v2}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    move-result v0

    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    iget v4, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    invoke-static {v4}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    move-result v4

    if-ne v0, v4, :cond_a

    return-void

    .line 1356
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_b

    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_b

    goto :goto_3

    .line 1360
    :cond_b
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    iput v2, v0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 1361
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, v0, v3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_c
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_4
    return-void
.end method

.method public onChannelChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 1547
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "signalling -- channel status change "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtcService"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 1

    const-string p1, "RtcService"

    const-string/jumbo v0, "signalling -- force quit"

    .line 1618
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1619
    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-eqz p1, :cond_0

    .line 1620
    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iput p1, p0, Lcom/narvii/chat/rtc/RtcService;->oldChannelType:I

    .line 1622
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V

    return-void
.end method

.method public onChannelListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Z)V
    .locals 4

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signalling -- channel changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtcService"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    .line 1520
    invoke-direct {p0, v0, p2, v1}, Lcom/narvii/chat/rtc/RtcService;->dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 1525
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1527
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    .line 1529
    :cond_1
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p3

    .line 1530
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.narvii.action.LIVE_CHANNEL_QUIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    iget-object v2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    const-string/jumbo v3, "threadId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1532
    invoke-virtual {p3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1536
    :cond_2
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1537
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p2}, Lcom/narvii/chat/call/CallScreenService;->resetCallScreen()V

    .line 1540
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 1541
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    :cond_5
    return-void
.end method

.method public onChannelTypeUpdateSuccess(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1681
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 1682
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public varargs onExtraCallback(I[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1379
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    new-instance p2, Lcom/narvii/chat/rtc/RtcService$16;

    invoke-direct {p2, p0}, Lcom/narvii/chat/rtc/RtcService$16;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 1393
    aget-object v1, p2, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1394
    aget-object p2, p2, v0

    check-cast p2, [B

    const/4 v0, 0x0

    .line 1396
    array-length v2, p2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    aget-byte v2, p2, p1

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    .line 1398
    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p2

    sget-object v4, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1399
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    new-instance v2, Lcom/narvii/chat/rtc/RtcService$17;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/narvii/chat/rtc/RtcService$17;-><init>(Lcom/narvii/chat/rtc/RtcService;I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V

    invoke-virtual {p1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFaceStatusChange(I)V
    .locals 0

    .line 471
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 4

    .line 1191
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p2}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p1, :cond_3

    .line 1192
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p2, :cond_0

    .line 1193
    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1194
    :goto_0
    iget-object p4, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    invoke-static {p4}, Lio/agora/rtc/RtcEngine;->CreateRendererView(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object p4

    .line 1195
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    new-instance v1, Lio/agora/rtc/video/VideoCanvas;

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v3, 0x5

    if-ne p2, v3, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-direct {v1, p4, p2, p1}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/SurfaceView;II)V

    .line 1195
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)V

    .line 1198
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/video/RtcChatManager;->getUserStausData(I)Lcom/narvii/video/ui/UserStatusData;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1200
    invoke-virtual {p2, v2}, Lcom/narvii/video/ui/UserStatusData;->setVideoFrameStatus(I)V

    .line 1201
    iput-object p4, p2, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    goto :goto_2

    .line 1203
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p2, p1, p4, v2}, Lcom/narvii/chat/video/RtcChatManager;->addNewUser(ILandroid/view/SurfaceView;I)V

    .line 1206
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1207
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1208
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1209
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 1210
    invoke-direct {p0, p1, p3}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 1213
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->configStream()V

    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 3

    .line 1232
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVideoType()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1233
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    if-nez p1, :cond_0

    .line 1234
    new-instance p1, Lcom/narvii/video/pro/VideoPreProcessing;

    invoke-direct {p1}, Lcom/narvii/video/pro/VideoPreProcessing;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 1236
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    invoke-virtual {p1}, Lcom/narvii/video/pro/VideoPreProcessing;->doRegisterPreProcessing()V

    .line 1237
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

    if-eqz p1, :cond_1

    .line 1238
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    invoke-virtual {p3, p1}, Lcom/narvii/video/pro/VideoPreProcessing;->setRemoteFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 1242
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1245
    :cond_2
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 1246
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result p1

    .line 1247
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p3

    iget p3, p3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 1248
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isHost(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1249
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->initScreenRoomHostSwap()V

    :cond_4
    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 1252
    :cond_6
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 1253
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->dispatchJoinAgoraSuccessed()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onLeaveChannel()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 1271
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    if-eqz v0, :cond_1

    .line 1275
    invoke-virtual {v0}, Lcom/narvii/video/pro/VideoPreProcessing;->doDeregisterPreProcessing()V

    :cond_1
    return-void
.end method

.method public onLocalUserSteamDecoded(I)V
    .locals 1

    .line 1294
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVideoType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    const/4 v0, 0x1

    .line 1296
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    :cond_0
    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 0

    return-void
.end method

.method public onNetworkStatusChanged(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1432
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1433
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    .line 1434
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->connectionCheckRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1d4c0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1436
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchNetworkStatusChange(I)V

    return-void
.end method

.method public onReceiverBusy(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1662
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 1664
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 0

    .line 1258
    iget-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1259
    iput-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    .line 1260
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->connectionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1262
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 1263
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVoiceType()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1264
    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    :cond_1
    return-void
.end method

.method public onRemoteUserJoined(I)V
    .locals 6

    .line 1160
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 1161
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 1162
    invoke-virtual {v4, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isAgoraVideoType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1163
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1164
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v4

    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-eq v4, v3, :cond_1

    .line 1165
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v4

    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 1166
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    iget-object v4, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v4, :cond_3

    goto :goto_3

    .line 1171
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    if-eqz v2, :cond_4

    .line 1173
    invoke-direct {p0, p1, v3}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 1175
    :cond_4
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v2, v3, :cond_6

    .line 1176
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v5, p1, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 1177
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1180
    :cond_6
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1182
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v0, v5, p1, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    :cond_8
    return-void

    .line 1167
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v0, v5, p1, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 1168
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestToken()V
    .locals 4

    .line 1415
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/rtc/RtcService$18;

    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$18;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onSignallingPong(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/signalling/ThreadChannelUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1628
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;

    .line 1629
    iget-object v2, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v3, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1632
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget v3, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->ndcId:I

    iget-object v1, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->threadId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 1635
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 1636
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;

    if-eqz v2, :cond_4

    .line 1637
    iget v2, v2, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->joinRole:I

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 1638
    :goto_3
    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1639
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onUserForceRemoveFromPresenter(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1669
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    .line 1671
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {v1, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0f0ed2

    .line 1672
    invoke-virtual {v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p1, 0x7f0f073e

    .line 1673
    invoke-virtual {v1, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1674
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 1676
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V

    return-void
.end method

.method public onUserListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingService;",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 1553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "signalling -- user list changed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    const-string v0, " null "

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtcService"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-direct {p0, p2, p4}, Lcom/narvii/chat/rtc/RtcService;->mergeAgoraDataAndChannelData(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)V

    .line 1556
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    :goto_1
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1557
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 1558
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->tryToJoinAgoraChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    if-nez p4, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 1565
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 1568
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/rtc/RtcService;->calculateUserListChange(Ljava/util/Collection;Ljava/util/Collection;)V

    if-eqz p1, :cond_8

    .line 1571
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 1572
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p3}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1574
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 1575
    iget p3, p3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq p3, p4, :cond_5

    const/4 p4, 0x0

    .line 1580
    :cond_6
    iput-boolean p4, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    .line 1581
    iget-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    if-eqz p1, :cond_8

    .line 1582
    sget-object p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1583
    sget-object p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 1585
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    :cond_8
    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 0

    .line 1302
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 1303
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 1304
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllUseVoiceMuted()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1305
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchTotalVolumeChange(I)V

    :cond_0
    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 0

    .line 1311
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    return-void
.end method

.method public onUserOffline(II)V
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1285
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 1287
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    :goto_0
    return-void
.end method

.method public onUserRoleChange(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 2

    .line 1650
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->buildMainSignalChanel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    const/4 p1, 0x3

    .line 1651
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 1652
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 1653
    iget-object p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/rtc/RtcService;->mergeAgoraDataAndChannelData(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)V

    .line 1654
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 1655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object p3

    :cond_1
    invoke-direct {p0, p2, v0, v1, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1507
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1512
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public onlyMePresenterInMainChannel()Z
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 463
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public postShowFloatingRunnable(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->removePendingFloatingRunnable()V

    .line 581
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    .line 582
    new-instance p1, Lcom/narvii/chat/rtc/RtcService$4;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/rtc/RtcService$4;-><init>(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Runnable;)V

    .line 589
    sget-object p2, Lcom/narvii/chat/rtc/RtcService;->showFloatingWindowHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public relaunchRtcMainActivity()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 690
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity(ZLandroid/content/Intent;)V

    return-void
.end method

.method public relaunchRtcMainActivity(ZLandroid/content/Intent;)V
    .locals 2

    .line 694
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    .line 695
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideVideoFloatingWindow()V

    .line 698
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideAudioFloatingWindow()V

    .line 699
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideSRFloatingWindow()V

    return-void

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->closeShowingWindow()V

    .line 703
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->relaunchLiveChannelListener:Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;

    if-eqz v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;->onReLaunchLiveChannelView(Landroid/os/Bundle;ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public removeAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1805
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeAllLocalMuteUsers()V
    .locals 2

    .line 1753
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1756
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1757
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1758
    invoke-virtual {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->removeMutedUser(Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public removeAsSpeaker(Ljava/lang/String;)V
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/rtc/RtcService$7;

    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$7;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/narvii/chat/signalling/SignallingService;->sendRemoveFromPresenter(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1856
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 1

    .line 1818
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1822
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1891
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V
    .locals 1

    .line 1870
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1874
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMutedUser(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1715
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->operaLocalMuteUser(ILjava/lang/String;)V

    return-void
.end method

.method public removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1839
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1788
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removePendingFloatingRunnable()V
    .locals 2

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    .line 594
    sget-object v1, Lcom/narvii/chat/rtc/RtcService;->showFloatingWindowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 1

    .line 1917
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_0

    return-void

    .line 1921
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V

    return-void
.end method

.method public requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;ZZ)V"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v4, Lcom/narvii/video/model/ChannelActionResult;

    const/4 v0, 0x0

    sget-object v1, Lcom/narvii/video/model/ChannelActionError;->ERROR_REQUEST_TO_BE_PRESENTER:Lcom/narvii/video/model/ChannelActionError;

    invoke-direct {v4, v0, v1}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 289
    iget v0, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/narvii/chat/rtc/RtcService;->getPresenterCountInChannel(Lcom/narvii/chat/signalling/SignallingChannel;)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_2

    .line 291
    invoke-interface {p1, v4}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v7, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget v8, v2, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v9, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    const/4 v10, 0x1

    new-instance v11, Lcom/narvii/chat/rtc/RtcService$3;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/rtc/RtcService$3;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/video/model/ChannelActionCallback;Lcom/narvii/video/model/ChannelActionResult;ZZ)V

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetReputationComposite(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->destroy()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 337
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    return-void
.end method

.method public saveCurrentLiveChannelInfo(Landroid/os/Bundle;)V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendDataStream([B)Z
    .locals 2

    .line 2361
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/RtcChatManager;->sendDataStream([B)I

    move-result p1

    if-gez p1, :cond_0

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to send agora data stream ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtcService"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCameraLandScape(Z)V
    .locals 2

    .line 799
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, v0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    instance-of v1, v0, Lcom/narvii/chat/video/CameraRenderer;

    if-eqz v1, :cond_1

    .line 804
    check-cast v0, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/CameraRenderer;->setLandscape(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCommunityString(Ljava/lang/String;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setCommunityString(Ljava/lang/String;)V

    return-void
.end method

.method public setHideDrawer(Z)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setHideDrawer(Z)V

    return-void
.end method

.method public setHostStreamMode(Z)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_1

    .line 615
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v1, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    iget v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v1, v0, p1}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsAllMuted(Z)V
    .locals 2

    .line 2578
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/rtc/RtcService$29;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$29;-><init>(Lcom/narvii/chat/rtc/RtcService;Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    const-string v1, "isMiniAllMute"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsChannelCreator(Z)V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setIsChannelCreator(Z)V

    return-void
.end method

.method public setIsFromGlobalChat(Z)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setIsFromGlobalChat(Z)V

    return-void
.end method

.method public setIsInMiniStatus(Z)V
    .locals 2

    .line 2570
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    const-string v1, "isMiniStatus"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMainChannelChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setRelaunchLiveChannelListener(Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->relaunchLiveChannelListener:Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;

    return-void
.end method

.method public setVideoFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    if-nez v0, :cond_0

    .line 1151
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

    return-void

    .line 1154
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/video/pro/VideoPreProcessing;->setRemoteFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    return-void
.end method

.method public showAudiFloatingWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 519
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 520
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->showAudioFloatingWindow()V

    return-void
.end method

.method public showNotification()V
    .locals 3

    .line 1687
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1692
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "thread"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/ChatThread;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_1

    .line 1693
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1694
    iget-object v0, v1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1698
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->showNotification(Ljava/lang/String;I)V

    return-void
.end method

.method public showSRFloatingWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 608
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 609
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->showSRFloatingWindow()V

    .line 610
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->setHostStreamMode(Z)V

    return-void
.end method

.method public showThreadDetailWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->showThreadFloatingWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V

    return-void
.end method

.method public showVideoFloatingWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 602
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 603
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->showVideoFloatingWindow()V

    .line 604
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->enterLowerStreamMode()V

    return-void
.end method

.method public stopPresenting()V
    .locals 5

    .line 810
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 812
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_1

    goto :goto_3

    .line 816
    :cond_1
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    iget v1, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    goto :goto_2

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v4, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 820
    invoke-virtual {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->channelOnlyContaineMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$6;

    invoke-direct {v1, p0}, Lcom/narvii/chat/rtc/RtcService$6;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 819
    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :goto_2
    return-void

    .line 813
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->requesToBeAudience()V

    return-void
.end method

.method public toggleLocalSteam()V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalAudio()V

    .line 721
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalVideo()V

    return-void
.end method

.method public toggleLocalVideo()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalVideo()V

    return-void
.end method

.method public toggleLocalVoice()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalAudio()V

    return-void
.end method

.method public toggleSpeaker()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleSpeaker()V

    return-void
.end method

.method public tryKeepAlive()V
    .locals 2

    .line 733
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/signalling/SignallingService;->setKeepAliveThreadId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    new-instance v1, Lcom/narvii/chat/rtc/RtcService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$9;-><init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public updateLocalUserVolume(F)V
    .locals 3

    .line 2165
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    const/high16 v0, 0x43800000    # 256.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2175
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2176
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-nez v1, :cond_3

    goto :goto_0

    .line 2179
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    move-result v1

    invoke-static {p1}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    return-void

    .line 2182
    :cond_4
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    iput p1, v1, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 2183
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public waitListClean(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;)V"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    new-instance v1, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$JWmjJ2xZxnnWCape5Un24MCiGbc;

    invoke-direct {v1, p3}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$JWmjJ2xZxnnWCape5Un24MCiGbc;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListClean(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public waitListJoin(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;)V"
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    new-instance v1, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$39BxXx7iOKPen1xAVvHsO9t4NDY;

    invoke-direct {v1, p3}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$39BxXx7iOKPen1xAVvHsO9t4NDY;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoin(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/rtc/RtcService$WaitingListCallback<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    new-instance v1, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$iVYLPGk2olAtIWIvoHYZbA2lHE4;

    invoke-direct {v1, p4}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$iVYLPGk2olAtIWIvoHYZbA2lHE4;-><init>(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;)V"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    new-instance v1, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$8_eoWP0YEWMCKekw7vxVf830kd8;

    invoke-direct {v1, p4}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$8_eoWP0YEWMCKekw7vxVf830kd8;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
