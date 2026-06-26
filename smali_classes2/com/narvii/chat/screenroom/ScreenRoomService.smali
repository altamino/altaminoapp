.class public Lcom/narvii/chat/screenroom/ScreenRoomService;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;
.implements Lcom/narvii/util/ws/WsService$WsListener;
.implements Lcom/narvii/chat/screenroom/PlayActionListener;
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;
.implements Lcom/narvii/youtube/YoutubeVideoCallback;
.implements Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;
.implements Lcom/narvii/chat/rtc/DataStreamListener;
.implements Lcom/narvii/chat/audio/Mixer$MixerListener;
.implements Lcom/narvii/chat/screenroom/SRRoleChangeListener;
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;,
        Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIC_VOLUME:F = 8.0f

.field private static final DONE:Lcom/narvii/util/Tag;

.field private static final MIC_MUTE_THRESHOLD:F = 0.3f

.field private static final SR_HOST_LOADING_CHECK_INTERVAL:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "ScreenRoomService"

.field public static final TYPE_PARTICIPANT_OPTION_NONE:I = 0x0

.field public static final TYPE_PARTICIPANT_OPTION_VIDEO:I = 0x1

.field public static final TYPE_PARTICIPANT_OPTION_VOICE:I = 0x2


# instance fields
.field final NUM_FMT_2:Ljava/text/DecimalFormat;

.field final NUM_FMT_3:Ljava/text/DecimalFormat;

.field private final audioLock:Ljava/lang/Object;

.field buffering:Z

.field private bytesBuffer:[B

.field private channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

.field checkSRHostLoading:Z

.field private context:Lcom/narvii/app/NVContext;

.field public curChatThread:Lcom/narvii/model/ChatThread;

.field public curScreenRoomDefaultAction:I

.field private curYoutubeId:Ljava/lang/String;

.field currentPlayListItem:Lcom/narvii/model/PlayListItem;

.field currentUserSeeked:Z

.field everPlayed:Z

.field glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

.field private final hostMicMuteRunnable:Ljava/lang/Runnable;

.field isCurrentPlayAudioOnly:Z

.field isCurrentPlayStarted:Z

.field public isEchoHintShowed:Z

.field private final levelIndicator:Ljava/lang/Runnable;

.field micLevelIdx:I

.field final micLevels:[F

.field private mixer:Lcom/narvii/chat/audio/Mixer;

.field private mixerMediaVolume:F

.field private mixerMicVolume:F

.field private muteHintInfoShown:Z

.field public participantOption:I

.field playList:Lcom/narvii/model/PlayList;

.field private playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

.field private resampler:Lcom/narvii/chat/audio/Resampler;

.field private resamplerRate:I

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field public screenRoomHostDataCame:Z

.field public screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

.field private shortBuffer:[S

.field private srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final srAudioOnlyCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

.field private srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;",
            ">;"
        }
    .end annotation
.end field

.field srHostChangeFlags:I

.field srHostIndicatorLevel:F

.field private srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRHostLoadingListener;",
            ">;"
        }
    .end annotation
.end field

.field private srHostMicListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRHostMicListener;",
            ">;"
        }
    .end annotation
.end field

.field srHostMuted:Z

.field final srHostStatusCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

.field private srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/SRHostStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field srHostVideoProgress:F

.field final tmpsb:Ljava/lang/StringBuilder;

.field private videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/VideoPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field ws:Lcom/narvii/util/ws/WsService;

.field youtubeService:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "done"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->DONE:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading:Z

    .line 98
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 100
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 102
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMicListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 104
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 106
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 108
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 110
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    const/4 v1, -0x1

    .line 128
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curScreenRoomDefaultAction:I

    .line 237
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 244
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    const/4 v1, 0x0

    .line 245
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    const/4 v2, 0x1

    .line 246
    iput-boolean v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 247
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 248
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    const/4 v1, 0x5

    new-array v1, v1, [F

    .line 1123
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevels:[F

    .line 1124
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevelIdx:I

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 1167
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$24;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$24;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->levelIndicator:Ljava/lang/Runnable;

    .line 1185
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$25;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->hostMicMuteRunnable:Ljava/lang/Runnable;

    .line 1245
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

    .line 1269
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srAudioOnlyCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

    .line 254
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "ws"

    .line 255
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 258
    new-instance v0, Lcom/narvii/model/PlayList;

    invoke-direct {v0}, Lcom/narvii/model/PlayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    const-string v0, "rtc"

    .line 260
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string/jumbo v0, "youtube"

    .line 261
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 262
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addSRChannelStatusChangeListener(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    .line 264
    new-instance v0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    invoke-direct {v0, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 265
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v0, 0x2e

    .line 266
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 267
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_2:Ljava/text/DecimalFormat;

    .line 268
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.###"

    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_3:Ljava/text/DecimalFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayError()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/screenroom/ScreenRoomService;Ljava/lang/String;)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentVideoId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMicListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/screenroom/ScreenRoomService;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    return p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method private fetchPlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 764
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x7a

    .line 765
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 766
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 767
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p1, "threadId"

    .line 768
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 769
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 770
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$17;

    invoke-direct {p1, p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService$17;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/util/Callback;)V

    iput-object p1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 786
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method private getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 2

    .line 683
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v1, v1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayListItem;

    :cond_0
    return-object v0
.end method

.method private getNextPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 672
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v2, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v2, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 677
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v1, v1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayListItem;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private getPrevPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v2, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-lez v0, :cond_2

    .line 662
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v1, v1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayListItem;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private initMuteConfig()V
    .locals 0

    return-void
.end method

.method private isCurrentVideoId(Ljava/lang/String;)Z
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 963
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 5

    .line 642
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPrevPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/screenroom/VideoPlayListener;->onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V

    return-void
.end method

.method private notifyUserSeekedWhenReady()V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget v0, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$27;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$27;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method private onPlayError()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0678

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 208
    :cond_1
    invoke-direct {p0, v3}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 209
    iput-boolean v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 210
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 211
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 212
    iput-boolean v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 213
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyUserSeekedWhenReady()V

    .line 214
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 215
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$6;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$6;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private onPlayStatusChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(Lcom/narvii/util/Callback;)V

    .line 481
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$12;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$12;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private onScreenRoomHostLoading(Z)V
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$9;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBuffering(Z)V
    .locals 2

    .line 595
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->buffering:Z

    .line 596
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$15;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$15;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V
    .locals 2

    .line 490
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-nez p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    const/4 v0, -0x1

    iput v0, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v0, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    :goto_0
    return-void
.end method

.method private setPlayStatusReady()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-nez v0, :cond_0

    const-string v0, "screenRoomService"

    const-string v1, "glVideoView is null when setPlayStatusReady"

    .line 547
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 551
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    const/4 v1, 0x1

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    const/4 v0, 0x0

    .line 552
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 553
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 554
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyUserSeekedWhenReady()V

    .line 555
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/narvii/youtube/YoutubeService;->abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView()V

    .line 560
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_3

    .line 561
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 565
    invoke-direct {p0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 566
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/screenroom/ScreenRoomService$14;

    invoke-direct {v3, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$14;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 588
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v2, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 589
    invoke-direct {p0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startPlayVideo(Landroid/net/Uri;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-nez v0, :cond_0

    return-void

    .line 974
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 975
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    const/4 p1, 0x1

    .line 976
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    return-void
.end method

.method private updatePlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 801
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x78

    .line 802
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 803
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 804
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p1, "threadId"

    .line 805
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 808
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    const-string p2, "playlist"

    .line 810
    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 811
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 812
    sget-object p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->DONE:Lcom/narvii/util/Tag;

    iput-object p1, v0, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 813
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$18;

    invoke-direct {p1, p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService$18;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/util/Callback;)V

    iput-object p1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 825
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method private updatePlayList(Lcom/narvii/util/Callback;)V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "TAG"

    const-string v0, "can not fetch playlist in an empty channel"

    .line 794
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 797
    :cond_0
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public checkSRHostLoading(Z)V
    .locals 3

    .line 302
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 305
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 307
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    .line 308
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$8;

    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$8;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    .line 318
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    .line 320
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 322
    :cond_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    :goto_0
    return-void
.end method

.method public fetchPlayList(Lcom/narvii/util/Callback;)V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "TAG"

    const-string v0, "can not fetch playlist in an empty channel"

    .line 756
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 759
    :cond_0
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->fetchPlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    return-object v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget v0, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    return v0
.end method

.method public getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    return-object v0
.end method

.method public getHostVideoProgress()F
    .locals 1

    .line 1099
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    return v0
.end method

.method public getLocalMicMuted()Z
    .locals 2

    .line 1080
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaVolume()F
    .locals 1

    .line 1057
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    return v0
.end method

.method public getMicVolume()F
    .locals 1

    .line 1072
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    return v0
.end method

.method public getPlayItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPlayList()Lcom/narvii/model/PlayList;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    return-object v0
.end method

.method public getSrHostMicLevelIndicator()F
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1129
    :cond_0
    iget v0, v0, Lcom/narvii/chat/audio/Mixer;->level:F

    :goto_0
    return v0
.end method

.method public hasNextPlayItem()Z
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevPlayItem()Z
    .locals 1

    .line 646
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPrevPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 1284
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->buffering:Z

    return v0
.end method

.method public isCurrentPlayAudioOnly()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    return v0
.end method

.method public isCurrentPlayStarted()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    return v0
.end method

.method public isCurrentUserSeeked()Z
    .locals 1

    .line 1299
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    return v0
.end method

.method public isHostInSRChannel()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSrHostMuted()Z
    .locals 1

    .line 1303
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    return v0
.end method

.method public leaveScreenRoom()V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setVideoFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading(Z)V

    .line 449
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 450
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 451
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 452
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 453
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    const/4 v3, -0x1

    iput v3, v2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 455
    new-instance v2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 456
    new-instance v2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 458
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 459
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->buffering:Z

    const/4 v2, 0x0

    .line 460
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 461
    iput v4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    .line 462
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 463
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 464
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 465
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 467
    iput v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curScreenRoomDefaultAction:I

    .line 468
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curChatThread:Lcom/narvii/model/ChatThread;

    .line 469
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    .line 470
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isEchoHintShowed:Z

    .line 472
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->participantOption:I

    .line 473
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 474
    invoke-virtual {v0, v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback(Z)V

    .line 475
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    :cond_0
    return-void
.end method

.method public notifyVideoPlayChanged()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$7;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$7;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onAudioFrameAvailable([BIIII)V
    .locals 4

    .line 702
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    if-eqz v1, :cond_3

    .line 704
    div-int/lit8 v1, p3, 0x2

    .line 706
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->shortBuffer:[S

    if-eqz v2, :cond_0

    .line 707
    array-length v3, v2

    if-ge v3, v1, :cond_1

    .line 708
    :cond_0
    new-array v2, v1, [S

    .line 709
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->shortBuffer:[S

    .line 712
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 714
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    invoke-virtual {p1, v2, p2, v1, p5}, Lcom/narvii/chat/audio/ChannelMixer;->write([SIII)I

    .line 715
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    iget-object p1, p1, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 716
    iget-object p3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    iget p3, p3, Lcom/narvii/chat/audio/ChannelMixer;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 719
    :try_start_1
    iget p5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resamplerRate:I

    if-eq p5, p4, :cond_2

    .line 720
    new-instance p5, Lcom/narvii/chat/audio/Resampler;

    const/4 v1, 0x1

    const v2, 0xac44

    const/4 v3, 0x4

    invoke-direct {p5, v1, p4, v2, v3}, Lcom/narvii/chat/audio/Resampler;-><init>(IIII)V

    iput-object p5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    .line 721
    iput p4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resamplerRate:I

    .line 723
    :cond_2
    iget-object p4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    invoke-virtual {p4, p1, p2, p3}, Lcom/narvii/chat/audio/Resampler;->put([SII)I

    move-result p4

    .line 724
    iget-object p5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    invoke-virtual {p5}, Lcom/narvii/chat/audio/Resampler;->buffer()[S

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p3, p4

    goto :goto_0

    :catchall_0
    move-exception p4

    :try_start_2
    const-string p5, "ScreenRoomService"

    const-string v1, "fail to resample audio frame"

    .line 727
    invoke-static {p5, v1, p4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 730
    :goto_0
    iget-object p4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    invoke-virtual {p4, p1, p2, p3}, Lcom/narvii/chat/audio/Mixer;->pushMixBuffer([SII)V

    .line 732
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onChannelEnd()V
    .locals 3

    const-string v0, "ScreenRoomService"

    const-string v1, "onChannelEnd"

    .line 1036
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    invoke-virtual {v1}, Lcom/narvii/chat/audio/Mixer;->stop()V

    .line 1040
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    if-eqz v1, :cond_1

    .line 1043
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    invoke-virtual {v1}, Lcom/narvii/chat/audio/Resampler;->close()V

    .line 1044
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    :cond_1
    const/4 v1, 0x0

    .line 1046
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resamplerRate:I

    .line 1047
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->leaveScreenRoom()V

    .line 1049
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->removeDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V

    .line 1050
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    const/4 v0, 0x0

    .line 1051
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 1052
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 1053
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    return-void

    :catchall_0
    move-exception v1

    .line 1047
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onChannelStarted(Z)V
    .locals 4

    const-string v0, "ScreenRoomService"

    const-string v1, "onChannelStarted"

    .line 999
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->initMuteConfig()V

    if-eqz p1, :cond_1

    .line 1002
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    invoke-virtual {v0}, Lcom/narvii/chat/audio/Mixer;->stop()V

    .line 1006
    :cond_0
    new-instance v0, Lcom/narvii/chat/audio/Mixer;

    const v1, 0xac44

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/chat/audio/Mixer;-><init>(III)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 1007
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    iput v1, v0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 1008
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    iput v1, v0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 1009
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    iput-object p0, v0, Lcom/narvii/chat/audio/Mixer;->listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

    .line 1010
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    invoke-virtual {v0}, Lcom/narvii/chat/audio/Mixer;->start()Z

    .line 1011
    invoke-static {v3}, Lcom/narvii/chat/audio/ChannelMixer;->getMixer(I)Lcom/narvii/chat/audio/ChannelMixer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    .line 1012
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1014
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v0, p1, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 1015
    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$23;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService$23;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;I)V

    invoke-virtual {p1, v1}, Lcom/narvii/chat/rtc/RtcService;->setVideoFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 1029
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V

    :goto_0
    return-void
.end method

.method public onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 942
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 943
    iput-boolean v0, p1, Lcom/narvii/model/PlayListItem;->isDone:Z

    .line 944
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object p1

    .line 945
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    :cond_0
    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onDataStreamReceived(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1204
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$26;

    invoke-direct {p1, p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService$26;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-string v0, "--"

    .line 981
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentVideoId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "mediaPlayer"

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch youtube url fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :catch_0
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$22;

    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$22;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 0

    .line 951
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentVideoId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 952
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 953
    invoke-direct {p0, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 954
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->startPlayVideo(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onLevelIndicator(F)V
    .locals 7

    .line 1135
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevels:[F

    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevelIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevelIdx:I

    array-length v2, v0

    rem-int/2addr v1, v2

    aput p1, v0, v1

    .line 1136
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1137
    iget v1, v1, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 1139
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget v6, v0, v4

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevels:[F

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    const v0, 0x3e99999a    # 0.3f

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->hostMicMuteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 1147
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->levelIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1148
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->levelIndicator:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 1151
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1152
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1154
    :goto_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1155
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\"t\":1,\"mute\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    const/16 v2, 0x31

    goto :goto_2

    :cond_3
    const/16 v2, 0x30

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1157
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    const-string v2, ",\"lv\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_2:Ljava/text/DecimalFormat;

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    const-string v1, ",\"pr\":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_3:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    const-string v0, ",\"ao\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1163
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1164
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/rtc/RtcService;->sendDataStream([B)Z

    return-void
.end method

.method public onMixedBuffer([SII)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->bytesBuffer:[B

    if-eqz v0, :cond_0

    .line 742
    array-length v1, v0

    mul-int/lit8 v2, p3, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    mul-int/lit8 v0, p3, 0x2

    .line 743
    new-array v0, v0, [B

    .line 744
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->bytesBuffer:[B

    .line 746
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 747
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/video/framepusher/MediaFramePusher;->pushAudioFrame([B)V

    :cond_2
    return-void
.end method

.method public onPlayItemClear()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 861
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 862
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 864
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 867
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V

    .line 868
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 870
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$20;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$20;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onPlayItemDeleted(Lcom/narvii/model/PlayListItem;)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-nez v0, :cond_0

    return-void

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    .line 833
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 835
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 837
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 839
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 841
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    goto :goto_0

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 845
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V

    .line 846
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 848
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$19;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$19;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public onScreenRoomRoleChange(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1105
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1106
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->loadPlayListItem()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1108
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayListItems(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1112
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->fetchPlayList(Lcom/narvii/util/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserSeeked()V
    .locals 1

    const/4 v0, 0x1

    .line 1309
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 1310
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyUserSeekedWhenReady()V

    return-void
.end method

.method public onVideoFrameAvailable(IILjavax/microedition/khronos/egl/EGLContext;II[F)V
    .locals 8

    .line 694
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    move-result-object v1

    move-object v2, p3

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/narvii/video/framepusher/MediaFramePusher;->pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V
    .locals 0

    .line 1118
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1119
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    if-le p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->setScreenRoomHostSwap(Z)V

    :cond_1
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 883
    :cond_0
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    sget-object v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->DONE:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    return-void

    .line 887
    :cond_1
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v0, 0x77

    if-ne p1, v0, :cond_5

    .line 888
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isHostInSRChannel()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 889
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "threadId"

    aput-object v3, v1, v2

    .line 890
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 891
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p2, v0, [Ljava/lang/String;

    const-string v1, "playlist"

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_2

    .line 894
    new-instance p1, Lcom/narvii/model/PlayList;

    invoke-direct {p1}, Lcom/narvii/model/PlayList;-><init>()V

    goto :goto_0

    .line 896
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/PlayList;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PlayList;

    .line 898
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 901
    :try_start_0
    iget-object p2, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget v1, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/PlayListItem;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 904
    :goto_1
    iget-object p2, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-nez p2, :cond_3

    .line 905
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 909
    :cond_3
    iget p2, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading(Z)V

    .line 911
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$21;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$21;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/model/PlayList;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_5
    return-void
.end method

.method public pause()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    const/4 v1, 0x3

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 370
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 371
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$11;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$11;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public playItem(Lcom/narvii/model/PlayListItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 508
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 509
    iget v1, p1, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 510
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    const/4 v2, 0x2

    iput v2, v1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 512
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 514
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 516
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 518
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 519
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/narvii/youtube/YoutubeService;->abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 522
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView()V

    .line 524
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-eqz v1, :cond_5

    .line 525
    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 527
    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 528
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 529
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, p0}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto :goto_1

    .line 531
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 532
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->startPlayVideo(Landroid/net/Uri;)V

    .line 536
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$13;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$13;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public playNext()V
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    return-void
.end method

.method public playPrev()V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPrevPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    return-void
.end method

.method public removePlayListChangeListener(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeVideoPlayListner(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 136
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getCurrentPosition()I

    if-eqz p1, :cond_0

    .line 138
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V

    .line 154
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$2;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V

    .line 161
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$3;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V

    .line 175
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$4;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V

    .line 181
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$5;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V

    .line 188
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoFrameAvailableListener(Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getMediaVolume()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setHostMicMuted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41000000    # 8.0f

    .line 1084
    :goto_0
    iput p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    const/4 p1, 0x0

    .line 1085
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    .line 1086
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    if-eqz p1, :cond_1

    .line 1087
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    iput v0, p1, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    :cond_1
    return-void
.end method

.method public setMediaVolume(F)V
    .locals 1

    .line 1061
    iput p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    .line 1062
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    if-eqz v0, :cond_0

    .line 1063
    iput p1, v0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public setMicVolume(F)V
    .locals 1

    .line 1092
    iput p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 1093
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    if-eqz v0, :cond_0

    .line 1094
    iput p1, v0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    :cond_0
    return-void
.end method

.method public setPlayListItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 608
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->savePlaylist(Ljava/util/List;)V

    .line 612
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 613
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object v0, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 615
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object p1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 616
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget-object p1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PlayListItem;

    .line 617
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    iget v3, v3, Lcom/narvii/model/PlayList;->currentItemStatus:I

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 619
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 620
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V

    :cond_4
    const/4 p1, 0x0

    .line 624
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(Lcom/narvii/util/Callback;)V

    .line 625
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$16;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$16;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 355
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    const/4 v1, 0x2

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 356
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 357
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$10;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$10;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public startPlay()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    :cond_0
    return-void
.end method

.method public toggleHostMic()V
    .locals 1

    .line 1076
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setHostMicMuted(Z)V

    return-void
.end method
