.class public interface abstract Lcom/google/android/exoplayer2/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/c$a;,
        Lcom/google/android/exoplayer2/analytics/c$b;
    }
.end annotation


# static fields
.field public static final EVENT_AUDIO_ATTRIBUTES_CHANGED:I = 0x14

.field public static final EVENT_AUDIO_CODEC_ERROR:I = 0x405

.field public static final EVENT_AUDIO_DECODER_INITIALIZED:I = 0x3f0

.field public static final EVENT_AUDIO_DECODER_RELEASED:I = 0x3f4

.field public static final EVENT_AUDIO_DISABLED:I = 0x3f5

.field public static final EVENT_AUDIO_ENABLED:I = 0x3ef

.field public static final EVENT_AUDIO_INPUT_FORMAT_CHANGED:I = 0x3f1

.field public static final EVENT_AUDIO_POSITION_ADVANCING:I = 0x3f2

.field public static final EVENT_AUDIO_SESSION_ID:I = 0x15

.field public static final EVENT_AUDIO_SINK_ERROR:I = 0x3f6

.field public static final EVENT_AUDIO_UNDERRUN:I = 0x3f3

.field public static final EVENT_AVAILABLE_COMMANDS_CHANGED:I = 0xd

.field public static final EVENT_BANDWIDTH_ESTIMATE:I = 0x3ee

.field public static final EVENT_CUES:I = 0x1b

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x1d

.field public static final EVENT_DEVICE_VOLUME_CHANGED:I = 0x1e

.field public static final EVENT_DOWNSTREAM_FORMAT_CHANGED:I = 0x3ec

.field public static final EVENT_DRM_KEYS_LOADED:I = 0x3ff

.field public static final EVENT_DRM_KEYS_REMOVED:I = 0x402

.field public static final EVENT_DRM_KEYS_RESTORED:I = 0x401

.field public static final EVENT_DRM_SESSION_ACQUIRED:I = 0x3fe

.field public static final EVENT_DRM_SESSION_MANAGER_ERROR:I = 0x400

.field public static final EVENT_DRM_SESSION_RELEASED:I = 0x403

.field public static final EVENT_DROPPED_VIDEO_FRAMES:I = 0x3fa

.field public static final EVENT_IS_LOADING_CHANGED:I = 0x3

.field public static final EVENT_IS_PLAYING_CHANGED:I = 0x7

.field public static final EVENT_LOAD_CANCELED:I = 0x3ea

.field public static final EVENT_LOAD_COMPLETED:I = 0x3e9

.field public static final EVENT_LOAD_ERROR:I = 0x3eb

.field public static final EVENT_LOAD_STARTED:I = 0x3e8

.field public static final EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED:I = 0x12

.field public static final EVENT_MEDIA_ITEM_TRANSITION:I = 0x1

.field public static final EVENT_MEDIA_METADATA_CHANGED:I = 0xe

.field public static final EVENT_METADATA:I = 0x1c

.field public static final EVENT_PLAYBACK_PARAMETERS_CHANGED:I = 0xc

.field public static final EVENT_PLAYBACK_STATE_CHANGED:I = 0x4

.field public static final EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED:I = 0x6

.field public static final EVENT_PLAYER_ERROR:I = 0xa

.field public static final EVENT_PLAYER_RELEASED:I = 0x404

.field public static final EVENT_PLAYLIST_METADATA_CHANGED:I = 0xf

.field public static final EVENT_PLAY_WHEN_READY_CHANGED:I = 0x5

.field public static final EVENT_POSITION_DISCONTINUITY:I = 0xb

.field public static final EVENT_RENDERED_FIRST_FRAME:I = 0x1a

.field public static final EVENT_REPEAT_MODE_CHANGED:I = 0x8

.field public static final EVENT_SEEK_BACK_INCREMENT_CHANGED:I = 0x10

.field public static final EVENT_SEEK_FORWARD_INCREMENT_CHANGED:I = 0x11

.field public static final EVENT_SHUFFLE_MODE_ENABLED_CHANGED:I = 0x9

.field public static final EVENT_SKIP_SILENCE_ENABLED_CHANGED:I = 0x17

.field public static final EVENT_SURFACE_SIZE_CHANGED:I = 0x18

.field public static final EVENT_TIMELINE_CHANGED:I = 0x0

.field public static final EVENT_TRACKS_CHANGED:I = 0x2

.field public static final EVENT_TRACK_SELECTION_PARAMETERS_CHANGED:I = 0x13

.field public static final EVENT_UPSTREAM_DISCARDED:I = 0x3ed

.field public static final EVENT_VIDEO_CODEC_ERROR:I = 0x406

.field public static final EVENT_VIDEO_DECODER_INITIALIZED:I = 0x3f8

.field public static final EVENT_VIDEO_DECODER_RELEASED:I = 0x3fb

.field public static final EVENT_VIDEO_DISABLED:I = 0x3fc

.field public static final EVENT_VIDEO_ENABLED:I = 0x3f7

.field public static final EVENT_VIDEO_FRAME_PROCESSING_OFFSET:I = 0x3fd

.field public static final EVENT_VIDEO_INPUT_FORMAT_CHANGED:I = 0x3f9

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x19

.field public static final EVENT_VOLUME_CHANGED:I = 0x16


# virtual methods
.method public abstract A(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V
.end method

.method public abstract B(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V
.end method

.method public abstract C(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
.end method

.method public abstract D(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
.end method

.method public abstract E(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
.end method

.method public abstract F(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;)V
.end method

.method public abstract G(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V
.end method

.method public abstract H(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;)V
.end method

.method public abstract I(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;J)V
.end method

.method public abstract J(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract K(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;)V
.end method

.method public abstract L(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
.end method

.method public abstract M(Lcom/google/android/exoplayer2/analytics/c$a;I)V
.end method

.method public abstract N(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
.end method

.method public abstract O(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract P(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;)V
.end method

.method public abstract Q(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V
    .param p2    # Lcom/google/android/exoplayer2/z2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract R(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract S(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;)V
.end method

.method public abstract T(Lcom/google/android/exoplayer2/analytics/c$a;II)V
.end method

.method public abstract U(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V
.end method

.method public abstract V(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .param p3    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract W(Lcom/google/android/exoplayer2/analytics/c$a;I)V
.end method

.method public abstract X(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract Y(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;)V
.end method

.method public abstract Z(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Lcom/google/android/exoplayer2/analytics/c$a;JI)V
.end method

.method public abstract a0(Lcom/google/android/exoplayer2/analytics/c$a;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/analytics/c$a;)V
.end method

.method public abstract b0(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V
.end method

.method public abstract c(Lcom/google/android/exoplayer2/analytics/c$a;I)V
.end method

.method public abstract c0(Lcom/google/android/exoplayer2/analytics/c$a;IZ)V
.end method

.method public abstract d(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract d0(Lcom/google/android/exoplayer2/analytics/c$a;IIIF)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract e(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
.end method

.method public abstract e0(Lcom/google/android/exoplayer2/analytics/c$a;ILjava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract f(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract f0(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract g(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
.end method

.method public abstract g0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;)V
.end method

.method public abstract h(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract h0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;)V
.end method

.method public abstract i(Lcom/google/android/exoplayer2/analytics/c$a;I)V
.end method

.method public abstract i0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract j(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract j0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/analytics/c$a;J)V
.end method

.method public abstract k0(Lcom/google/android/exoplayer2/analytics/c$a;I)V
.end method

.method public abstract l(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
.end method

.method public abstract l0(Lcom/google/android/exoplayer2/analytics/c$a;)V
.end method

.method public abstract m(Lcom/google/android/exoplayer2/analytics/c$a;IJ)V
.end method

.method public abstract m0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;)V
.end method

.method public abstract n(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
.end method

.method public abstract o(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
.end method

.method public abstract p(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/c$a;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract p0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract q(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V
.end method

.method public abstract q0(Lcom/google/android/exoplayer2/analytics/c$a;)V
.end method

.method public abstract r(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
.end method

.method public abstract r0(Lcom/google/android/exoplayer2/analytics/c$a;F)V
.end method

.method public abstract s(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;I)V
    .param p2    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract s0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
.end method

.method public abstract t(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;)V
.end method

.method public abstract t0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
.end method

.method public abstract u(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract v(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/a2;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract v0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract w(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract w0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .param p3    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract x(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
.end method

.method public abstract x0(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
.end method

.method public abstract y(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V
.end method

.method public abstract z(Lcom/google/android/exoplayer2/analytics/c$a;)V
.end method
