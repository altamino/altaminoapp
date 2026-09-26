.class public Lcom/narvii/chat/screenroom/ScreenRoomService;
.super Ljava/lang/Object;
.source "SourceFile"

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
        Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;,
        Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "done"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->DONE:Lcom/narvii/util/Tag;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading:Z

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMicListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 47
    .line 48
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 54
    .line 55
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 56
    const/4 v1, -0x1

    .line 57
    .line 58
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curScreenRoomDefaultAction:I

    .line 59
    .line 60
    new-instance v1, Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    .line 66
    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    .line 69
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    .line 70
    const/4 v1, 0x0

    .line 71
    .line 72
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 73
    const/4 v2, 0x1

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 76
    .line 77
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 78
    .line 79
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 80
    const/4 v1, 0x5

    .line 81
    .line 82
    new-array v1, v1, [F

    .line 83
    .line 84
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevels:[F

    .line 85
    .line 86
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevelIdx:I

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const/16 v1, 0x20

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 96
    .line 97
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$10;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->levelIndicator:Ljava/lang/Runnable;

    .line 103
    .line 104
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$11;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->hostMicMuteRunnable:Ljava/lang/Runnable;

    .line 110
    .line 111
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

    .line 117
    .line 118
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 122
    .line 123
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srAudioOnlyCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->context:Lcom/narvii/app/NVContext;

    .line 126
    .line 127
    const-string v0, "ws"

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 141
    .line 142
    new-instance v0, Lcom/narvii/model/PlayList;

    .line 143
    .line 144
    .line 145
    invoke-direct {v0}, Lcom/narvii/model/PlayList;-><init>()V

    .line 146
    .line 147
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 148
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    iput-object v1, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 155
    .line 156
    const-string v0, "rtc"

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 165
    .line 166
    const-string v0, "youtube"

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    check-cast v0, Lcom/narvii/youtube/YoutubeService;

    .line 173
    .line 174
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addSRChannelStatusChangeListener(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    .line 185
    .line 186
    new-instance v0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;-><init>(Lcom/narvii/app/NVContext;)V

    .line 190
    .line 191
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 192
    .line 193
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    .line 194
    .line 195
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 196
    .line 197
    .line 198
    invoke-direct {p1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 199
    .line 200
    const/16 v0, 0x2e

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 204
    .line 205
    new-instance v0, Ljava/text/DecimalFormat;

    .line 206
    .line 207
    const-string v1, "0.##"

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 211
    .line 212
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_2:Ljava/text/DecimalFormat;

    .line 213
    .line 214
    new-instance v0, Ljava/text/DecimalFormat;

    .line 215
    .line 216
    const-string v1, "0.###"

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 220
    .line 221
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_3:Ljava/text/DecimalFormat;

    .line 222
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$notifyUserSeekedWhenReady$13(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/model/PlayList;Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$onWsMessage$11(Lcom/narvii/model/PlayList;Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    return-void
.end method

.method public static synthetic c(ZLcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$setBuffering$8(ZLcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$setPlayListItems$9(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$playItem$7(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$setGlVideoView$2(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method private fetchPlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 4
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x7a

    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 5
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 6
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p1, "threadId"

    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$6;

    invoke-direct {p1, p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService$6;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/util/Callback;)V

    iput-object p1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/chat/screenroom/ScreenRoomService;Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$setGlVideoView$0(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method private getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/PlayListItem;

    .line 28
    :cond_0
    return-object v0
.end method

.method private getNextPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    move-result v0

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    if-ge v0, v2, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/model/PlayListItem;

    .line 43
    return-object v0

    .line 44
    :cond_2
    return-object v1
.end method

.method private getPrevPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    move-result v0

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    :cond_1
    if-lez v0, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/model/PlayListItem;

    .line 33
    return-object v0

    .line 34
    :cond_2
    return-object v1
.end method

.method public static synthetic h(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$start$4(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$onPlayStatusChanged$6(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    return-void
.end method

.method private initMuteConfig()V
    .locals 0

    return-void
.end method

.method private isCurrentVideoId(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1
    return v1
.end method

.method public static synthetic j(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$pause$5(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public static synthetic k(Lcom/narvii/chat/screenroom/ScreenRoomService;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$onChannelStarted$12(II)V

    return-void
.end method

.method public static synthetic l(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$checkSRHostLoading$3()V

    return-void
.end method

.method private synthetic lambda$checkSRHostLoading$3()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    const-wide/16 v2, 0x7d0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    return-void
.end method

.method private synthetic lambda$notifyUserSeekedWhenReady$13(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/VideoPlayListener;->onUserSeeked(Z)V

    .line 6
    return-void
.end method

.method private synthetic lambda$onChannelStarted$12(II)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$9;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;II)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method private synthetic lambda$onPlayItemClear$10(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$onPlayStatusChanged$6(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->clone()Lcom/narvii/model/PlayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    .line 10
    return-void
.end method

.method private static synthetic lambda$onWsMessage$11(Lcom/narvii/model/PlayList;Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$pause$5(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$playItem$7(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$setBuffering$8(ZLcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/chat/screenroom/VideoPlayListener;->onBuffering(Z)V

    .line 4
    return-void
.end method

.method private synthetic lambda$setGlVideoView$0(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 0

    .line 1
    .line 2
    const/16 p1, 0x2bd

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    const/16 p1, 0x2be

    .line 8
    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 19
    :goto_0
    return p3
.end method

.method private synthetic lambda$setGlVideoView$1(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$setGlVideoView$2(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 1

    .line 1
    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "what:"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p3, "-extra:"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p3, "-"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getUri()Landroid/net/Uri;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string p2, "mediaPlayer"

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 51
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method private synthetic lambda$setPlayListItems$9(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$start$4(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayError()V

    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method private notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPrevPlayItem()Lcom/narvii/model/PlayListItem;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    move v2, v3

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/screenroom/VideoPlayListener;->onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V

    .line 24
    return-void
.end method

.method private notifyUserSeekedWhenReady()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/chat/screenroom/b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/b;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 22
    :cond_0
    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/screenroom/ScreenRoomService;Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$setGlVideoView$1(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    return-void
.end method

.method private onPlayError()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->context:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    const v2, 0x7f120725

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 54
    .line 55
    iput v1, v2, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyUserSeekedWhenReady()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 66
    .line 67
    new-instance v1, Lcom/narvii/chat/screenroom/k;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/k;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 74
    return-void
.end method

.method private onPlayStatusChanged()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(Lcom/narvii/util/Callback;)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/chat/screenroom/g;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/g;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 15
    return-void
.end method

.method private onScreenRoomHostLoading(Z)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "loading"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$4;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$4;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->lambda$onPlayItemClear$10(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/screenroom/ScreenRoomService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method private setBuffering(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->buffering:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/chat/screenroom/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/narvii/chat/screenroom/d;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 13
    return-void
.end method

.method private setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    iput v0, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, v0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 21
    :goto_0
    return-void
.end method

.method private setPlayStatusReady()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "screenRoomService"

    .line 7
    .line 8
    const-string v1, "glVideoView is null when setPlayStatusReady"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyUserSeekedWhenReady()V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3, v2}, Lcom/narvii/youtube/YoutubeService;->abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView()V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v3, Lcom/narvii/chat/screenroom/ScreenRoomService$5;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$5;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 119
    :cond_3
    :goto_0
    return-void
.end method

.method private startPlayVideo(Landroid/net/Uri;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 18
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMicListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method private updatePlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 4
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x78

    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 5
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 6
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p1, "threadId"

    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 8
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    const-string p2, "playlist"

    .line 9
    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->DONE:Lcom/narvii/util/Tag;

    iput-object p1, v0, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 10
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$7;

    invoke-direct {p1, p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService$7;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/util/Callback;)V

    iput-object p1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->ws:Lcom/narvii/util/ws/WsService;

    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method private updatePlayList(Lcom/narvii/util/Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "TAG"

    const-string v0, "can not fetch playlist in an empty channel"

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/chat/screenroom/ScreenRoomService;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentVideoId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayError()V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    return-void
.end method


# virtual methods
.method public addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public checkSRHostLoading(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/chat/screenroom/c;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/c;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    const-wide/16 v2, 0x7d0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V

    .line 46
    :goto_0
    return-void
.end method

.method public fetchPlayList(Lcom/narvii/util/Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "TAG"

    const-string v0, "can not fetch playlist in an empty channel"

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->fetchPlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    return-object v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 5
    return v0
.end method

.method public getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    return-object v0
.end method

.method public getHostVideoProgress()F
    .locals 1

    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    return v0
.end method

.method public getLocalMicMuted()Z
    .locals 2

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

    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    return v0
.end method

.method public getMicVolume()F
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 5
    return-object v0
.end method

.method public getPlayList()Lcom/narvii/model/PlayList;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    return-object v0
.end method

.method public getSrHostMicLevelIndicator()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

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
    iget v0, v0, Lcom/narvii/chat/audio/Mixer;->level:F

    .line 9
    :goto_0
    return v0
.end method

.method public hasNextPlayItem()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasPrevPlayItem()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPrevPlayItem()Lcom/narvii/model/PlayListItem;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isBuffering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->buffering:Z

    return v0
.end method

.method public isCurrentPlayAudioOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    return v0
.end method

.method public isCurrentPlayStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    return v0
.end method

.method public isCurrentUserSeeked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    return v0
.end method

.method public isHostInSRChannel()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public isSrHostMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    return v0
.end method

.method public leaveScreenRoom()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setVideoFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading(Z)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iput-object v3, v2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 28
    const/4 v3, -0x1

    .line 29
    .line 30
    iput v3, v2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/util/EventDispatcher;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 36
    .line 37
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/util/EventDispatcher;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 43
    .line 44
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->buffering:Z

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 52
    .line 53
    const/high16 v4, 0x3f800000    # 1.0f

    .line 54
    .line 55
    iput v4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 58
    .line 59
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 60
    .line 61
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 62
    .line 63
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 64
    .line 65
    iput v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curScreenRoomDefaultAction:I

    .line 66
    .line 67
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curChatThread:Lcom/narvii/model/ChatThread;

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isEchoHintShowed:Z

    .line 72
    .line 73
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->participantOption:I

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback(Z)V

    .line 82
    .line 83
    iput-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 84
    :cond_0
    return-void
.end method

.method public notifyVideoPlayChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/screenroom/k;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/k;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public onAudioFrameAvailable([BIIII)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    div-int/lit8 v1, p3, 0x2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->shortBuffer:[S

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    array-length v3, v2

    .line 15
    .line 16
    if-ge v3, v1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_4

    .line 20
    .line 21
    :cond_0
    :goto_0
    new-array v2, v1, [S

    .line 22
    .line 23
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->shortBuffer:[S

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2, p2, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2, p2, v1, p5}, Lcom/narvii/chat/audio/ChannelMixer;->write([SIII)I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    .line 49
    .line 50
    iget-object p3, p1, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 51
    .line 52
    iget p1, p1, Lcom/narvii/chat/audio/ChannelMixer;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    :try_start_1
    iget p5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resamplerRate:I

    .line 55
    .line 56
    if-eq p5, p4, :cond_2

    .line 57
    .line 58
    new-instance p5, Lcom/narvii/chat/audio/Resampler;

    .line 59
    .line 60
    .line 61
    const v1, 0xac44

    .line 62
    const/4 v2, 0x4

    .line 63
    const/4 v3, 0x1

    .line 64
    .line 65
    .line 66
    invoke-direct {p5, v3, p4, v1, v2}, Lcom/narvii/chat/audio/Resampler;-><init>(IIII)V

    .line 67
    .line 68
    iput-object p5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    .line 69
    .line 70
    iput p4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resamplerRate:I

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p4

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4, p3, p2, p1}, Lcom/narvii/chat/audio/Resampler;->put([SII)I

    .line 79
    move-result p4

    .line 80
    .line 81
    iget-object p5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p5}, Lcom/narvii/chat/audio/Resampler;->buffer()[S

    .line 85
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    move p1, p4

    .line 87
    goto :goto_3

    .line 88
    .line 89
    :goto_2
    :try_start_2
    const-string p5, "ScreenRoomService"

    .line 90
    .line 91
    const-string v1, "fail to resample audio frame"

    .line 92
    .line 93
    .line 94
    invoke-static {p5, v1, p4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    :goto_3
    iget-object p4, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4, p3, p2, p1}, Lcom/narvii/chat/audio/Mixer;->pushMixBuffer([SII)V

    .line 100
    :cond_3
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p1
.end method

.method public onChannelEnd()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "ScreenRoomService"

    .line 3
    .line 4
    const-string v1, "onChannelEnd"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/chat/audio/Mixer;->stop()V

    .line 19
    .line 20
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/chat/audio/Resampler;->close()V

    .line 31
    .line 32
    iput-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resampler:Lcom/narvii/chat/audio/Resampler;

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    .line 35
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->resamplerRate:I

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->leaveScreenRoom()V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->removeDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 50
    .line 51
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 52
    .line 53
    iput v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v1
.end method

.method public onChannelStarted(Z)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "ScreenRoomService"

    .line 3
    .line 4
    const-string v1, "onChannelStarted"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->initMuteConfig()V

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->audioLock:Ljava/lang/Object;

    .line 15
    monitor-enter p1

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/audio/Mixer;->stop()V

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    :goto_0
    new-instance v0, Lcom/narvii/chat/audio/Mixer;

    .line 28
    .line 29
    .line 30
    const v1, 0xac44

    .line 31
    const/4 v2, 0x7

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/chat/audio/Mixer;-><init>(III)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 38
    .line 39
    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    .line 40
    .line 41
    iput v1, v0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 44
    .line 45
    iput v1, v0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 46
    .line 47
    iput-object p0, v0, Lcom/narvii/chat/audio/Mixer;->listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/chat/audio/Mixer;->start()Z

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/narvii/chat/audio/ChannelMixer;->getMixer(I)Lcom/narvii/chat/audio/ChannelMixer;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->channelMixer:Lcom/narvii/chat/audio/ChannelMixer;

    .line 57
    monitor-exit p1

    .line 58
    goto :goto_2

    .line 59
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0

    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 63
    .line 64
    iget v0, p1, Lcom/narvii/chat/rtc/RtcService;->screenRoomHostUid:I

    .line 65
    .line 66
    new-instance v1, Lcom/narvii/chat/screenroom/i;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/screenroom/i;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/narvii/chat/rtc/RtcService;->setVideoFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addDataStreamListener(Lcom/narvii/chat/rtc/DataStreamListener;)V

    .line 78
    :goto_2
    return-void
.end method

.method public onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p1, Lcom/narvii/model/PlayListItem;->isDone:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onDataStreamReceived(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$12;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService$12;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "--"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentVideoId(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v1, "mediaPlayer"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v3, "fetch youtube url fail:"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    :catch_0
    new-instance p1, Lcom/narvii/chat/screenroom/a;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/a;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentVideoId(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->startPlayVideo(Landroid/net/Uri;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onLevelIndicator(F)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevels:[F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevelIdx:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevelIdx:I

    .line 9
    array-length v2, v0

    .line 10
    rem-int/2addr v1, v2

    .line 11
    .line 12
    aput p1, v0, v1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget v1, v1, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 21
    .line 22
    cmpl-float v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    array-length v1, v0

    .line 26
    move v4, v2

    .line 27
    move v5, v3

    .line 28
    .line 29
    :goto_0
    if-ge v4, v1, :cond_0

    .line 30
    .line 31
    aget v6, v0, v4

    .line 32
    add-float/2addr v5, v6

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->micLevels:[F

    .line 38
    array-length v0, v0

    .line 39
    int-to-float v0, v0

    .line 40
    div-float/2addr v5, v0

    .line 41
    .line 42
    .line 43
    const v0, 0x3e99999a    # 0.3f

    .line 44
    .line 45
    cmpl-float v0, v5, v0

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->hostMicMuteRunnable:Ljava/lang/Runnable;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->levelIndicator:Ljava/lang/Runnable;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->levelIndicator:Ljava/lang/Runnable;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getCurrentPosition()I

    .line 72
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    .line 75
    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    mul-float/2addr v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getDuration()I

    .line 82
    move-result v1

    .line 83
    int-to-float v1, v1

    .line 84
    div-float/2addr v0, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v0, v3

    .line 87
    .line 88
    :goto_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "{\"t\":1,\"mute\":"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 103
    .line 104
    cmpl-float v2, v2, v3

    .line 105
    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    const/16 v2, 0x31

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_3
    const/16 v2, 0x30

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, ",\"lv\":"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_2:Ljava/text/DecimalFormat;

    .line 126
    float-to-double v3, p1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, ",\"pr\":"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->NUM_FMT_3:Ljava/text/DecimalFormat;

    .line 145
    float-to-double v2, v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v0, ",\"ao\":"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const/16 v0, 0x7d

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->tmpsb:Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    sget-object v1, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lcom/narvii/chat/rtc/RtcService;->sendDataStream([B)Z

    .line 191
    return-void
.end method

.method public onMixedBuffer([SII)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->bytesBuffer:[B

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    array-length v1, v0

    .line 14
    .line 15
    mul-int/lit8 v2, p3, 0x2

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    :cond_0
    mul-int/lit8 v0, p3, 0x2

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->bytesBuffer:[B

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Lcom/narvii/video/framepusher/MediaFramePusher;->pushAudioFrame([B)V

    .line 50
    :cond_2
    return-void
.end method

.method public onPlayItemClear()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/chat/screenroom/l;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/l;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 39
    return-void
.end method

.method public onPlayItemDeleted(Lcom/narvii/model/PlayListItem;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 8
    .line 9
    if-ne p1, v1, :cond_2

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-ne v0, p1, :cond_1

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextLoopPlayItem()Lcom/narvii/model/PlayListItem;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$8;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$8;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 57
    :cond_2
    return-void
.end method

.method public onScreenRoomRoleChange(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->loadPlayListItem()Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayListItems(Ljava/util/List;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->fetchPlayList(Lcom/narvii/util/Callback;)V

    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public onUserSeeked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentUserSeeked:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyUserSeekedWhenReady()V

    .line 7
    return-void
.end method

.method public onVideoFrameAvailable(IILjavax/microedition/khronos/egl/EGLContext;II[F)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMeidaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 14
    move-result-object v1

    .line 15
    move-object v2, p3

    .line 16
    move v3, p1

    .line 17
    move v4, p2

    .line 18
    move v5, p4

    .line 19
    move v6, p5

    .line 20
    move-object v7, p6

    .line 21
    .line 22
    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/narvii/video/framepusher/MediaFramePusher;->pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V

    .line 24
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-le p3, p2, :cond_0

    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->setScreenRoomHostSwap(Z)V

    .line 23
    :cond_1
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->DONE:Lcom/narvii/util/Tag;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 13
    .line 14
    const/16 v0, 0x77

    .line 15
    .line 16
    if-ne p1, v0, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isHostInSRChannel()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_5

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 39
    const/4 v0, 0x5

    .line 40
    .line 41
    if-ne p1, v0, :cond_5

    .line 42
    .line 43
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 44
    .line 45
    const-string v0, "threadId"

    .line 46
    .line 47
    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    .line 71
    const-string p2, "playlist"

    .line 72
    .line 73
    .line 74
    filled-new-array {p2}, [Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    new-instance p1, Lcom/narvii/model/PlayList;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1}, Lcom/narvii/model/PlayList;-><init>()V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    const-class p2, Lcom/narvii/model/PlayList;

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, Lcom/narvii/model/PlayList;

    .line 100
    .line 101
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 102
    .line 103
    :try_start_0
    iget-object p2, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 104
    .line 105
    iget v0, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    check-cast p2, Lcom/narvii/model/PlayListItem;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    :catch_0
    iget-object p2, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 116
    .line 117
    if-nez p2, :cond_3

    .line 118
    .line 119
    new-instance p2, Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    iput-object p2, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 125
    .line 126
    :cond_3
    iget p2, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 127
    const/4 v0, 0x2

    .line 128
    .line 129
    if-ne p2, v0, :cond_4

    .line 130
    const/4 p2, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const/4 p2, 0x0

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-virtual {p0, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading(Z)V

    .line 136
    .line 137
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 138
    .line 139
    new-instance v0, Lcom/narvii/chat/screenroom/f;

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, p1}, Lcom/narvii/chat/screenroom/f;-><init>(Lcom/narvii/model/PlayList;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 146
    :cond_5
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/chat/screenroom/j;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/j;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 23
    :cond_0
    return-void
.end method

.method public playItem(Lcom/narvii/model/PlayListItem;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    return-void

    .line 9
    :cond_1
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 15
    .line 16
    iget v1, p1, Lcom/narvii/model/PlayListItem;->type:I

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    move v1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 27
    const/4 v2, 0x2

    .line 28
    .line 29
    iput v2, v1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Lcom/narvii/youtube/YoutubeService;->abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView()V

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->curYoutubeId:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v2, p0}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->startPlayVideo(Landroid/net/Uri;)V

    .line 111
    .line 112
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 113
    .line 114
    new-instance v0, Lcom/narvii/chat/screenroom/m;

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/m;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 121
    return-void
.end method

.method public playNext()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getNextPlayItem()Lcom/narvii/model/PlayListItem;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 8
    return-void
.end method

.method public playPrev()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPrevPlayItem()Lcom/narvii/model/PlayListItem;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 8
    return-void
.end method

.method public removePlayListChangeListener(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListChangedDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostAudioOnlyListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostLoadingListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srActionChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeVideoPlayListner(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getCurrentPosition()I

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/chat/screenroom/n;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/n;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/chat/screenroom/o;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/o;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/chat/screenroom/p;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/p;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$2;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$2;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$3;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoFrameAvailableListener(Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getMediaVolume()F

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVolume(F)V

    .line 59
    return-void
.end method

.method public setHostMicMuted(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    const/high16 p1, 0x41000000    # 8.0f

    .line 7
    .line 8
    :goto_0
    iput p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->muteHintInfoShown:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput p1, v0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 18
    :cond_1
    return-void
.end method

.method public setMediaVolume(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMediaVolume:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, v0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVolume(F)V

    .line 16
    :cond_1
    return-void
.end method

.method public setMicVolume(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixerMicVolume:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->mixer:Lcom/narvii/chat/audio/Mixer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, v0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 9
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->savePlaylist(Ljava/util/List;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    iput-object v2, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 33
    move-result v0

    .line 34
    .line 35
    iput v0, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->everPlayed:Z

    .line 38
    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/model/PlayListItem;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    if-ne v0, p1, :cond_1

    .line 71
    move v0, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v0, v1

    .line 74
    .line 75
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 76
    .line 77
    iget v3, v3, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 78
    .line 79
    if-ne v3, v2, :cond_2

    .line 80
    move v1, v2

    .line 81
    :cond_2
    and-int/2addr v0, v1

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setCurrentPlayListItem(Lcom/narvii/model/PlayListItem;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V

    .line 91
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(Lcom/narvii/util/Callback;)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 97
    .line 98
    new-instance v0, Lcom/narvii/chat/screenroom/e;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/e;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 105
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->playList:Lcom/narvii/model/PlayList;

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayStatusChanged()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->videoPlayEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/chat/screenroom/h;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/h;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 26
    :cond_0
    return-void
.end method

.method public startPlay()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->currentPlayListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 6
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback()V

    .line 8
    :cond_0
    return-void
.end method

.method public toggleHostMic()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setHostMicMuted(Z)V

    .line 10
    return-void
.end method
