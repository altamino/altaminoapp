.class public interface abstract Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;,
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventFlags;,
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;
    }
.end annotation


# static fields
.field public static final EVENT_AUDIO_ATTRIBUTES_CHANGED:I = 0x14
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_CODEC_ERROR:I = 0x405
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_DECODER_INITIALIZED:I = 0x3f0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_DECODER_RELEASED:I = 0x3f4
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_DISABLED:I = 0x3f5
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_ENABLED:I = 0x3ef
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_INPUT_FORMAT_CHANGED:I = 0x3f1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_POSITION_ADVANCING:I = 0x3f2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_SESSION_ID:I = 0x15
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_SINK_ERROR:I = 0x3f6
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AUDIO_UNDERRUN:I = 0x3f3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_AVAILABLE_COMMANDS_CHANGED:I = 0xd
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_BANDWIDTH_ESTIMATE:I = 0x3ee
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_CUES:I = 0x1b
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x1d
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DEVICE_VOLUME_CHANGED:I = 0x1e
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DOWNSTREAM_FORMAT_CHANGED:I = 0x3ec
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DRM_KEYS_LOADED:I = 0x3ff
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DRM_KEYS_REMOVED:I = 0x402
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DRM_KEYS_RESTORED:I = 0x401
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DRM_SESSION_ACQUIRED:I = 0x3fe
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DRM_SESSION_MANAGER_ERROR:I = 0x400
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DRM_SESSION_RELEASED:I = 0x403
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_DROPPED_VIDEO_FRAMES:I = 0x3fa
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_IS_LOADING_CHANGED:I = 0x3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_IS_PLAYING_CHANGED:I = 0x7
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_LOAD_CANCELED:I = 0x3ea
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_LOAD_COMPLETED:I = 0x3e9
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_LOAD_ERROR:I = 0x3eb
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_LOAD_STARTED:I = 0x3e8
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED:I = 0x12
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_MEDIA_ITEM_TRANSITION:I = 0x1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_MEDIA_METADATA_CHANGED:I = 0xe
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_METADATA:I = 0x1c
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAYBACK_PARAMETERS_CHANGED:I = 0xc
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAYBACK_STATE_CHANGED:I = 0x4
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED:I = 0x6
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAYER_ERROR:I = 0xa
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAYER_RELEASED:I = 0x404
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAYLIST_METADATA_CHANGED:I = 0xf
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_PLAY_WHEN_READY_CHANGED:I = 0x5
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_POSITION_DISCONTINUITY:I = 0xb
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_RENDERED_FIRST_FRAME:I = 0x1a
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_REPEAT_MODE_CHANGED:I = 0x8
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_SEEK_BACK_INCREMENT_CHANGED:I = 0x10
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_SEEK_FORWARD_INCREMENT_CHANGED:I = 0x11
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_SHUFFLE_MODE_ENABLED_CHANGED:I = 0x9
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_SKIP_SILENCE_ENABLED_CHANGED:I = 0x17
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_SURFACE_SIZE_CHANGED:I = 0x18
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_TIMELINE_CHANGED:I = 0x0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_TRACKS_CHANGED:I = 0x2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_TRACK_SELECTION_PARAMETERS_CHANGED:I = 0x13
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_UPSTREAM_DISCARDED:I = 0x3ed
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_CODEC_ERROR:I = 0x406
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_DECODER_INITIALIZED:I = 0x3f8
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_DECODER_RELEASED:I = 0x3fb
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_DISABLED:I = 0x3fc
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_ENABLED:I = 0x3f7
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_FRAME_PROCESSING_OFFSET:I = 0x3fd
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_INPUT_FORMAT_CHANGED:I = 0x3f9
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x19
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final EVENT_VOLUME_CHANGED:I = 0x16
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field


# virtual methods
.method public abstract A(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract B(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract C(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract E(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract F(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract G(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract H(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract I(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract J(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract K(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract L(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract M(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract O(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract P(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract Q(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract R(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract S(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract T(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract U(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract V(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract W(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract X(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract Y(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract Z(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract a0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract b(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract b0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract c(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract d0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract e0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract f(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract f0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract g(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract g0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract h(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract h0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract i(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract i0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract j(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract j0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract k(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract k0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract l(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract l0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract m(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .param p2    # Landroidx/media3/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract m0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract n(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract n0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract o(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract o0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract p(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract p0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .param p2    # Landroidx/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract q(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract q0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract r(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract r0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract s(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract s0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract t(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract t0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract u(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .param p3    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract u0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract v(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract v0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract w(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract x(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract x0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract y(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract z(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract z0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .param p3    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method
