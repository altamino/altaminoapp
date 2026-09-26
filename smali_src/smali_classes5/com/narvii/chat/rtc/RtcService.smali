.class public Lcom/narvii/chat/rtc/RtcService;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field private hasLeaveChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/chat/rtc/RtcService;->showFloatingWindowHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 9
    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashSet;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 58
    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 72
    .line 73
    new-instance v0, Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    .line 79
    .line 80
    new-instance v0, Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 100
    .line 101
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 105
    .line 106
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    .line 107
    .line 108
    new-instance v0, Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 114
    .line 115
    new-instance v0, Landroid/util/SparseArray;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    .line 121
    .line 122
    new-instance v0, Landroid/util/SparseArray;

    .line 123
    .line 124
    .line 125
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 126
    .line 127
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    .line 128
    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    const/4 v1, 0x0

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 134
    .line 135
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasLeaveChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    .line 137
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$1;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p0}, Lcom/narvii/chat/rtc/RtcService$1;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 141
    .line 142
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    .line 143
    .line 144
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$5;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, p0}, Lcom/narvii/chat/rtc/RtcService$5;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 148
    .line 149
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->clickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 150
    .line 151
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$8;

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, p0}, Lcom/narvii/chat/rtc/RtcService$8;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 155
    .line 156
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->connectionCheckRunnable:Ljava/lang/Runnable;

    .line 157
    .line 158
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$11;

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, p0}, Lcom/narvii/chat/rtc/RtcService$11;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 162
    .line 163
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->getAgoraChannelInfoCallBack:Lcom/narvii/util/Callback;

    .line 164
    .line 165
    new-instance v1, Landroid/util/SparseArray;

    .line 166
    .line 167
    .line 168
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 169
    .line 170
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    .line 171
    .line 172
    new-instance v1, Landroid/util/SparseArray;

    .line 173
    .line 174
    .line 175
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 176
    .line 177
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    .line 178
    .line 179
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 180
    .line 181
    .line 182
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 183
    .line 184
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 185
    .line 186
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    .line 187
    .line 188
    .line 189
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 193
    .line 194
    const-string v1, "rtcManager"

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    check-cast v1, Lcom/narvii/chat/video/RtcChatManager;

    .line 201
    .line 202
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 203
    .line 204
    const-string v1, "signalling"

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    check-cast v1, Lcom/narvii/chat/signalling/SignallingService;

    .line 211
    .line 212
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 213
    .line 214
    const-string v1, "waitingList"

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    check-cast v1, Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 221
    .line 222
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 223
    .line 224
    const-string v1, "account"

    .line 225
    .line 226
    .line 227
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 231
    .line 232
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    .line 233
    .line 234
    const-string v1, "callScreen"

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    check-cast v1, Lcom/narvii/chat/call/CallScreenService;

    .line 241
    .line 242
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 243
    .line 244
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 245
    .line 246
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 250
    .line 251
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->getListeners()Lcom/narvii/util/EventDispatcher;

    .line 255
    move-result-object v1

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 259
    .line 260
    new-instance v1, Lcom/narvii/chat/video/floating/FloatingManager;

    .line 261
    .line 262
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 263
    .line 264
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 265
    .line 266
    .line 267
    invoke-direct {v1, v2, p0, v3}, Lcom/narvii/chat/video/floating/FloatingManager;-><init>(Landroid/content/Context;Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/call/CallScreenService;)V

    .line 268
    .line 269
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 270
    .line 271
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->clickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/FloatingManager;->setFloatingClickEvent(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 278
    move-result-object v1

    .line 279
    .line 280
    .line 281
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 282
    move-result-object v1

    .line 283
    .line 284
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 285
    .line 286
    new-instance v2, Landroid/content/IntentFilter;

    .line 287
    .line 288
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 289
    .line 290
    .line 291
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 295
    .line 296
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 297
    .line 298
    new-instance v2, Landroid/content/IntentFilter;

    .line 299
    .line 300
    const-string v3, "com.narvii.action.CAMERA_FREE"

    .line 301
    .line 302
    .line 303
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 307
    .line 308
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 309
    .line 310
    new-instance v2, Landroid/content/IntentFilter;

    .line 311
    .line 312
    const-string v3, "com.narvii.action.CAMERA_TAKEN"

    .line 313
    .line 314
    .line 315
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 319
    .line 320
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 321
    .line 322
    new-instance v2, Landroid/content/IntentFilter;

    .line 323
    .line 324
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 325
    .line 326
    .line 327
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    .line 332
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 333
    .line 334
    new-instance v2, Landroid/content/IntentFilter;

    .line 335
    .line 336
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 337
    .line 338
    .line 339
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    .line 344
    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    .line 345
    .line 346
    .line 347
    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 348
    .line 349
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    .line 350
    .line 351
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 352
    .line 353
    .line 354
    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 355
    .line 356
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 357
    .line 358
    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    .line 359
    .line 360
    .line 361
    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 362
    .line 363
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    .line 364
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/rtc/RtcService;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->muteLocalStream(IZ)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->tryToJoinAgoraChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$dispatchWaitingListApprove$9(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method

.method private addAgoraUserDataToChannelUserWrapper(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 35
    .line 36
    iput-object p1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 37
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$destroyAgoraEngine$3(Ljava/lang/Object;)V

    return-void
.end method

.method private buildMainSignalChanel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "RtcService"

    .line 28
    .line 29
    const-string v1, "existed a main channel, when another main channel come in"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;Ljava/lang/Object;)Lw7/l0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$waitListJoinApprove$6(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;Ljava/lang/Object;)Lw7/l0;

    move-result-object p0

    return-object p0
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

    .line 1
    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    if-eqz p2, :cond_a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    .line 41
    .line 42
    iget v3, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    .line 65
    .line 66
    iget v3, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x2

    .line 80
    const/4 v2, 0x1

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    .line 89
    .line 90
    iget v3, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 97
    .line 98
    if-ne v3, v4, :cond_4

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareOld:Landroid/util/SparseArray;

    .line 102
    .line 103
    iget v4, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 108
    .line 109
    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 110
    .line 111
    if-nez v3, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->onNewUserJoined(Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 115
    .line 116
    :cond_5
    if-eqz v3, :cond_3

    .line 117
    .line 118
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 119
    .line 120
    if-ne v3, v1, :cond_3

    .line 121
    .line 122
    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 123
    .line 124
    if-ne v0, v2, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 131
    .line 132
    if-ne v0, v2, :cond_3

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V

    .line 138
    goto :goto_2

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result p2

    .line 147
    .line 148
    if-eqz p2, :cond_a

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 155
    .line 156
    iget v0, p2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 160
    move-result-object v3

    .line 161
    .line 162
    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 163
    .line 164
    if-ne v0, v3, :cond_8

    .line 165
    goto :goto_3

    .line 166
    .line 167
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserCompareNew:Landroid/util/SparseArray;

    .line 168
    .line 169
    iget v3, p2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    .line 176
    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->onUserLeaveChannel(Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 181
    .line 182
    :cond_9
    if-nez v0, :cond_7

    .line 183
    .line 184
    iget p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 185
    .line 186
    if-ne p2, v2, :cond_7

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 190
    move-result-object p2

    .line 191
    .line 192
    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 193
    .line 194
    if-ne p2, v2, :cond_7

    .line 195
    .line 196
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v1}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V

    .line 200
    goto :goto_3

    .line 201
    :cond_a
    :goto_4
    return-void
.end method

.method private changeChannelUserWrapperStatus(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0, p2}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->setStatus(I)V

    .line 28
    .line 29
    iget-object p2, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget v1, p2, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 34
    .line 35
    if-eq v1, p1, :cond_2

    .line 36
    .line 37
    iput p1, p2, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 43
    :cond_3
    :goto_0
    return-void
.end method

.method private cleanMainChannel()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->oldChannelType:I

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v2, "threadId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    move-object v2, v1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 64
    .line 65
    new-instance v2, Ljava/util/HashSet;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 69
    .line 70
    iput-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 71
    .line 72
    new-instance v2, Landroid/util/SparseArray;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 76
    .line 77
    iput-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    .line 80
    .line 81
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    .line 84
    const/4 v2, -0x1

    .line 85
    .line 86
    iput v2, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->joinAgoraMessageDispatched:Z

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/narvii/video/pro/VideoPreProcessing;->doDeregisterPreProcessing()V

    .line 96
    .line 97
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 98
    .line 99
    :cond_4
    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 117
    :cond_5
    return-void
.end method

.method private configStream()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getCurLiveChannelInfo()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const-string v1, "thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 23
    :goto_0
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    .line 35
    :goto_1
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    :goto_2
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 43
    move-result v3

    .line 44
    .line 45
    if-ge v1, v3, :cond_3

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 58
    .line 59
    iget v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 60
    .line 61
    xor-int/lit8 v5, v0, 0x1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3, v5}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    .line 65
    .line 66
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    return-void
.end method

.method public static synthetic d(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/video/model/ChannelActionCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->lambda$exitSignallingChannel$1(Lcom/narvii/video/model/ChannelActionCallback;Ljava/lang/Object;)V

    return-void
.end method

.method private destroyAgoraEngine()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasLeaveChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/chat/rtc/h;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/chat/rtc/h;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->destroyAgoraEngine()V

    .line 26
    :cond_0
    return-void
.end method

.method private dispatchChannelException(Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/narvii/chat/rtc/RtcService$16;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p3}, Lcom/narvii/chat/rtc/RtcService$16;-><init>(Lcom/narvii/chat/rtc/RtcService;ILcom/narvii/util/ws/WsError;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 20
    return-void
.end method

.method private dispatchChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$20;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$20;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$21;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$21;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
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

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance v7, Lcom/narvii/chat/rtc/RtcService$19;

    .line 26
    move-object v1, v7

    .line 27
    move-object v2, p0

    .line 28
    move-object v3, p1

    .line 29
    move-object v4, p2

    .line 30
    move-object v5, p3

    .line 31
    move-object v6, p4

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/rtc/RtcService$19;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v7}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$24;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$24;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchJoinAgoraSuccessed()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->joinAgoraMessageDispatched:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 26
    const/4 v2, 0x5

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/chat/rtc/RtcService$2;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/rtc/RtcService$2;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 39
    const/4 v0, 0x1

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->joinAgoraMessageDispatched:Z

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchLocalMuteUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$17;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$17;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$18;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService$18;-><init>(Lcom/narvii/chat/rtc/RtcService;ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchNetworkStatusChange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$23;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$23;-><init>(Lcom/narvii/chat/rtc/RtcService;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 36
    const/4 v0, 0x2

    .line 37
    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->musicHelper:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    .line 41
    const/4 v0, 0x3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchTotalVolumeChange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$22;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$22;-><init>(Lcom/narvii/chat/rtc/RtcService;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/narvii/chat/rtc/c;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p1}, Lcom/narvii/chat/rtc/c;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 22
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/narvii/chat/rtc/f;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/chat/rtc/f;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 22
    return-void
.end method

.method private dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 7
    const/4 v1, 0x5

    .line 8
    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 34
    .line 35
    iget-boolean v5, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    iget v1, v2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 40
    .line 41
    iput v1, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 42
    .line 43
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 44
    .line 45
    if-ne v1, p1, :cond_1

    .line 46
    move v4, v3

    .line 47
    :cond_1
    move p1, v4

    .line 48
    move v4, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move p1, v4

    .line 51
    .line 52
    :goto_0
    if-eqz v4, :cond_3

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iput-boolean v3, p0, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$15;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$15;-><init>(Lcom/narvii/chat/rtc/RtcService;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 67
    :cond_3
    return-void
.end method

.method public static synthetic e(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$exitOldChannelAndJoinNewChannel$4(Ljava/lang/Object;)V

    return-void
.end method

.method private exitOldChannelAndJoinNewChannel()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/g;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/chat/rtc/g;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 11
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/j;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p3}, Lcom/narvii/chat/rtc/j;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/chat/rtc/RtcService$13;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/narvii/chat/rtc/RtcService$13;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 21
    const/4 p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    if-nez v0, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget p1, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p2, p3, v1, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->reportLiveLayerInactiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    .line 47
    return-void
.end method

.method public static synthetic f(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$waitListJoin$8(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$waitListClean$5(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;

    move-result-object p0

    return-object p0
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 24
    .line 25
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/narvii/chat/signalling/SignallingChannel;->isNotGuestRole(I)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
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

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/narvii/chat/signalling/SignallingChannel;->isNotGuestRole(I)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public static synthetic h(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->lambda$dispatchWaitingListChanged$10(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method

.method private handleChannelActionResult(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/video/model/ChannelActionResult;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object p2, p2, Lcom/narvii/video/model/ChannelActionResult;->error:Lcom/narvii/video/model/ChannelActionError;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/narvii/video/model/ChannelActionError;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 18
    const/4 p2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->muteLocalStream(IZ)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->muteAllRemoteStream()V

    .line 27
    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$waitListJoinCancel$7(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;

    move-result-object p0

    return-object p0
.end method

.method private isAgoraUserInMainChannel(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private isAllUseVoiceMuted()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v2, v0

    .line 13
    .line 14
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v2, v3, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 29
    .line 30
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 45
    .line 46
    if-ne v3, v1, :cond_1

    .line 47
    move v1, v0

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    return v1
.end method

.method private isExistedInChannelAtLeastRole(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne p2, v1, :cond_2

    .line 12
    .line 13
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    move v0, v1

    .line 17
    :cond_1
    return v0

    .line 18
    :cond_2
    const/4 v2, 0x2

    .line 19
    .line 20
    if-ne p2, v2, :cond_5

    .line 21
    .line 22
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 23
    .line 24
    if-eq p1, v1, :cond_3

    .line 25
    .line 26
    if-ne p1, v2, :cond_4

    .line 27
    :cond_3
    move v0, v1

    .line 28
    :cond_4
    return v0

    .line 29
    :cond_5
    return v1
.end method

.method private isExistedInChannelEqualRole(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 11
    .line 12
    if-ne p2, p1, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_1
    return v0
.end method

.method private isHost(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private isInitCameraFlipped()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "cameraFlip"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private isInitCameraMuted()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->liveExtraBundle:Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "cameraMute"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private isMainChannelVideoType()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

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

.method private isMainChannelVoiceType()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isVoiceSignificantChannelType(I)Z

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

.method private isReadyToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isValidChannelToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
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

.method public static synthetic j(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->lambda$exitLiveChannel$0(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Object;)V

    return-void
.end method

.method private joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    move/from16 v2, p3

    .line 5
    .line 6
    if-ne v2, v1, :cond_0

    .line 7
    move v6, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    move v6, v2

    .line 11
    .line 12
    :goto_0
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 26
    .line 27
    if-eq v2, v1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v9, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    move v9, v1

    .line 32
    .line 33
    :goto_2
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    iget v4, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 38
    const/4 v5, 0x4

    .line 39
    .line 40
    if-eq v4, v5, :cond_3

    .line 41
    const/4 v5, 0x3

    .line 42
    .line 43
    if-ne v4, v5, :cond_4

    .line 44
    :cond_3
    move v11, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    move v11, v3

    .line 47
    .line 48
    :goto_3
    if-eqz v2, :cond_5

    .line 49
    .line 50
    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 51
    const/4 v4, 0x5

    .line 52
    .line 53
    if-ne v2, v4, :cond_5

    .line 54
    move v12, v1

    .line 55
    goto :goto_4

    .line 56
    :cond_5
    move v12, v3

    .line 57
    .line 58
    :goto_4
    iget-object v3, v0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 59
    move-object v4, p1

    .line 60
    .line 61
    move-object/from16 v5, p2

    .line 62
    .line 63
    move/from16 v7, p4

    .line 64
    .line 65
    move/from16 v8, p5

    .line 66
    .line 67
    move/from16 v10, p6

    .line 68
    .line 69
    move/from16 v13, p7

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {v3 .. v13}, Lcom/narvii/chat/video/RtcChatManager;->joinChannel(Ljava/lang/String;Ljava/lang/String;IIIZZZZZ)V

    .line 73
    return-void
.end method

.method public static synthetic k(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->lambda$onExtraCallback$2(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/chat/rtc/DataStreamListener;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method private synthetic lambda$destroyAgoraEngine$3(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/video/model/ChannelActionResult;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    .line 9
    .line 10
    const-string v0, "RtcService"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "leave channel success"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string p1, "leave channel error"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->hasLeaveChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$dispatchWaitingListApprove$9(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$dispatchWaitingListChanged$10(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$exitLiveChannel$0(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 4
    .line 5
    instance-of v0, p2, Lcom/narvii/video/model/ChannelActionResult;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcom/narvii/video/model/ChannelActionResult;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->handleChannelActionResult(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/video/model/ChannelActionResult;)V

    .line 13
    :cond_0
    return-void
.end method

.method private synthetic lambda$exitOldChannelAndJoinNewChannel$4(Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/video/model/ChannelActionResult;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 21
    .line 22
    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 23
    .line 24
    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isInitCameraMuted()Z

    .line 29
    move-result v7

    .line 30
    move-object v0, p0

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    const-string p1, "RtcService"

    .line 37
    .line 38
    const-string v0, "join agora channel error"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$exitSignallingChannel$1(Lcom/narvii/video/model/ChannelActionCallback;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 4
    .line 5
    instance-of v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/video/model/ChannelActionResult;

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 23
    .line 24
    :cond_0
    instance-of v1, p2, Lcom/narvii/util/ws/WsError;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p2, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p2, Lcom/narvii/video/model/ChannelActionResult;

    .line 44
    .line 45
    sget-object v1, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, v0, v1}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 52
    :cond_1
    return-void
.end method

.method private static synthetic lambda$onExtraCallback$2(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/narvii/chat/rtc/DataStreamListener;->onDataStreamReceived(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$waitListClean$5(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$waitListJoin$8(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method private static synthetic lambda$waitListJoinApprove$6(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;Ljava/lang/Object;)Lw7/l0;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lw7/u;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lw7/u;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static synthetic lambda$waitListJoinCancel$7(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "vvchat"

    .line 3
    .line 4
    const-string v1, "chatType"

    .line 5
    .line 6
    const-string v2, "chatId"

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    .line 13
    .line 14
    cmp-long v5, v5, v3

    .line 15
    .line 16
    if-nez v5, :cond_3

    .line 17
    .line 18
    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 19
    .line 20
    .line 21
    invoke-static {v5}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    iget-object v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    const/4 v3, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v4

    .line 39
    .line 40
    iput-wide v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    .line 41
    .line 42
    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    iput-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "-"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    iget v5, v5, Lcom/narvii/model/ChatThread;->type:I

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v5, -0x1

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    const-string v5, "chatType is null"

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    .line 88
    .line 89
    sget-object v5, Lcom/narvii/logging/ActSemantic;->VVChatStart:Lcom/narvii/logging/ActSemantic;

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Lcom/narvii/logging/LogEvent$Builder;->ndcId(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const-string v2, "memberCount"

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 129
    .line 130
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :cond_3
    iget-object v5, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    if-nez p1, :cond_6

    .line 143
    .line 144
    iget-wide v6, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    .line 145
    .line 146
    cmp-long p1, v6, v3

    .line 147
    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    iget p1, v5, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    iget-object v5, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    .line 157
    .line 158
    sget-object v6, Lcom/narvii/logging/ActSemantic;->VVChatEnd:Lcom/narvii/logging/ActSemantic;

    .line 159
    .line 160
    .line 161
    invoke-static {v5, v6}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 162
    move-result-object v5

    .line 163
    .line 164
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 165
    .line 166
    iget v6, v6, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v6}, Lcom/narvii/logging/LogEvent$Builder;->ndcId(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 170
    move-result-object v5

    .line 171
    .line 172
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 173
    .line 174
    iget-object v6, v6, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v2, v6}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    if-eqz p1, :cond_4

    .line 181
    goto :goto_2

    .line 182
    .line 183
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    :goto_2
    invoke-virtual {v2, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 191
    move-result-wide v1

    .line 192
    .line 193
    iget-wide v5, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    .line 194
    sub-long/2addr v1, v5

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    const-string v2, "duration"

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 212
    .line 213
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    :cond_5
    iput-wide v3, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartTime:J

    .line 219
    const/4 p1, 0x0

    .line 220
    .line 221
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->vvchatStartChatType:Ljava/lang/String;

    .line 222
    :cond_6
    :goto_3
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    return-object p0
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

    .line 1
    .line 2
    if-eqz p1, :cond_14

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_9

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-lt v0, v1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 77
    move-result v3

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 90
    .line 91
    iput v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    return-void

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    new-instance v2, Ljava/util/HashSet;

    .line 112
    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v3

    .line 123
    const/4 v4, 0x2

    .line 124
    const/4 v5, 0x0

    .line 125
    .line 126
    if-eqz v3, :cond_a

    .line 127
    .line 128
    .line 129
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 133
    .line 134
    if-nez v3, :cond_4

    .line 135
    goto :goto_0

    .line 136
    .line 137
    :cond_4
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 138
    .line 139
    iget v7, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 146
    .line 147
    if-nez v6, :cond_5

    .line 148
    .line 149
    new-instance v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 150
    .line 151
    iget v7, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 152
    const/4 v8, 0x0

    .line 153
    .line 154
    .line 155
    invoke-direct {v6, v3, v7, v8}, Lcom/narvii/chat/rtc/ChannelUserWrapper;-><init>(Lcom/narvii/chat/signalling/ChannelUser;ILcom/narvii/video/ui/UserStatusData;)V

    .line 156
    .line 157
    :cond_5
    iput-object v3, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 158
    .line 159
    iget-object v7, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 160
    .line 161
    iget v8, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    iget v7, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 170
    move-result-object v7

    .line 171
    .line 172
    check-cast v7, Lcom/narvii/video/ui/UserStatusData;

    .line 173
    .line 174
    .line 175
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVideoType()Z

    .line 176
    move-result v8

    .line 177
    .line 178
    if-eqz v8, :cond_8

    .line 179
    .line 180
    if-eqz v7, :cond_7

    .line 181
    .line 182
    iget v8, v7, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 183
    .line 184
    if-eq v8, v4, :cond_6

    .line 185
    .line 186
    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 187
    const/4 v8, 0x5

    .line 188
    .line 189
    if-ne v4, v8, :cond_7

    .line 190
    .line 191
    :cond_6
    iput v1, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 192
    goto :goto_1

    .line 193
    .line 194
    :cond_7
    iput v5, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 195
    goto :goto_1

    .line 196
    .line 197
    :cond_8
    if-eqz v7, :cond_9

    .line 198
    .line 199
    iput v1, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 200
    goto :goto_1

    .line 201
    .line 202
    :cond_9
    iput v5, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 203
    .line 204
    :goto_1
    iput-object v7, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 205
    .line 206
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 207
    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v3

    .line 211
    .line 212
    .line 213
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    goto :goto_0

    .line 215
    .line 216
    :cond_a
    new-instance p2, Ljava/util/HashSet;

    .line 217
    .line 218
    .line 219
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 220
    move v3, v5

    .line 221
    .line 222
    :goto_2
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 226
    move-result v6

    .line 227
    .line 228
    if-ge v3, v6, :cond_c

    .line 229
    .line 230
    iget-object v6, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 234
    move-result v6

    .line 235
    .line 236
    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v7

    .line 239
    .line 240
    .line 241
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    move-result v7

    .line 243
    .line 244
    if-nez v7, :cond_b

    .line 245
    .line 246
    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v6

    .line 249
    .line 250
    .line 251
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 254
    goto :goto_2

    .line 255
    .line 256
    .line 257
    :cond_c
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 258
    move-result-object p2

    .line 259
    .line 260
    .line 261
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    move-result v2

    .line 263
    .line 264
    if-eqz v2, :cond_d

    .line 265
    .line 266
    .line 267
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    move-result-object v2

    .line 269
    .line 270
    check-cast v2, Ljava/lang/Integer;

    .line 271
    .line 272
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 276
    move-result v2

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 280
    goto :goto_3

    .line 281
    .line 282
    :cond_d
    if-eqz v0, :cond_14

    .line 283
    .line 284
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 285
    .line 286
    .line 287
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    .line 288
    move-result p1

    .line 289
    .line 290
    if-eqz p1, :cond_e

    .line 291
    goto :goto_4

    .line 292
    :cond_e
    move v4, v1

    .line 293
    :goto_4
    move p1, v5

    .line 294
    .line 295
    .line 296
    :goto_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 297
    move-result p2

    .line 298
    .line 299
    if-ge p1, p2, :cond_14

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 303
    move-result p2

    .line 304
    .line 305
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 309
    move-result-object v2

    .line 310
    .line 311
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 312
    .line 313
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 314
    .line 315
    .line 316
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    move-result-object v6

    .line 318
    .line 319
    .line 320
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 321
    move-result v3

    .line 322
    .line 323
    if-eqz v2, :cond_f

    .line 324
    .line 325
    iget-object v6, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 326
    .line 327
    if-eqz v6, :cond_f

    .line 328
    .line 329
    iget-object v7, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 333
    move-result-object v6

    .line 334
    .line 335
    .line 336
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 337
    move-result v6

    .line 338
    .line 339
    if-eqz v6, :cond_f

    .line 340
    move v6, v1

    .line 341
    goto :goto_6

    .line 342
    :cond_f
    move v6, v5

    .line 343
    .line 344
    :goto_6
    if-eqz v2, :cond_12

    .line 345
    .line 346
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 347
    .line 348
    if-eqz v2, :cond_12

    .line 349
    .line 350
    iget v7, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 351
    .line 352
    if-eq v7, v1, :cond_10

    .line 353
    goto :goto_7

    .line 354
    .line 355
    :cond_10
    if-eqz v2, :cond_13

    .line 356
    .line 357
    if-eqz v6, :cond_11

    .line 358
    .line 359
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v4, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 363
    goto :goto_8

    .line 364
    .line 365
    :cond_11
    if-eqz v3, :cond_13

    .line 366
    .line 367
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 368
    .line 369
    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    move-result-object v3

    .line 372
    .line 373
    .line 374
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 375
    .line 376
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v4, p2, v5}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 380
    goto :goto_8

    .line 381
    .line 382
    :cond_12
    :goto_7
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 383
    .line 384
    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    move-result-object v3

    .line 387
    .line 388
    .line 389
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v4, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 395
    .line 396
    :cond_13
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 397
    goto :goto_5

    .line 398
    :cond_14
    :goto_9
    return-void
.end method

.method private muteLocalStream(IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalStream(IZ)V

    .line 15
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->getAgoraChannelInfoCallBack:Lcom/narvii/util/Callback;

    return-object p0
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

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_c

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v2, v0

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    :cond_2
    if-nez v2, :cond_4

    .line 32
    .line 33
    if-nez v3, :cond_4

    .line 34
    :cond_3
    return-void

    .line 35
    .line 36
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 47
    const/4 v5, -0x1

    .line 48
    .line 49
    if-eqz v4, :cond_7

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 56
    .line 57
    if-nez v4, :cond_6

    .line 58
    const/4 v6, 0x0

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_6
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-static {v6, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v6

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    iget v3, v4, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 72
    goto :goto_2

    .line 73
    :cond_7
    move v3, v5

    .line 74
    .line 75
    :goto_2
    if-ne v3, v5, :cond_8

    .line 76
    return-void

    .line 77
    .line 78
    :cond_8
    if-eqz v2, :cond_9

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_9
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    :goto_3
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 96
    .line 97
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->isAgoraVideoType(I)Z

    .line 101
    move-result v2

    .line 102
    .line 103
    if-eqz v2, :cond_a

    .line 104
    const/4 v2, 0x2

    .line 105
    goto :goto_4

    .line 106
    :cond_a
    move v2, v1

    .line 107
    .line 108
    :goto_4
    if-nez p1, :cond_b

    .line 109
    move v0, v1

    .line 110
    .line 111
    .line 112
    :cond_b
    invoke-virtual {p2, v2, v3, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchLocalMuteUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 118
    :cond_c
    :goto_5
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/rtc/RtcService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    return p0
.end method

.method private prepareAgoraWorkThread(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-ne p1, v2, :cond_1

    .line 15
    move v2, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v3

    .line 18
    .line 19
    :goto_1
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/narvii/chat/video/RtcChatManager;->getCurChannelType()I

    .line 31
    move-result v4

    .line 32
    .line 33
    if-ne v4, v0, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lcom/narvii/chat/video/RtcChatManager;->setForceAvatar(Z)V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Lcom/narvii/chat/video/RtcChatManager;->setForceAvatar(Z)V

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Lcom/narvii/chat/video/RtcChatManager;->setFaceTrackStatusChange(Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;)V

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/narvii/chat/video/RtcChatManager;->setCurSigChannelType(I)V

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 57
    const/4 v4, 0x5

    .line 58
    .line 59
    if-ne p1, v4, :cond_3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v1, v3

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {v2, v1, v0, p0}, Lcom/narvii/chat/video/RtcChatManager;->initRtcService(ZILcom/narvii/video/model/RtcEventHandler;)V

    .line 65
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/rtc/RtcService;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object p0
.end method

.method static bridge synthetic t(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private tryToJoinAgoraChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 11

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isReadyToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->prepareAgoraWorkThread(I)V

    .line 28
    .line 29
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 36
    .line 37
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLocalUid(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->setLocalVoiceStatus()V

    .line 46
    .line 47
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 51
    .line 52
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 56
    .line 57
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    move-result v0

    .line 62
    .line 63
    if-le v0, v2, :cond_5

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 66
    .line 67
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 70
    .line 71
    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 72
    .line 73
    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 74
    .line 75
    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    move-object v3, p0

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v3 .. v10}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    :cond_1
    const/4 v3, 0x3

    .line 85
    .line 86
    if-eq v0, v3, :cond_4

    .line 87
    const/4 v3, 0x4

    .line 88
    .line 89
    if-ne v0, v3, :cond_2

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v3, 0x5

    .line 92
    .line 93
    if-ne v0, v3, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 96
    .line 97
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLocalUid(I)V

    .line 101
    .line 102
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 106
    .line 107
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 111
    .line 112
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 113
    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 116
    move-result v0

    .line 117
    .line 118
    if-le v0, v2, :cond_5

    .line 119
    .line 120
    iput-boolean v2, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 129
    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 133
    .line 134
    if-eqz v0, :cond_3

    .line 135
    move v9, v2

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    move v9, v1

    .line 138
    .line 139
    :goto_0
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 142
    .line 143
    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 144
    .line 145
    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 146
    .line 147
    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 148
    const/4 v10, 0x0

    .line 149
    move-object v3, p0

    .line 150
    .line 151
    .line 152
    invoke-direct/range {v3 .. v10}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 156
    .line 157
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLocalUid(I)V

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 163
    .line 164
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->initLocalVideoStatus(I)V

    .line 168
    .line 169
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 173
    .line 174
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isInitCameraMuted()Z

    .line 181
    move-result v10

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isInitCameraFlipped()Z

    .line 185
    move-result v0

    .line 186
    .line 187
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v10}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 191
    .line 192
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 193
    xor-int/2addr v0, v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/RtcChatManager;->setCameraFacing(Z)V

    .line 197
    .line 198
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 199
    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 202
    move-result v0

    .line 203
    .line 204
    if-le v0, v2, :cond_5

    .line 205
    .line 206
    iput-boolean v2, p0, Lcom/narvii/chat/rtc/RtcService;->agoraJoinRequested:Z

    .line 207
    .line 208
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 211
    .line 212
    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 213
    .line 214
    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 215
    .line 216
    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 217
    const/4 v9, 0x0

    .line 218
    move-object v3, p0

    .line 219
    .line 220
    .line 221
    invoke-direct/range {v3 .. v10}, Lcom/narvii/chat/rtc/RtcService;->joinAgoraChannel(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 222
    :cond_5
    :goto_2
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    return-object p0
.end method

.method private updateChannelUserWrapperInfo(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 27
    .line 28
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isVideoType(I)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getUserDataList()Landroid/util/SparseArray;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 59
    .line 60
    iget p1, p1, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 61
    const/4 v1, 0x2

    .line 62
    .line 63
    if-ne p1, v1, :cond_2

    .line 64
    const/4 p1, 0x1

    .line 65
    .line 66
    iput p1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelException(Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/chat/rtc/RtcService;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addMutedUser(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->operaLocalMuteUser(ILjava/lang/String;)V

    .line 5
    return-void
.end method

.method public addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public addSRChannelStatusChangeListener(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srChannelStatusChangeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public cancelNotification()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->cancelNotification()V

    .line 6
    return-void
.end method

.method public captureVideoFrame(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p1, v0, v0, v0}, Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;->onProcessYUV([BIII)V

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/pro/VideoPreProcessing;->capFile(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V

    .line 14
    return-void
.end method

.method public changeLocalVoiceMuteStatus(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/narvii/video/ui/UserStatusData;->setVoiceMuted(Z)V

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method public channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    return v0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->accountService:Lcom/narvii/account/AccountService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    return v2

    .line 66
    .line 67
    :cond_3
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 84
    .line 85
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 86
    .line 87
    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 88
    .line 89
    if-ne v3, v4, :cond_4

    .line 90
    return v2

    .line 91
    :cond_5
    :goto_0
    return v0
.end method

.method public channelOnlyContaineMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 32
    .line 33
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 34
    .line 35
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 36
    .line 37
    if-ne v1, p1, :cond_1

    .line 38
    move v0, v2

    .line 39
    :cond_1
    :goto_0
    return v0
.end method

.method public cleanMappedWindow(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 28
    :cond_1
    return-void
.end method

.method public cleanThreadWindow(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingThread()Lcom/narvii/chat/video/floating/CommunityThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    .line 24
    :cond_0
    return-void
.end method

.method public cleaningAttachedWindows()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->closeShowingWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    .line 7
    return-void
.end method

.method public closeShowingWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideAudioFloatingWindow()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideVideoFloatingWindow()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x3

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideSRFloatingWindow()V

    .line 32
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

    .line 1
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

    .line 2
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

    .line 3
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

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 5
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasShowingThread:Z

    if-eqz p5, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    :cond_2
    iget-object p5, p0, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    if-nez p5, :cond_3

    move-object p5, v1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/Activity;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/narvii/chat/video/RtcChatManager;->onPause()V

    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->destroy()V

    iput-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    :cond_5
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    if-eqz v3, :cond_6

    .line 11
    new-instance v4, Lcom/narvii/chat/rtc/e;

    invoke-direct {v4, p0, v2}, Lcom/narvii/chat/rtc/e;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v3, v4}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v3

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    const-string v5, "thread"

    .line 13
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/narvii/model/ChatThread;

    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 14
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatThread;

    goto :goto_1

    :cond_7
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_8

    .line 15
    iget v4, v4, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v4, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    if-eqz p5, :cond_c

    if-eqz v3, :cond_c

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "screenRoom"

    .line 16
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->stopPlay()V

    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 18
    instance-of v3, p5, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_b

    move-object v1, p5

    check-cast v1, Lcom/narvii/app/NVActivity;

    :cond_b
    iget-object p5, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget p5, p5, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    new-instance v9, Lcom/narvii/chat/rtc/RtcService$12;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/rtc/RtcService$12;-><init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1, p5, v2, v9}, Lcom/narvii/chat/video/utils/VVChatHelper;->showReputationClaimDialog(Lcom/narvii/app/NVActivity;ILcom/narvii/chat/signalling/SignallingChannel;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    .line 19
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    :goto_2
    return-void

    :cond_d
    :goto_3
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 20
    invoke-virtual {p3, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public exitLiveChannelKeepWindow(ILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V

    .line 10
    return-void
.end method

.method public exitLiveChannelOfCommunity(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->hideLiveChannelFloatingWindow(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 12
    .line 13
    if-ne v1, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method

.method public flipCamera()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->flipCamera()V

    .line 6
    return-void
.end method

.method public getChannelUserWrapper(I)Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 28
    .line 29
    if-ne v3, p1, :cond_1

    .line 30
    return-object v2

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-object v1
.end method

.method public getCurLiveChannelInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 9
    :goto_0
    return-object v0
.end method

.method public getMainChannelChatThread()Lcom/narvii/model/ChatThread;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->getFilteredChannelUserList(Ljava/util/Collection;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->getFilteredUserList(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result v3

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 25
    move-result v4

    .line 26
    .line 27
    if-ge v3, v4, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 34
    .line 35
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 36
    .line 37
    iget v5, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 38
    .line 39
    if-ne v4, v5, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    return-object v2
.end method

.method public getMainChannelType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 9
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

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1
.end method

.method public getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

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
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getMediaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getPendingFloatingThreadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenterCountInChannel(Lcom/narvii/chat/signalling/SignallingChannel;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 25
    .line 26
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    return v0
.end method

.method public getRtcManager()Lcom/narvii/chat/video/RtcChatManager;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    return-object v0
.end method

.method public getScreenRoomHostUser()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    return-object v1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getShowingWindowType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getShowingWindowType()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSigService()Lcom/narvii/chat/signalling/SignallingService;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    return-object v0
.end method

.method public hasAtLeastOneMemberInCurrentChannel()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-le v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method public hideAudioFloatingWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAudioFloatingWindow()V

    .line 6
    return-void
.end method

.method public hideLiveChannelFloatingWindow(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 21
    :cond_0
    return-void
.end method

.method public hideSRFloatingWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeSRFloatingWindow()V

    .line 6
    return-void
.end method

.method public hideThreadDetailWindow()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    return-void
.end method

.method public hideThreadDetailWindow(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getFloatingThread()Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v0, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    if-ne v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    :cond_1
    return-void
.end method

.method public hideVideoFloatingWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeVideoFloatingWindow()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->configStream()V

    .line 9
    return-void
.end method

.method public isAllMuted()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 3
    .line 4
    const-string v1, "isMiniAllMute"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isAlreadyJoinedCurChannel(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 33
    .line 34
    if-ne p2, p1, :cond_2

    .line 35
    .line 36
    iget p2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 37
    .line 38
    if-ne p2, p1, :cond_1

    .line 39
    move v2, p1

    .line 40
    :cond_1
    return v2

    .line 41
    :cond_2
    const/4 v0, 0x2

    .line 42
    .line 43
    if-ne p2, v0, :cond_5

    .line 44
    .line 45
    iget p2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 46
    .line 47
    if-eq p2, v0, :cond_3

    .line 48
    .line 49
    if-ne p2, p1, :cond_4

    .line 50
    :cond_3
    move v2, p1

    .line 51
    :cond_4
    return v2

    .line 52
    :cond_5
    return p1

    .line 53
    :cond_6
    return v2
.end method

.method public isCreator()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "isCreator"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isEligible()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->isEligible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isHasShowingThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasShowingThread:Z

    return v0
.end method

.method public isHostInCurrentChannel()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isInMiniStatus()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 3
    .line 4
    const-string v1, "isMiniStatus"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isPresenterInChannel()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public isPrivateMainChannelFullBefore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    return v0
.end method

.method public isScreenRoomHost()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    return v0
.end method

.method public isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 7
    return-void
.end method

.method public joinLiveChannel(ILjava/lang/String;II)V
    .locals 8

    .line 1
    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/narvii/chat/rtc/RtcService;->isExistedInChannelAtLeastRole(Ljava/lang/String;I)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    return-void

    .line 34
    :cond_2
    const/4 v0, 0x1

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->hasShowingThread:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 39
    .line 40
    new-instance v7, Lcom/narvii/chat/rtc/RtcService$10;

    .line 41
    move-object v1, v7

    .line 42
    move-object v2, p0

    .line 43
    move v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move v5, p4

    .line 46
    move v6, p3

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/rtc/RtcService$10;-><init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, v7}, Lcom/narvii/chat/signalling/SignallingService;->joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public leaveChannelAsGuest(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, v0}, Lcom/narvii/chat/rtc/RtcService;->isExistedInChannelEqualRole(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 14
    :cond_0
    return-void
.end method

.method public muteAllRemoteUsers(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->isSpeaker()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 38
    .line 39
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1, p1}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteAudio(IZ)I

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public muteRemoteUser(IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    .line 49
    :cond_0
    return-void
.end method

.method public muteVideoWithoutChangeStatus(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(ZZ)I

    .line 12
    return-void
.end method

.method public onAudioQuality(IISS)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 4
    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 17
    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 7
    .line 8
    if-eqz v0, :cond_d

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllUseVoiceMuted()Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    move p2, v1

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService;->oldTotalVolume:I

    .line 27
    .line 28
    if-eq v0, p2, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatchTotalVolumeChange(I)V

    .line 32
    .line 33
    iput p2, p0, Lcom/narvii/chat/rtc/RtcService;->oldTotalVolume:I

    .line 34
    .line 35
    :cond_2
    if-eqz p1, :cond_d

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 38
    .line 39
    if-eqz p2, :cond_d

    .line 40
    move p2, v1

    .line 41
    :goto_0
    array-length v0, p1

    .line 42
    .line 43
    if-ge p2, v0, :cond_d

    .line 44
    .line 45
    aget-object v0, p1, p2

    .line 46
    .line 47
    iget v2, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->volume:I

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    .line 50
    .line 51
    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    check-cast v3, Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v3

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    .line 70
    .line 71
    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    move-result-wide v5

    .line 76
    .line 77
    .line 78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    .line 84
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 85
    .line 86
    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 87
    .line 88
    if-nez v4, :cond_4

    .line 89
    .line 90
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 91
    .line 92
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 99
    .line 100
    if-nez v2, :cond_7

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumeZeroTime:Landroid/util/SparseArray;

    .line 103
    .line 104
    iget v4, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    check-cast v2, Ljava/lang/Long;

    .line 111
    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 115
    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    iget v4, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    move v4, v1

    .line 121
    .line 122
    :goto_1
    if-eqz v2, :cond_6

    .line 123
    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    move-result-wide v5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 130
    move-result-wide v7

    .line 131
    sub-long/2addr v5, v7

    .line 132
    .line 133
    const-wide/16 v7, 0x1388

    .line 134
    .line 135
    cmp-long v2, v5, v7

    .line 136
    .line 137
    if-lez v2, :cond_6

    .line 138
    move v2, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    move v2, v4

    .line 141
    .line 142
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->lastVolumes:Landroid/util/SparseArray;

    .line 143
    .line 144
    iget v5, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 145
    .line 146
    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->volume:I

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 163
    move-result v0

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    move v2, v1

    .line 167
    .line 168
    :cond_8
    if-eqz v3, :cond_c

    .line 169
    .line 170
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 171
    .line 172
    if-nez v0, :cond_9

    .line 173
    goto :goto_3

    .line 174
    .line 175
    .line 176
    :cond_9
    invoke-static {v2}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    .line 177
    move-result v0

    .line 178
    .line 179
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 180
    .line 181
    iget v4, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 182
    .line 183
    .line 184
    invoke-static {v4}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    .line 185
    move-result v4

    .line 186
    .line 187
    if-ne v0, v4, :cond_a

    .line 188
    return-void

    .line 189
    .line 190
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 191
    .line 192
    iget v4, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 193
    const/4 v5, 0x5

    .line 194
    .line 195
    if-ne v4, v5, :cond_b

    .line 196
    .line 197
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 198
    .line 199
    if-eqz v4, :cond_b

    .line 200
    .line 201
    iget-boolean v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 202
    .line 203
    if-eqz v4, :cond_b

    .line 204
    goto :goto_3

    .line 205
    .line 206
    :cond_b
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 207
    .line 208
    iput v2, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v0, v3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 212
    .line 213
    :cond_c
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    :cond_d
    :goto_4
    return-void
.end method

.method public onChannelChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "signalling -- channel status change "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "RtcService"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 28
    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "RtcService"

    .line 3
    .line 4
    const-string v0, "signalling -- force quit"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/chat/rtc/RtcService;->oldChannelType:I

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V

    .line 21
    return-void
.end method

.method public onChannelListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Z)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "signalling -- channel changed "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "RtcService"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p2, v1}, Lcom/narvii/chat/rtc/RtcService;->dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 34
    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    iget-object p3, p3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result p3

    .line 48
    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->cleanMainChannel()V

    .line 53
    .line 54
    :cond_1
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->nvContext:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    .line 57
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    new-instance v0, Landroid/content/Intent;

    .line 65
    .line 66
    const-string v2, "com.narvii.action.LIVE_CHANNEL_QUIT"

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    const-string v2, "threadId"

    .line 72
    .line 73
    iget-object v3, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 80
    .line 81
    :cond_2
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 82
    .line 83
    if-eqz p3, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    iget-object p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-static {p3, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result p2

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/narvii/chat/call/CallScreenService;->resetCallScreen()V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 122
    :cond_5
    return-void
.end method

.method public onChannelTypeUpdateSuccess(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->logVVChatStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 7
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->receiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 2
    return-void
.end method

.method public varargs onExtraCallback(I[Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    const/4 v1, 0x3

    .line 5
    .line 6
    if-eq p1, v1, :cond_1

    .line 7
    .line 8
    const/16 p2, 0x3ea

    .line 9
    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->destroyAgoraEngine()V

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    .line 18
    aget-object v1, p2, p1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 25
    .line 26
    aget-object p2, p2, v0

    .line 27
    .line 28
    check-cast p2, [B

    .line 29
    array-length v0, p2

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    if-le v0, v2, :cond_2

    .line 33
    .line 34
    aget-byte v0, p2, p1

    .line 35
    .line 36
    const/16 v2, 0x7b

    .line 37
    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 41
    array-length v2, p2

    .line 42
    .line 43
    sget-object v3, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p2, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    :cond_2
    const/4 p1, 0x0

    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/chat/rtc/i;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v1, p2, p1}, Lcom/narvii/chat/rtc/i;-><init>(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->exitOldChannelAndJoinNewChannel()V

    .line 67
    :goto_1
    return-void
.end method

.method public onFaceStatusChange(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 10
    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 4

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    .line 9
    if-eq p2, p1, :cond_3

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-boolean p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    move p2, p3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    .line 32
    :goto_0
    iget-object p4, p0, Lcom/narvii/chat/rtc/RtcService;->context:Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    invoke-static {p4}, Lio/agora/rtc/RtcEngine;->CreateRendererView(Landroid/content/Context;)Landroid/view/SurfaceView;

    .line 36
    move-result-object p4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 39
    .line 40
    new-instance v1, Lio/agora/rtc/video/VideoCanvas;

    .line 41
    const/4 v2, 0x2

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 56
    const/4 v3, 0x5

    .line 57
    .line 58
    if-ne p2, v3, :cond_1

    .line 59
    move p2, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move p2, p3

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-direct {v1, p4, p2, p1}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/View;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)V

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/narvii/chat/video/RtcChatManager;->getUserStausData(I)Lcom/narvii/video/ui/UserStatusData;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v2}, Lcom/narvii/video/ui/UserStatusData;->setVideoFrameStatus(I)V

    .line 79
    .line 80
    iput-object p4, p2, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1, p4, v2}, Lcom/narvii/chat/video/RtcChatManager;->addNewUser(ILandroid/view/SurfaceView;I)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    if-eqz p2, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    .line 102
    move-result p2

    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    .line 108
    move-result p2

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1, p3}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->configStream()V

    .line 120
    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->hasLeaveChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVideoType()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/video/pro/VideoPreProcessing;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Lcom/narvii/video/pro/VideoPreProcessing;-><init>()V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/video/pro/VideoPreProcessing;->doRegisterPreProcessing()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/video/pro/VideoPreProcessing;->setRemoteFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 70
    const/4 v1, 0x5

    .line 71
    const/4 v2, 0x1

    .line 72
    .line 73
    if-ne v0, v1, :cond_3

    .line 74
    move v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v0, p3

    .line 77
    .line 78
    :goto_0
    if-eqz v0, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isHost(I)Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->initScreenRoomHostSwap()V

    .line 90
    .line 91
    :cond_4
    if-eqz p1, :cond_5

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    :cond_5
    move p3, v2

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->dispatchJoinAgoraSuccessed()V

    .line 101
    :cond_7
    :goto_1
    return-void
.end method

.method public onLeaveChannel()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/video/pro/VideoPreProcessing;->doDeregisterPreProcessing()V

    .line 18
    :cond_1
    return-void
.end method

.method public onLocalUserSteamDecoded(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVideoType()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 14
    :cond_0
    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 0

    return-void
.end method

.method public onNetworkStatusChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->connectionCheckRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    const-wide/32 v1, 0x1d4c0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchNetworkStatusChange(I)V

    .line 22
    return-void
.end method

.method public onReceiverBusy(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 17
    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->isLostConnectionStatus:Z

    .line 8
    .line 9
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object p3, p0, Lcom/narvii/chat/rtc/RtcService;->connectionCheckRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isMainChannelVoiceType()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    const/4 p1, 0x1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 34
    :cond_1
    return-void
.end method

.method public onRemoteUserJoined(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 17
    .line 18
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isAgoraVideoType(I)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 40
    .line 41
    if-eq v4, v3, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 48
    const/4 v5, 0x5

    .line 49
    .line 50
    if-ne v4, v5, :cond_2

    .line 51
    :cond_1
    move v2, v3

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->isAgoraUserInMainChannel(I)Z

    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x2

    .line 57
    .line 58
    if-eqz v4, :cond_9

    .line 59
    .line 60
    if-eqz v0, :cond_9

    .line 61
    .line 62
    iget-object v4, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 63
    .line 64
    if-nez v4, :cond_3

    .line 65
    goto :goto_3

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, v3}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 74
    .line 75
    :cond_4
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 76
    .line 77
    iget v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 78
    .line 79
    if-eq v2, v3, :cond_6

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    move v5, v3

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {v0, v5, p1, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    return-void

    .line 99
    .line 100
    :cond_6
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    goto :goto_2

    .line 116
    :cond_7
    move v5, v3

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-virtual {v0, v5, p1, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 120
    :cond_8
    return-void

    .line 121
    .line 122
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 123
    .line 124
    if-eqz v1, :cond_a

    .line 125
    goto :goto_4

    .line 126
    :cond_a
    move v5, v3

    .line 127
    .line 128
    .line 129
    :goto_4
    invoke-virtual {v0, v5, p1, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->unbridledAgoraUsers:Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public onRequestToken()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    .line 13
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Lcom/narvii/chat/rtc/RtcService$14;

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$14;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 24
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->threadId:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->threadId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 39
    .line 40
    iget v3, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->ndcId:I

    .line 41
    .line 42
    iget-object v1, v1, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->threadId:Ljava/lang/String;

    .line 43
    const/4 v4, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    check-cast v2, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    iget v2, v2, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;->joinRole:I

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v2, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 88
    .line 89
    :goto_3
    iget v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 96
    .line 97
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    return-void
.end method

.method public onUserForceRemoveFromPresenter(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    move-object p1, v0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/app/Activity;

    .line 14
    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f120feb

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 27
    .line 28
    .line 29
    const p1, 0x7f1207e7

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V

    .line 39
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

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "signalling -- user list changed "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    const-string v0, " null "

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, " size "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v0, "RtcService"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p2, p4}, Lcom/narvii/chat/rtc/RtcService;->mergeAgoraDataAndChannelData(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    move-object p1, v0

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->tryToJoinAgoraChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 85
    .line 86
    if-nez p4, :cond_3

    .line 87
    return-void

    .line 88
    .line 89
    :cond_3
    if-eqz p1, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/rtc/RtcService;->calculateUserListChange(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 96
    const/4 p2, 0x1

    .line 97
    .line 98
    if-eqz p1, :cond_8

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 108
    move-result p1

    .line 109
    const/4 p3, 0x2

    .line 110
    .line 111
    if-ne p1, p3, :cond_8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getThreadId()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    .line 132
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result p4

    .line 138
    .line 139
    if-eqz p4, :cond_6

    .line 140
    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object p4

    .line 144
    .line 145
    check-cast p4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 146
    .line 147
    iget p4, p4, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 148
    .line 149
    if-eq p4, p2, :cond_5

    .line 150
    const/4 p1, 0x0

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    move p1, p2

    .line 153
    .line 154
    :goto_2
    iput-boolean p1, p0, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore:Z

    .line 155
    .line 156
    if-eqz p1, :cond_8

    .line 157
    .line 158
    sget-object p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 159
    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    sget-object p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    check-cast p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 178
    .line 179
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p3}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 183
    .line 184
    .line 185
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    .line 186
    move-result p1

    .line 187
    .line 188
    if-eqz p1, :cond_9

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->muteAllRemoteUsers(Z)V

    .line 192
    :cond_9
    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserDataToChannelUserWrapper(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllUseVoiceMuted()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchTotalVolumeChange(I)V

    .line 17
    :cond_0
    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 4
    return-void
.end method

.method public onUserOffline(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->updateChannelUserWrapperInfo(I)V

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p2, 0x2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService;->changeChannelUserWrapperStatus(II)V

    .line 19
    :goto_0
    return-void
.end method

.method public onUserRoleChange(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->buildMainSignalChanel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    const/4 p1, 0x3

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/chat/rtc/RtcService;->dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 11
    .line 12
    iget-object p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/rtc/RtcService;->mergeAgoraDataAndChannelData(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 19
    move-result-object p1

    .line 20
    const/4 p3, 0x0

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    move-object p1, p3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-direct {p0, p2, v0, v1, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 52
    return-void
.end method

.method public onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->dispatchWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/rtc/RtcService;->dispatchWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    return-void
.end method

.method public onlyMePresenterInMainChannel()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 22
    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    move v1, v3

    .line 25
    :cond_1
    :goto_0
    return v1
.end method

.method public postShowFloatingRunnable(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->removePendingFloatingRunnable()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/rtc/RtcService$4;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/rtc/RtcService$4;-><init>(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/chat/rtc/RtcService;->showFloatingWindowHandler:Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    return-void
.end method

.method public relaunchRtcMainActivity()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity(ZLandroid/content/Intent;)V

    return-void
.end method

.method public relaunchRtcMainActivity(ZLandroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideVideoFloatingWindow()V

    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideAudioFloatingWindow()V

    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->hideSRFloatingWindow()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->closeShowingWindow()V

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->relaunchLiveChannelListener:Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 8
    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;->onReLaunchLiveChannelView(Landroid/os/Bundle;ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public removeAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->totalVolumeChangeDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeAllLocalMuteUsers()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->removeMutedUser(Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserList:Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public removeAsSpeaker(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 8
    .line 9
    iget v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v3, Lcom/narvii/chat/rtc/RtcService$7;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$7;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/narvii/chat/signalling/SignallingService;->sendRemoveFromPresenter(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 20
    return-void
.end method

.method public removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelUserWrapperStatusDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->dataStreamListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelStatusChangeDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeLiveChannelErrorListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelErrorDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localMuteUserListDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeMutedUser(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->operaLocalMuteUser(ILjava/lang/String;)V

    .line 5
    return-void
.end method

.method public removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->localChannelUserStatusDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeMyNetWorkStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->networkStatusDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removePendingFloatingRunnable()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->pendingFloatingThreadId:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/narvii/chat/rtc/RtcService;->showFloatingWindowHandler:Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public removeSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->srRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListDispatcher:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 15
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

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V

    return-void
.end method

.method public requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;ZZ)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v4, Lcom/narvii/video/model/ChannelActionResult;

    const/4 v0, 0x0

    sget-object v1, Lcom/narvii/video/model/ChannelActionError;->ERROR_REQUEST_TO_BE_PRESENTER:Lcom/narvii/video/model/ChannelActionError;

    invoke-direct {v4, v0, v1}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 4
    iget v0, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->isVideoSignificantChannelType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/narvii/chat/rtc/RtcService;->getPresenterCountInChannel(Lcom/narvii/chat/signalling/SignallingChannel;)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, v4}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 6
    iget v8, v2, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v9, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    new-instance v10, Lcom/narvii/chat/rtc/RtcService$3;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/rtc/RtcService$3;-><init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/video/model/ChannelActionCallback;Lcom/narvii/video/model/ChannelActionResult;ZZ)V

    const/4 p1, 0x1

    invoke-virtual {v7, v8, v9, p1, v10}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetReputationComposite(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->destroy()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->repEarningComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 13
    return-void
.end method

.method public saveCurrentLiveChannelInfo(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method

.method public sendDataStream([B)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/RtcChatManager;->sendDataStream([B)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v1, "fail to send agora data stream ("

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    neg-int v1, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, ")"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "RtcService"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    :goto_0
    return p1
.end method

.method public setCameraLandScape(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/narvii/chat/video/CameraRenderer;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/video/CameraRenderer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/CameraRenderer;->setLandscape(Z)V

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public setCommunityString(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setCommunityString(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setHideDrawer(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setHideDrawer(Z)V

    .line 6
    return-void
.end method

.method public setHostStreamMode(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelUserWrapperList:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 20
    .line 21
    iget v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setIsAllMuted(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$25;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/rtc/RtcService$25;-><init>(Lcom/narvii/chat/rtc/RtcService;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 19
    .line 20
    const-string v1, "isMiniAllMute"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public setIsChannelCreator(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setIsChannelCreator(Z)V

    .line 6
    return-void
.end method

.method public setIsFromGlobalChat(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->setIsFromGlobalChat(Z)V

    .line 6
    return-void
.end method

.method public setIsInMiniStatus(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->curChannelMiniInfo:Landroid/os/Bundle;

    .line 3
    .line 4
    const-string v1, "isMiniStatus"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public setMainChannelChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setRelaunchLiveChannelListener(Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->relaunchLiveChannelListener:Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;

    return-void
.end method

.method public setVideoFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->videoPreProcessing:Lcom/narvii/video/pro/VideoPreProcessing;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->videoFrameAvailableListener:Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/video/pro/VideoPreProcessing;->setRemoteFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 11
    return-void
.end method

.method public showAudiFloatingWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->showAudioFloatingWindow()V

    .line 9
    return-void
.end method

.method public showNotification()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->curLiveChannelInfo:Landroid/os/Bundle;

    .line 9
    .line 10
    const-string v2, "thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-class v2, Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-object v0, v1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->notificationHelper:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 39
    .line 40
    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->showNotification(Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public showSRFloatingWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->showSRFloatingWindow()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcService;->setHostStreamMode(Z)V

    .line 12
    return-void
.end method

.method public showThreadDetailWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->showThreadFloatingWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V

    .line 6
    return-void
.end method

.method public showVideoFloatingWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->floatingManager:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->showVideoFloatingWindow()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->enterLowerStreamMode()V

    .line 14
    return-void
.end method

.method public stopPresenting()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->requesToBeAudience()V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 29
    const/4 v1, 0x5

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainChannelChatThread:Lcom/narvii/model/ChatThread;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget v1, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 54
    .line 55
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 56
    .line 57
    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/narvii/chat/rtc/RtcService;->channelOnlyContaineMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    const/4 v1, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v1, 0x2

    .line 67
    .line 68
    :goto_1
    new-instance v4, Lcom/narvii/chat/rtc/RtcService$6;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, p0}, Lcom/narvii/chat/rtc/RtcService$6;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 75
    :cond_4
    :goto_2
    return-void
.end method

.method public toggleLocalSteam()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalAudio()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalVideo()V

    .line 11
    return-void
.end method

.method public toggleLocalVideo()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalVideo()V

    .line 6
    return-void
.end method

.method public toggleLocalVoice()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleLocalAudio()V

    .line 6
    return-void
.end method

.method public toggleSpeaker()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->toggleSpeaker()V

    .line 6
    return-void
.end method

.method public tryKeepAlive()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/narvii/chat/signalling/SignallingService;->setKeepAliveThreadId(Ljava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method

.method public updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method public updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->sigService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/RtcService$9;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$9;-><init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public updateLocalUserVolume(F)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v1, p1, v0

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    move p1, v0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    .line 15
    cmpg-float v1, p1, v0

    .line 16
    .line 17
    if-gez v1, :cond_2

    .line 18
    move p1, v0

    .line 19
    .line 20
    :cond_2
    const/high16 v0, 0x43800000    # 256.0f

    .line 21
    mul-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    .line 41
    move-result v2

    .line 42
    .line 43
    if-ne v1, v2, :cond_4

    .line 44
    return-void

    .line 45
    .line 46
    :cond_4
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 47
    .line 48
    iput p1, v1, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService;->mainSignalChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 54
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p3}, Lcom/narvii/chat/rtc/a;-><init>(Lcom/narvii/util/Callback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListClean(ILjava/lang/String;Le8/l;)V

    .line 11
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/d;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p3}, Lcom/narvii/chat/rtc/d;-><init>(Lcom/narvii/util/Callback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoin(ILjava/lang/String;Le8/l;)V

    .line 11
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/k;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p4}, Lcom/narvii/chat/rtc/k;-><init>(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Le8/l;)V

    .line 11
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService;->waitingListService:Lcom/narvii/chat/waitinglist/WaitingListService;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/rtc/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p4}, Lcom/narvii/chat/rtc/b;-><init>(Lcom/narvii/util/Callback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Le8/l;)V

    .line 11
    return-void
.end method
