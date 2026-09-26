.class public final Landroidx/media3/common/SimpleBasePlayer$State$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private adPositionMs:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private availableCommands:Landroidx/media3/common/Player$Commands;

.field private contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private contentPositionMs:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private currentAdGroupIndex:I

.field private currentAdIndexInAdGroup:I

.field private currentCues:Landroidx/media3/common/text/CueGroup;

.field private currentMediaItemIndex:I

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field private deviceVolume:I

.field private discontinuityPositionMs:J

.field private hasPositionDiscontinuity:Z

.field private isDeviceMuted:Z

.field private isLoading:Z

.field private maxSeekToPreviousPositionMs:J

.field private newlyRenderedFirstFrame:Z

.field private playWhenReady:Z

.field private playWhenReadyChangeReason:I

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private playbackState:I

.field private playbackSuppressionReason:I

.field private playerError:Landroidx/media3/common/PlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playlist:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private positionDiscontinuityReason:I

.field private repeatMode:I

.field private seekBackIncrementMs:J

.field private seekForwardIncrementMs:J

.field private shuffleModeEnabled:Z

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private timedMetadata:Landroidx/media3/common/Metadata;

.field private timeline:Landroidx/media3/common/Timeline;

.field private totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    iput v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 4
    sget-object v2, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 5
    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 6
    sget-object v2, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 7
    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 8
    sget-object v2, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 9
    sget-object v2, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 10
    sget-object v2, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 11
    new-instance v2, Landroidx/media3/common/Metadata;

    new-array v3, v0, [Landroidx/media3/common/Metadata$Entry;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v4, v5, v3}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 12
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/a0;

    .line 13
    sget-object v2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 14
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 15
    invoke-static {v4, v5}, Landroidx/media3/common/b2;->a(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 16
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 17
    invoke-static {v4, v5}, Landroidx/media3/common/b2;->a(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 20
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 21
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 22
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 23
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 24
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 25
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 26
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 27
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 28
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 29
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 30
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 31
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 32
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 33
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 34
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 35
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 36
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 37
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 38
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 39
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 40
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 41
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 42
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 43
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/a0;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/a0;

    .line 44
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 45
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 46
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 47
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 48
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 49
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 50
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 51
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 52
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 53
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 54
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 55
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 56
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Metadata;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 3
    return-object p0
.end method

.method static synthetic B(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/a0;

    .line 3
    return-object p0
.end method

.method static synthetic C(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 3
    return-object p0
.end method

.method static synthetic D(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3
    return-object p0
.end method

.method static synthetic E(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3
    return-object p0
.end method

.method static synthetic F(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3
    return-object p0
.end method

.method static synthetic G(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 3
    return p0
.end method

.method static synthetic H(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 3
    return p0
.end method

.method static synthetic I(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 3
    return p0
.end method

.method static synthetic J(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic K(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 3
    return p0
.end method

.method static synthetic L(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 3
    return-object p0
.end method

.method static synthetic M(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3
    return-object p0
.end method

.method static synthetic N(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 3
    return-object p0
.end method

.method static synthetic a(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 3
    return p0
.end method

.method static synthetic d(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 3
    return p0
.end method

.method static synthetic e(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 3
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Player$Commands;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 3
    return p0
.end method

.method static synthetic j(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 3
    return p0
.end method

.method static synthetic k(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 3
    return p0
.end method

.method static synthetic l(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 3
    return p0
.end method

.method static synthetic m(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic n(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic o(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic p(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 3
    return-object p0
.end method

.method static synthetic q(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 3
    return-object p0
.end method

.method static synthetic r(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 3
    return p0
.end method

.method static synthetic s(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/VideoSize;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 3
    return-object p0
.end method

.method static synthetic t(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 3
    return-object p0
.end method

.method static synthetic u(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 3
    return p0
.end method

.method static synthetic w(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 3
    return p0
.end method

.method static synthetic x(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 3
    return p0
.end method

.method static synthetic y(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/util/Size;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 3
    return-object p0
.end method

.method static synthetic z(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 3
    return p0
.end method


# virtual methods
.method public O()Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$State;-><init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V

    .line 7
    return-object v0
.end method

.method public P()Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    return-object p0
.end method

.method public Q(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public R(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public S(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public T(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    move v3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, v0

    .line 9
    .line 10
    :goto_0
    if-ne p2, v2, :cond_1

    .line 11
    move v2, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v2, v0

    .line 14
    .line 15
    :goto_1
    if-ne v3, v2, :cond_2

    .line 16
    move v0, v1

    .line 17
    .line 18
    .line 19
    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 20
    .line 21
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 22
    .line 23
    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 24
    return-object p0
.end method

.method public U(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    return-object p0
.end method

.method public V(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    return-object p0
.end method

.method public W(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    return-object p0
.end method

.method public X(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    return-object p0
.end method

.method public Y(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public Z(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    return-object p0
.end method

.method public a0(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method public b0(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;)",
            "Landroidx/media3/common/SimpleBasePlayer$State$Builder;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    const-string v3, "Duplicate MediaItemData UID in playlist"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/a0;

    .line 39
    .line 40
    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/a0;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Lcom/google/common/collect/a0;)V

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 48
    return-object p0
.end method

.method public c0(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    return-object p0
.end method

.method public d0(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    return-object p0
.end method

.method public e0(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object p0
.end method

.method public f0(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public g0(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method
