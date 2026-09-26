.class public final Lcom/google/android/exoplayer2/audio/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/c0$c;,
        Lcom/google/android/exoplayer2/audio/c0$b;,
        Lcom/google/android/exoplayer2/audio/c0$d;,
        Lcom/google/android/exoplayer2/audio/c0$l;,
        Lcom/google/android/exoplayer2/audio/c0$h;,
        Lcom/google/android/exoplayer2/audio/c0$m;,
        Lcom/google/android/exoplayer2/audio/c0$k;,
        Lcom/google/android/exoplayer2/audio/c0$n;,
        Lcom/google/android/exoplayer2/audio/c0$g;,
        Lcom/google/android/exoplayer2/audio/c0$f;,
        Lcom/google/android/exoplayer2/audio/c0$i;,
        Lcom/google/android/exoplayer2/audio/c0$e;,
        Lcom/google/android/exoplayer2/audio/c0$j;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_RETRY_DURATION_MS:I = 0x64

.field private static final AUDIO_TRACK_SMALLER_BUFFER_RETRY_SIZE:I = 0xf4240

.field public static final DEFAULT_PLAYBACK_SPEED:F = 1.0f

.field private static final DEFAULT_SKIP_SILENCE:Z = false

.field private static final ERROR_NATIVE_DEAD_OBJECT:I = -0x20

.field public static final MAX_PITCH:F = 8.0f

.field public static final MAX_PLAYBACK_SPEED:F = 8.0f

.field public static final MIN_PITCH:F = 0.1f

.field public static final MIN_PLAYBACK_SPEED:F = 0.1f

.field public static final OFFLOAD_MODE_DISABLED:I = 0x0

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED:I = 0x3

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED:I = 0x2

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED:I = 0x1

.field public static final OUTPUT_MODE_OFFLOAD:I = 0x1

.field public static final OUTPUT_MODE_PASSTHROUGH:I = 0x2

.field public static final OUTPUT_MODE_PCM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultAudioSink"

.field public static failOnSpuriousAudioTimestamp:Z

.field private static pendingReleaseCount:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static releaseExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final releaseExecutorLock:Ljava/lang/Object;


# instance fields
.field private activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

.field private afterDrainParameters:Lcom/google/android/exoplayer2/audio/c0$k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/e;

.field private final audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

.field private final audioOffloadListener:Lcom/google/android/exoplayer2/s$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

.field private audioSessionId:I

.field private audioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/c0$f;

.field private audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/c3;

.field private final audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

.field private auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

.field private avSyncHeader:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesUntilNextAvSync:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/a0;

.field private configuration:Lcom/google/android/exoplayer2/audio/c0$h;

.field private drainingAudioProcessorIndex:I

.field private final enableAudioTrackPlaybackParams:Z

.field private final enableFloatOutput:Z

.field private externalAudioSessionIdProvided:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private final initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/c0$l<",
            "Lcom/google/android/exoplayer2/audio/v$b;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputBufferAccessUnitCount:I

.field private isWaitingForOffloadEndOfStreamHandled:Z

.field private lastFeedElapsedRealtimeMs:J

.field private listener:Lcom/google/android/exoplayer2/audio/v$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

.field private final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/c0$k;",
            ">;"
        }
    .end annotation
.end field

.field private offloadDisabledUntilNextConfiguration:Z

.field private final offloadMode:I

.field private offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/c0$n;

.field private outputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playerId:Lcom/google/android/exoplayer2/analytics/t1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private preferredDevice:Lcom/google/android/exoplayer2/audio/c0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final releasingConditionVariable:Lcom/google/android/exoplayer2/util/g;

.field private startMediaTimeUs:J

.field private startMediaTimeUsNeedsInit:Z

.field private startMediaTimeUsNeedsSync:Z

.field private stoppedAudioTrack:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

.field private final toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

.field private final trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/n0;

.field private tunneling:Z

.field private volume:F

.field private final writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/c0$l<",
            "Lcom/google/android/exoplayer2/audio/v$e;",
            ">;"
        }
    .end annotation
.end field

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutorLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/audio/c0$g;)V
    .locals 13

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0$g;->a(Lcom/google/android/exoplayer2/audio/c0$g;)Lcom/google/android/exoplayer2/audio/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0$g;->b(Lcom/google/android/exoplayer2/audio/c0$g;)Lcom/google/android/exoplayer2/audio/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 21
    sget v1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0$g;->c(Lcom/google/android/exoplayer2/audio/c0$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->enableFloatOutput:Z

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0$g;->d(Lcom/google/android/exoplayer2/audio/c0$g;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->enableAudioTrackPlaybackParams:Z

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0$g;->e(Lcom/google/android/exoplayer2/audio/c0$g;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadMode:I

    .line 24
    iget-object v1, p1, Lcom/google/android/exoplayer2/audio/c0$g;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/c0$f;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/c0$f;

    .line 25
    new-instance v1, Lcom/google/android/exoplayer2/util/g;

    sget-object v2, Lcom/google/android/exoplayer2/util/d;->DEFAULT:Lcom/google/android/exoplayer2/util/d;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/g;-><init>(Lcom/google/android/exoplayer2/util/d;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->releasingConditionVariable:Lcom/google/android/exoplayer2/util/g;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 27
    new-instance v1, Lcom/google/android/exoplayer2/audio/x;

    new-instance v2, Lcom/google/android/exoplayer2/audio/c0$m;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/google/android/exoplayer2/audio/c0$m;-><init>(Lcom/google/android/exoplayer2/audio/c0;Lcom/google/android/exoplayer2/audio/c0$a;)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/audio/x;-><init>(Lcom/google/android/exoplayer2/audio/x$a;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 28
    new-instance v1, Lcom/google/android/exoplayer2/audio/a0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/a0;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/a0;

    .line 29
    new-instance v2, Lcom/google/android/exoplayer2/audio/n0;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/n0;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/n0;

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/exoplayer2/audio/z;

    .line 31
    new-instance v7, Lcom/google/android/exoplayer2/audio/j0;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/audio/j0;-><init>()V

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    const/4 v1, 0x2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/h;->getAudioProcessors()[Lcom/google/android/exoplayer2/audio/g;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array v0, v4, [Lcom/google/android/exoplayer2/audio/g;

    .line 33
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/audio/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    new-array v0, v3, [Lcom/google/android/exoplayer2/audio/g;

    .line 34
    new-instance v1, Lcom/google/android/exoplayer2/audio/f0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/f0;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/c0;->volume:F

    .line 35
    sget-object v0, Lcom/google/android/exoplayer2/audio/e;->DEFAULT:Lcom/google/android/exoplayer2/audio/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    iput v4, p0, Lcom/google/android/exoplayer2/audio/c0;->audioSessionId:I

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/audio/y;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/exoplayer2/audio/y;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$k;

    sget-object v1, Lcom/google/android/exoplayer2/c3;->DEFAULT:Lcom/google/android/exoplayer2/c3;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/audio/c0$k;-><init>(Lcom/google/android/exoplayer2/c3;ZJJLcom/google/android/exoplayer2/audio/c0$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/c3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    new-array v0, v4, [Lcom/google/android/exoplayer2/audio/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    new-array v0, v4, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$l;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/c0$l;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$l;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/c0$l;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 41
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$g;->audioOffloadListener:Lcom/google/android/exoplayer2/s$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioOffloadListener:Lcom/google/android/exoplayer2/s$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/c0$g;Lcom/google/android/exoplayer2/audio/c0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/c0;-><init>(Lcom/google/android/exoplayer2/audio/c0$g;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/c0$e;ZZI)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/audio/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/c0$g;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/audio/f;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/f;

    .line 12
    invoke-static {p1, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/f;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$g;->g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/c0$g;->h(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/audio/c0$g;->k(Z)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/audio/c0$g;->j(Z)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/audio/c0$g;->l(I)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/c0;-><init>(Lcom/google/android/exoplayer2/audio/c0$g;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/g;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/audio/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/c0$g;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/audio/f;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/f;

    .line 3
    invoke-static {p1, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/f;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$g;->g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/c0$g;->i([Lcom/google/android/exoplayer2/audio/g;)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/c0;-><init>(Lcom/google/android/exoplayer2/audio/c0$g;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/g;Z)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/audio/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/c0$g;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/audio/f;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/f;

    .line 7
    invoke-static {p1, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/f;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$g;->g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/c0$g;->i([Lcom/google/android/exoplayer2/audio/g;)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/audio/c0$g;->k(Z)Lcom/google/android/exoplayer2/audio/c0$g;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/c0;-><init>(Lcom/google/android/exoplayer2/audio/c0$g;)V

    return-void
.end method

.method private A()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    iput v2, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 10
    :goto_0
    move v0, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    move v0, v2

    .line 13
    .line 14
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 15
    .line 16
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/c0;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 17
    array-length v6, v5

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    if-ge v4, v6, :cond_3

    .line 25
    .line 26
    aget-object v4, v5, v4

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/g;->queueEndOfStream()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/audio/c0;->S(J)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/g;->isEnded()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    return v2

    .line 42
    .line 43
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 44
    add-int/2addr v0, v1

    .line 45
    .line 46
    iput v0, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/exoplayer2/audio/c0;->f0(Ljava/nio/ByteBuffer;J)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    return v2

    .line 60
    .line 61
    :cond_4
    iput v3, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 62
    return v1
.end method

.method private B()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 4
    array-length v2, v1

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/g;->flush()V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/g;->getOutput()Ljava/nio/ByteBuffer;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    aput-object v1, v2, v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private static C(III)Landroid/media/AudioFormat;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private D()Lcom/google/android/exoplayer2/c3;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->G()Lcom/google/android/exoplayer2/audio/c0$k;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 7
    return-object v0
.end method

.method private static E(III)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x2

    .line 6
    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 14
    return p0
.end method

.method private static F(ILjava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v1, "Unexpected audio encoding: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    .line 31
    .line 32
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c;->c(Ljava/nio/ByteBuffer;)I

    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :pswitch_2
    return v1

    .line 36
    .line 37
    :pswitch_3
    const/16 p0, 0x200

    .line 38
    return p0

    .line 39
    .line 40
    .line 41
    :pswitch_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/b;->a(Ljava/nio/ByteBuffer;)I

    .line 42
    move-result p0

    .line 43
    .line 44
    if-ne p0, v0, :cond_0

    .line 45
    const/4 p0, 0x0

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/audio/b;->h(Ljava/nio/ByteBuffer;I)I

    .line 50
    move-result p0

    .line 51
    .line 52
    mul-int/lit8 p0, p0, 0x10

    .line 53
    :goto_0
    return p0

    .line 54
    .line 55
    :pswitch_5
    const/16 p0, 0x800

    .line 56
    return p0

    .line 57
    :pswitch_6
    return v1

    .line 58
    .line 59
    .line 60
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 61
    move-result p0

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/o0;->F(Ljava/nio/ByteBuffer;I)I

    .line 65
    move-result p0

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h0;->m(I)I

    .line 69
    move-result p0

    .line 70
    .line 71
    if-eq p0, v0, :cond_1

    .line 72
    return p0

    .line 73
    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 78
    throw p0

    .line 79
    .line 80
    .line 81
    :pswitch_8
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/e0;->e(Ljava/nio/ByteBuffer;)I

    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    .line 85
    .line 86
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/b;->d(Ljava/nio/ByteBuffer;)I

    .line 87
    move-result p0

    .line 88
    return p0

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method private G()Lcom/google/android/exoplayer2/audio/c0$k;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 25
    :goto_0
    return-object v0
.end method

.method private H(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/o;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/p;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    .line 21
    :cond_1
    const/16 p1, 0x1e

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/exoplayer2/util/o0;->MODEL:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "Pixel"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    const/4 p1, 0x2

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method private J()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/c0;->submittedPcmBytes:J

    .line 9
    .line 10
    iget v0, v0, Lcom/google/android/exoplayer2/audio/c0$h;->inputPcmFrameSize:I

    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/c0;->submittedEncodedFrames:J

    .line 16
    :goto_0
    return-wide v1
.end method

.method private K()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenPcmBytes:J

    .line 9
    .line 10
    iget v0, v0, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenEncodedFrames:J

    .line 16
    :goto_0
    return-wide v1
.end method

.method private L()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$b;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->releasingConditionVariable:Lcom/google/android/exoplayer2/util/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->d()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->z()Landroid/media/AudioTrack;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->O(Landroid/media/AudioTrack;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/c0;->T(Landroid/media/AudioTrack;)V

    .line 28
    .line 29
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadMode:I

    .line 30
    const/4 v2, 0x3

    .line 31
    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 39
    .line 40
    iget v3, v2, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 41
    .line 42
    iget v2, v2, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3, v2}, Landroidx/media3/exoplayer/audio/r;->a(Landroid/media/AudioTrack;II)V

    .line 46
    .line 47
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 48
    .line 49
    const/16 v2, 0x1f

    .line 50
    .line 51
    if-lt v0, v2, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/audio/c0$c;->a(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 61
    .line 62
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 66
    move-result v2

    .line 67
    .line 68
    iput v2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioSessionId:I

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 75
    .line 76
    iget v5, v2, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 77
    const/4 v6, 0x2

    .line 78
    const/4 v9, 0x1

    .line 79
    .line 80
    if-ne v5, v6, :cond_3

    .line 81
    move v5, v9

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    move v5, v1

    .line 84
    .line 85
    :goto_0
    iget v6, v2, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 86
    .line 87
    iget v7, v2, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 88
    .line 89
    iget v8, v2, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/x;->s(Landroid/media/AudioTrack;ZIII)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->Y()V

    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

    .line 98
    .line 99
    iget v1, v1, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

    .line 111
    .line 112
    iget v2, v2, Lcom/google/android/exoplayer2/audio/y;->sendLevel:F

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 116
    .line 117
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->preferredDevice:Lcom/google/android/exoplayer2/audio/c0$d;

    .line 118
    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    const/16 v2, 0x17

    .line 122
    .line 123
    if-lt v0, v2, :cond_5

    .line 124
    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/c0$b;->a(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/audio/c0$d;)V

    .line 129
    .line 130
    :cond_5
    iput-boolean v9, p0, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsInit:Z

    .line 131
    return v9
.end method

.method private static M(I)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    const/4 v0, -0x6

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/16 v0, -0x20

    .line 12
    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method private N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static O(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/s;->a(Landroid/media/AudioTrack;)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static synthetic P(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/g;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 11
    .line 12
    sget-object p0, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutorLock:Ljava/lang/Object;

    .line 13
    monitor-enter p0

    .line 14
    .line 15
    :try_start_1
    sget p1, Lcom/google/android/exoplayer2/audio/c0;->pendingReleaseCount:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    sput p1, Lcom/google/android/exoplayer2/audio/c0;->pendingReleaseCount:I

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 27
    .line 28
    sput-object v0, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 40
    .line 41
    sget-object p1, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutorLock:Ljava/lang/Object;

    .line 42
    monitor-enter p1

    .line 43
    .line 44
    :try_start_2
    sget v1, Lcom/google/android/exoplayer2/audio/c0;->pendingReleaseCount:I

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    sput v1, Lcom/google/android/exoplayer2/audio/c0;->pendingReleaseCount:I

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    sget-object v1, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 56
    .line 57
    sput-object v0, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 58
    goto :goto_2

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 62
    throw p0

    .line 63
    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    throw p0
.end method

.method private Q()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c0$h;->l()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadDisabledUntilNextConfiguration:Z

    .line 13
    return-void
.end method

.method private R()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->stoppedAudioTrack:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->stoppedAudioTrack:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/x;->g(J)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    iput v0, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 25
    :cond_0
    return-void
.end method

.method private S(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 3
    array-length v0, v0

    .line 4
    move v1, v0

    .line 5
    .line 6
    :goto_0
    if-ltz v1, :cond_6

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    add-int/lit8 v3, v1, -0x1

    .line 13
    .line 14
    aget-object v2, v2, v3

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    :goto_1
    if-ne v1, v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/c0;->f0(Ljava/nio/ByteBuffer;J)V

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/c0;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 31
    .line 32
    aget-object v3, v3, v1

    .line 33
    .line 34
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 35
    .line 36
    if-le v1, v4, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/g;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/g;->getOutput()Ljava/nio/ByteBuffer;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    aput-object v3, v4, v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    return-void

    .line 64
    .line 65
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_6
    return-void
.end method

.method private T(Landroid/media/AudioTrack;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$n;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/audio/c0$n;-><init>(Lcom/google/android/exoplayer2/audio/c0;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$n;->a(Landroid/media/AudioTrack;)V

    .line 17
    return-void
.end method

.method private static U(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/g;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/g;->c()Z

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutorLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "ExoPlayer:AudioTrackReleaseThread"

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->x0(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sput-object v1, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    sget v1, Lcom/google/android/exoplayer2/audio/c0;->pendingReleaseCount:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    sput v1, Lcom/google/android/exoplayer2/audio/c0;->pendingReleaseCount:I

    .line 28
    .line 29
    sget-object v1, Lcom/google/android/exoplayer2/audio/c0;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v2, Lcom/google/android/exoplayer2/audio/b0;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/audio/b0;-><init>(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/g;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method private V()V
    .locals 12

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->submittedPcmBytes:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->submittedEncodedFrames:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenPcmBytes:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenEncodedFrames:J

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 14
    .line 15
    iput v2, p0, Lcom/google/android/exoplayer2/audio/c0;->framesPerEncodedSample:I

    .line 16
    .line 17
    new-instance v11, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->D()Lcom/google/android/exoplayer2/c3;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->I()Z

    .line 25
    move-result v5

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    move-object v3, v11

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/audio/c0$k;-><init>(Lcom/google/android/exoplayer2/c3;ZJJLcom/google/android/exoplayer2/audio/c0$a;)V

    .line 35
    .line 36
    iput-object v11, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUs:J

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    iput v2, p0, Lcom/google/android/exoplayer2/audio/c0;->inputBufferAccessUnitCount:I

    .line 51
    .line 52
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->stoppedAudioTrack:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->handledEndOfStream:Z

    .line 57
    const/4 v1, -0x1

    .line 58
    .line 59
    iput v1, p0, Lcom/google/android/exoplayer2/audio/c0;->drainingAudioProcessorIndex:I

    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    iput v2, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/n0;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/n0;->i()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->B()V

    .line 72
    return-void
.end method

.method private W(Lcom/google/android/exoplayer2/c3;Z)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->G()Lcom/google/android/exoplayer2/audio/c0$k;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/c0$k;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/c3;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->skipSilence:Z

    .line 15
    .line 16
    if-eq p2, v0, :cond_2

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v1, v0

    .line 31
    move-object v2, p1

    .line 32
    move v3, p2

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/c0$k;-><init>(Lcom/google/android/exoplayer2/c3;ZJJLcom/google/android/exoplayer2/audio/c0$a;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method private X(Lcom/google/android/exoplayer2/c3;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/media/PlaybackParams;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget v1, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget p1, p1, Lcom/google/android/exoplayer2/c3;->pitch:F

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    .line 41
    const-string v0, "DefaultAudioSink"

    .line 42
    .line 43
    const-string v1, "Failed to set playback params"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/c3;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 58
    move-result v0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c3;-><init>(FF)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 74
    .line 75
    iget v1, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/x;->t(F)V

    .line 79
    .line 80
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/c3;

    .line 81
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x15

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0;->volume:F

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/c0;->Z(Landroid/media/AudioTrack;F)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 24
    .line 25
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0;->volume:F

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/c0;->a0(Landroid/media/AudioTrack;F)V

    .line 29
    :goto_0
    return-void
.end method

.method private static Z(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 4
    return-void
.end method

.method private static a0(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 4
    return-void
.end method

.method private b0()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/c0$h;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    .line 18
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/g;->isActive()Z

    .line 19
    move-result v5

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/g;->flush()V

    .line 29
    .line 30
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v0

    .line 36
    .line 37
    new-array v2, v0, [Lcom/google/android/exoplayer2/audio/g;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, [Lcom/google/android/exoplayer2/audio/g;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 46
    .line 47
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->B()V

    .line 53
    return-void
.end method

.method private c0()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "audio/raw"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 23
    .line 24
    iget v0, v0, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/c0;->d0(I)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method private d0(I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->enableFloatOutput:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->n0(I)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private e0(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/audio/e;)Z
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-lt v0, v1, :cond_9

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadMode:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/x;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return v2

    .line 30
    .line 31
    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->D(I)I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    return v2

    .line 39
    .line 40
    :cond_2
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v1, v0}, Lcom/google/android/exoplayer2/audio/c0;->C(III)Landroid/media/AudioFormat;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/audio/e;->b()Lcom/google/android/exoplayer2/audio/e$d;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    iget-object p2, p2, Lcom/google/android/exoplayer2/audio/e$d;->audioAttributes:Landroid/media/AudioAttributes;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/audio/c0;->H(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 54
    move-result p2

    .line 55
    .line 56
    if-eqz p2, :cond_9

    .line 57
    const/4 v0, 0x1

    .line 58
    .line 59
    if-eq p2, v0, :cond_4

    .line 60
    const/4 p1, 0x2

    .line 61
    .line 62
    if-ne p2, p1, :cond_3

    .line 63
    return v0

    .line 64
    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 69
    throw p1

    .line 70
    .line 71
    :cond_4
    iget p2, p1, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 72
    .line 73
    if-nez p2, :cond_6

    .line 74
    .line 75
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    move p1, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    :goto_0
    move p1, v0

    .line 82
    .line 83
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadMode:I

    .line 84
    .line 85
    if-ne p2, v0, :cond_7

    .line 86
    move p2, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_7
    move p2, v2

    .line 89
    .line 90
    :goto_2
    if-eqz p1, :cond_8

    .line 91
    .line 92
    if-nez p2, :cond_9

    .line 93
    :cond_8
    move v2, v0

    .line 94
    :cond_9
    :goto_3
    return v2
.end method

.method private f0(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/16 v1, 0x15

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-ne v0, p1, :cond_1

    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v3

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 29
    .line 30
    if-ge v0, v1, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 34
    move-result v0

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBuffer:[B

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    array-length v4, v4

    .line 40
    .line 41
    if-ge v4, v0, :cond_4

    .line 42
    .line 43
    :cond_3
    new-array v4, v0, [B

    .line 44
    .line 45
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBuffer:[B

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 49
    move-result v4

    .line 50
    .line 51
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBuffer:[B

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    .line 59
    iput v3, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBufferOffset:I

    .line 60
    .line 61
    .line 62
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 63
    move-result v0

    .line 64
    .line 65
    sget v4, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 66
    .line 67
    if-ge v4, v1, :cond_7

    .line 68
    .line 69
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 70
    .line 71
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenPcmBytes:J

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v4, v5}, Lcom/google/android/exoplayer2/audio/x;->c(J)I

    .line 75
    move-result p2

    .line 76
    .line 77
    if-lez p2, :cond_6

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result p2

    .line 82
    .line 83
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBuffer:[B

    .line 86
    .line 87
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBufferOffset:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    .line 91
    move-result p2

    .line 92
    .line 93
    if-lez p2, :cond_a

    .line 94
    .line 95
    iget p3, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBufferOffset:I

    .line 96
    add-int/2addr p3, p2

    .line 97
    .line 98
    iput p3, p0, Lcom/google/android/exoplayer2/audio/c0;->preV21OutputBufferOffset:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 102
    move-result p3

    .line 103
    add-int/2addr p3, p2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    move p2, v3

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 112
    .line 113
    if-eqz v1, :cond_9

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 119
    .line 120
    cmp-long v1, p2, v4

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    move v1, v2

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    move v1, v3

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 129
    .line 130
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 131
    move-object v6, p0

    .line 132
    move-object v8, p1

    .line 133
    move v9, v0

    .line 134
    move-wide v10, p2

    .line 135
    .line 136
    .line 137
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/c0;->h0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    .line 138
    move-result p2

    .line 139
    goto :goto_3

    .line 140
    .line 141
    :cond_9
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 142
    .line 143
    .line 144
    invoke-static {p2, p1, v0}, Lcom/google/android/exoplayer2/audio/c0;->g0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 145
    move-result p2

    .line 146
    .line 147
    .line 148
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 149
    move-result-wide v4

    .line 150
    .line 151
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/c0;->lastFeedElapsedRealtimeMs:J

    .line 152
    .line 153
    const-wide/16 v4, 0x0

    .line 154
    .line 155
    if-gez p2, :cond_e

    .line 156
    .line 157
    .line 158
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/c0;->M(I)Z

    .line 159
    move-result p1

    .line 160
    .line 161
    if-eqz p1, :cond_b

    .line 162
    .line 163
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenEncodedFrames:J

    .line 164
    .line 165
    cmp-long p1, v0, v4

    .line 166
    .line 167
    if-lez p1, :cond_b

    .line 168
    goto :goto_4

    .line 169
    :cond_b
    move v2, v3

    .line 170
    .line 171
    :goto_4
    new-instance p1, Lcom/google/android/exoplayer2/audio/v$e;

    .line 172
    .line 173
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 174
    .line 175
    iget-object p3, p3, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, p2, p3, v2}, Lcom/google/android/exoplayer2/audio/v$e;-><init>(ILcom/google/android/exoplayer2/a2;Z)V

    .line 179
    .line 180
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 181
    .line 182
    if-eqz p2, :cond_c

    .line 183
    .line 184
    .line 185
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/audio/v$c;->a(Ljava/lang/Exception;)V

    .line 186
    .line 187
    :cond_c
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/v$e;->isRecoverable:Z

    .line 188
    .line 189
    if-nez p2, :cond_d

    .line 190
    .line 191
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/audio/c0$l;->b(Ljava/lang/Exception;)V

    .line 195
    return-void

    .line 196
    :cond_d
    throw p1

    .line 197
    .line 198
    :cond_e
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/c0;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/audio/c0$l;->a()V

    .line 202
    .line 203
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 204
    .line 205
    .line 206
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/c0;->O(Landroid/media/AudioTrack;)Z

    .line 207
    move-result p3

    .line 208
    .line 209
    if-eqz p3, :cond_10

    .line 210
    .line 211
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenEncodedFrames:J

    .line 212
    .line 213
    cmp-long p3, v6, v4

    .line 214
    .line 215
    if-lez p3, :cond_f

    .line 216
    .line 217
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/c0;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 218
    .line 219
    :cond_f
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/c0;->playing:Z

    .line 220
    .line 221
    if-eqz p3, :cond_10

    .line 222
    .line 223
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 224
    .line 225
    if-eqz p3, :cond_10

    .line 226
    .line 227
    if-ge p2, v0, :cond_10

    .line 228
    .line 229
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/c0;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 230
    .line 231
    if-nez v1, :cond_10

    .line 232
    .line 233
    .line 234
    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/v$c;->c()V

    .line 235
    .line 236
    :cond_10
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 237
    .line 238
    iget p3, p3, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 239
    .line 240
    if-nez p3, :cond_11

    .line 241
    .line 242
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenPcmBytes:J

    .line 243
    int-to-long v6, p2

    .line 244
    add-long/2addr v4, v6

    .line 245
    .line 246
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenPcmBytes:J

    .line 247
    .line 248
    :cond_11
    if-ne p2, v0, :cond_14

    .line 249
    .line 250
    if-eqz p3, :cond_13

    .line 251
    .line 252
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 253
    .line 254
    if-ne p1, p2, :cond_12

    .line 255
    goto :goto_5

    .line 256
    :cond_12
    move v2, v3

    .line 257
    .line 258
    .line 259
    :goto_5
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 260
    .line 261
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenEncodedFrames:J

    .line 262
    .line 263
    iget p3, p0, Lcom/google/android/exoplayer2/audio/c0;->framesPerEncodedSample:I

    .line 264
    int-to-long v0, p3

    .line 265
    .line 266
    iget p3, p0, Lcom/google/android/exoplayer2/audio/c0;->inputBufferAccessUnitCount:I

    .line 267
    int-to-long v2, p3

    .line 268
    mul-long/2addr v0, v2

    .line 269
    add-long/2addr p1, v0

    .line 270
    .line 271
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/c0;->writtenEncodedFrames:J

    .line 272
    :cond_13
    const/4 p1, 0x0

    .line 273
    .line 274
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 275
    :cond_14
    return-void
.end method

.method private static g0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private h0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    const/4 v7, 0x1

    .line 10
    .line 11
    mul-long v8, p4, v2

    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    move v6, p3

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x10

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    const v1, 0x55550001

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 52
    const/4 v4, 0x4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    const/16 v4, 0x8

    .line 60
    mul-long/2addr p4, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    .line 70
    iput p3, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 71
    .line 72
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 76
    move-result p4

    .line 77
    .line 78
    if-lez p4, :cond_4

    .line 79
    .line 80
    iget-object p5, p0, Lcom/google/android/exoplayer2/audio/c0;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 81
    const/4 v0, 0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 85
    move-result p5

    .line 86
    .line 87
    if-gez p5, :cond_3

    .line 88
    .line 89
    iput v1, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 90
    return p5

    .line 91
    .line 92
    :cond_3
    if-ge p5, p4, :cond_4

    .line 93
    return v1

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/c0;->g0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 97
    move-result p1

    .line 98
    .line 99
    if-gez p1, :cond_5

    .line 100
    .line 101
    iput v1, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 102
    return p1

    .line 103
    .line 104
    :cond_5
    iget p2, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 105
    sub-int/2addr p2, p1

    .line 106
    .line 107
    iput p2, p0, Lcom/google/android/exoplayer2/audio/c0;->bytesUntilNextAvSync:I

    .line 108
    return p1
.end method

.method public static synthetic n(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/c0;->P(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/g;)V

    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/audio/c0;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/c0;->playing:Z

    .line 3
    return p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/audio/c0;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->J()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/audio/c0;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/audio/c0;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c0;->lastFeedElapsedRealtimeMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic s(III)Landroid/media/AudioFormat;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/c0;->C(III)Landroid/media/AudioFormat;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/audio/c0;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 3
    return-object p0
.end method

.method private v(J)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->c0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->D()Lcom/google/android/exoplayer2/c3;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/h;->b(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/c3;

    .line 16
    move-result-object v0

    .line 17
    :goto_0
    move-object v2, v0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/c3;->DEFAULT:Lcom/google/android/exoplayer2/c3;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->c0()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->I()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/h;->a(Z)Z

    .line 37
    move-result v0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    .line 41
    :goto_2
    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    new-instance v10, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 55
    move-result-wide v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v6, v7}, Lcom/google/android/exoplayer2/audio/c0$h;->h(J)J

    .line 59
    move-result-wide v6

    .line 60
    const/4 v8, 0x0

    .line 61
    move-object v1, v10

    .line 62
    move v3, v0

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/c0$k;-><init>(Lcom/google/android/exoplayer2/c3;ZJJLcom/google/android/exoplayer2/audio/c0$a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->b0()V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/audio/v$c;->onSkipSilenceEnabledChanged(Z)V

    .line 79
    :cond_2
    return-void
.end method

.method private w(J)J
    .locals 4

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 17
    .line 18
    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->audioTrackPositionUs:J

    .line 19
    .line 20
    cmp-long v0, p1, v0

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 36
    .line 37
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/c0$k;->audioTrackPositionUs:J

    .line 38
    .line 39
    sub-long v1, p1, v1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 42
    .line 43
    sget-object v3, Lcom/google/android/exoplayer2/c3;->DEFAULT:Lcom/google/android/exoplayer2/c3;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c3;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 52
    .line 53
    iget-wide p1, p1, Lcom/google/android/exoplayer2/audio/c0$k;->mediaTimeUs:J

    .line 54
    add-long/2addr p1, v1

    .line 55
    return-wide p1

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/audio/h;->getMediaDuration(J)J

    .line 69
    move-result-wide p1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 72
    .line 73
    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->mediaTimeUs:J

    .line 74
    add-long/2addr v0, p1

    .line 75
    return-wide v0

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/google/android/exoplayer2/audio/c0$k;

    .line 84
    .line 85
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/c0$k;->audioTrackPositionUs:J

    .line 86
    sub-long/2addr v1, p1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$k;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 91
    .line 92
    iget p1, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2, p1}, Lcom/google/android/exoplayer2/util/o0;->U(JF)J

    .line 96
    move-result-wide p1

    .line 97
    .line 98
    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->mediaTimeUs:J

    .line 99
    sub-long/2addr v0, p1

    .line 100
    return-wide v0
.end method

.method private x(J)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/h;->getSkippedOutputFrameCount()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/c0$h;->h(J)J

    .line 12
    move-result-wide v0

    .line 13
    add-long/2addr p1, v0

    .line 14
    return-wide p1
.end method

.method private y(Lcom/google/android/exoplayer2/audio/c0$h;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$b;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioSessionId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/c0$h;->a(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioOffloadListener:Lcom/google/android/exoplayer2/s$a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->O(Landroid/media/AudioTrack;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/s$a;->v(Z)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/v$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    return-object p1

    .line 26
    .line 27
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/v$c;->a(Ljava/lang/Exception;)V

    .line 33
    :cond_1
    throw p1
.end method

.method private z()Landroid/media/AudioTrack;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$b;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/audio/c0$h;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/c0;->y(Lcom/google/android/exoplayer2/audio/c0$h;)Landroid/media/AudioTrack;

    .line 12
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/v$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 17
    .line 18
    iget v2, v1, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 19
    .line 20
    .line 21
    const v3, 0xf4240

    .line 22
    .line 23
    if-le v2, v3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/audio/c0$h;->c(I)Lcom/google/android/exoplayer2/audio/c0$h;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/c0;->y(Lcom/google/android/exoplayer2/audio/c0$h;)Landroid/media/AudioTrack;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/audio/v$b; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    return-object v2

    .line 35
    :catch_1
    move-exception v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->Q()V

    .line 42
    throw v0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->G()Lcom/google/android/exoplayer2/audio/c0$k;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/c0$k;->skipSilence:Z

    .line 7
    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/a2;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/c0;->k(Lcom/google/android/exoplayer2/a2;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/c3;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/c3;

    .line 3
    .line 4
    iget v1, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 5
    .line 6
    .line 7
    const v2, 0x3dcccccd    # 0.1f

    .line 8
    .line 9
    const/high16 v3, 0x41000000    # 8.0f

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/o0;->o(FFF)F

    .line 13
    move-result v1

    .line 14
    .line 15
    iget p1, p1, Lcom/google/android/exoplayer2/c3;->pitch:F

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/util/o0;->o(FFF)F

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/c3;-><init>(FF)V

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c0;->enableAudioTrackPlaybackParams:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    sget p1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 29
    .line 30
    const/16 v1, 0x17

    .line 31
    .line 32
    if-lt p1, v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/c0;->X(Lcom/google/android/exoplayer2/c3;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->I()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/c0;->W(Lcom/google/android/exoplayer2/c3;Z)V

    .line 44
    :goto_0
    return-void
.end method

.method public c()V
    .locals 8

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x19

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c0$l;->a()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c0$l;->a()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->V()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/x;->i()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/x;->q()V

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 60
    .line 61
    iget v3, v0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 62
    const/4 v4, 0x2

    .line 63
    const/4 v7, 0x1

    .line 64
    .line 65
    if-ne v3, v4, :cond_3

    .line 66
    move v3, v7

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v3, 0x0

    .line 69
    .line 70
    :goto_0
    iget v4, v0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 71
    .line 72
    iget v5, v0, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 73
    .line 74
    iget v6, v0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/x;->s(Landroid/media/AudioTrack;ZIII)V

    .line 78
    .line 79
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsInit:Z

    .line 80
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->externalAudioSessionIdProvided:Z

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 28
    :cond_1
    return-void
.end method

.method public disableTunneling()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 11
    :cond_0
    return-void
.end method

.method public e(Ljava/nio/ByteBuffer;JI)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$b;,
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-wide/from16 v2, p2

    .line 7
    .line 8
    move/from16 v4, p4

    .line 9
    .line 10
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    if-ne v0, v5, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v5, v7

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v5, v6

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 24
    .line 25
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 26
    const/4 v8, 0x0

    .line 27
    .line 28
    if-eqz v5, :cond_7

    .line 29
    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->A()Z

    .line 32
    move-result v5

    .line 33
    .line 34
    if-nez v5, :cond_2

    .line 35
    return v7

    .line 36
    .line 37
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 38
    .line 39
    iget-object v9, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/audio/c0$h;->b(Lcom/google/android/exoplayer2/audio/c0$h;)Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->R()V

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->hasPendingData()Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    return v7

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_4
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 62
    .line 63
    iput-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 64
    .line 65
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 66
    .line 67
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/c0;->O(Landroid/media/AudioTrack;)Z

    .line 71
    move-result v5

    .line 72
    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    iget v5, v1, Lcom/google/android/exoplayer2/audio/c0;->offloadMode:I

    .line 76
    const/4 v9, 0x3

    .line 77
    .line 78
    if-eq v5, v9, :cond_6

    .line 79
    .line 80
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    .line 84
    move-result v5

    .line 85
    .line 86
    if-ne v5, v9, :cond_5

    .line 87
    .line 88
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Landroidx/media3/exoplayer/audio/q;->a(Landroid/media/AudioTrack;)V

    .line 92
    .line 93
    :cond_5
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 94
    .line 95
    iget-object v9, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 96
    .line 97
    iget-object v9, v9, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 98
    .line 99
    iget v10, v9, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 100
    .line 101
    iget v9, v9, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v10, v9}, Landroidx/media3/exoplayer/audio/r;->a(Landroid/media/AudioTrack;II)V

    .line 105
    .line 106
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/c0;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_2
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/c0;->v(J)V

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 113
    move-result v5

    .line 114
    .line 115
    if-nez v5, :cond_9

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->L()Z

    .line 119
    move-result v5
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/v$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    if-nez v5, :cond_9

    .line 122
    return v7

    .line 123
    :catch_0
    move-exception v0

    .line 124
    move-object v2, v0

    .line 125
    .line 126
    iget-boolean v0, v2, Lcom/google/android/exoplayer2/audio/v$b;->isRecoverable:Z

    .line 127
    .line 128
    if-nez v0, :cond_8

    .line 129
    .line 130
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/c0;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/c0$l;->b(Ljava/lang/Exception;)V

    .line 134
    return v7

    .line 135
    :cond_8
    throw v2

    .line 136
    .line 137
    :cond_9
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/c0$l;->a()V

    .line 141
    .line 142
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsInit:Z

    .line 143
    .line 144
    const-wide/16 v9, 0x0

    .line 145
    .line 146
    if-eqz v5, :cond_b

    .line 147
    .line 148
    .line 149
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 150
    move-result-wide v11

    .line 151
    .line 152
    iput-wide v11, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUs:J

    .line 153
    .line 154
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsSync:Z

    .line 155
    .line 156
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsInit:Z

    .line 157
    .line 158
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/c0;->enableAudioTrackPlaybackParams:Z

    .line 159
    .line 160
    if-eqz v5, :cond_a

    .line 161
    .line 162
    sget v5, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 163
    .line 164
    const/16 v11, 0x17

    .line 165
    .line 166
    if-lt v5, v11, :cond_a

    .line 167
    .line 168
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/c3;

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/audio/c0;->X(Lcom/google/android/exoplayer2/c3;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/c0;->v(J)V

    .line 175
    .line 176
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/c0;->playing:Z

    .line 177
    .line 178
    if-eqz v5, :cond_b

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->play()V

    .line 182
    .line 183
    :cond_b
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 184
    .line 185
    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 187
    move-result-wide v11

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v11, v12}, Lcom/google/android/exoplayer2/audio/x;->k(J)Z

    .line 191
    move-result v5

    .line 192
    .line 193
    if-nez v5, :cond_c

    .line 194
    return v7

    .line 195
    .line 196
    :cond_c
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    if-nez v5, :cond_16

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 202
    move-result-object v5

    .line 203
    .line 204
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 205
    .line 206
    if-ne v5, v11, :cond_d

    .line 207
    move v5, v6

    .line 208
    goto :goto_3

    .line 209
    :cond_d
    move v5, v7

    .line 210
    .line 211
    .line 212
    :goto_3
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 216
    move-result v5

    .line 217
    .line 218
    if-nez v5, :cond_e

    .line 219
    return v6

    .line 220
    .line 221
    :cond_e
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 222
    .line 223
    iget v11, v5, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 224
    .line 225
    if-eqz v11, :cond_f

    .line 226
    .line 227
    iget v11, v1, Lcom/google/android/exoplayer2/audio/c0;->framesPerEncodedSample:I

    .line 228
    .line 229
    if-nez v11, :cond_f

    .line 230
    .line 231
    iget v5, v5, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 232
    .line 233
    .line 234
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/audio/c0;->F(ILjava/nio/ByteBuffer;)I

    .line 235
    move-result v5

    .line 236
    .line 237
    iput v5, v1, Lcom/google/android/exoplayer2/audio/c0;->framesPerEncodedSample:I

    .line 238
    .line 239
    if-nez v5, :cond_f

    .line 240
    return v6

    .line 241
    .line 242
    :cond_f
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 243
    .line 244
    if-eqz v5, :cond_11

    .line 245
    .line 246
    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->A()Z

    .line 248
    move-result v5

    .line 249
    .line 250
    if-nez v5, :cond_10

    .line 251
    return v7

    .line 252
    .line 253
    .line 254
    :cond_10
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/c0;->v(J)V

    .line 255
    .line 256
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/c0;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/c0$k;

    .line 257
    .line 258
    :cond_11
    iget-wide v11, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUs:J

    .line 259
    .line 260
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 261
    .line 262
    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->J()J

    .line 264
    move-result-wide v13

    .line 265
    .line 266
    iget-object v15, v1, Lcom/google/android/exoplayer2/audio/c0;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/n0;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/audio/n0;->h()J

    .line 270
    move-result-wide v15

    .line 271
    sub-long/2addr v13, v15

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v13, v14}, Lcom/google/android/exoplayer2/audio/c0$h;->k(J)J

    .line 275
    move-result-wide v13

    .line 276
    add-long/2addr v11, v13

    .line 277
    .line 278
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsSync:Z

    .line 279
    .line 280
    if-nez v5, :cond_12

    .line 281
    .line 282
    sub-long v13, v11, v2

    .line 283
    .line 284
    .line 285
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 286
    move-result-wide v13

    .line 287
    .line 288
    .line 289
    const-wide/32 v15, 0x30d40

    .line 290
    .line 291
    cmp-long v5, v13, v15

    .line 292
    .line 293
    if-lez v5, :cond_12

    .line 294
    .line 295
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 296
    .line 297
    new-instance v13, Lcom/google/android/exoplayer2/audio/v$d;

    .line 298
    .line 299
    .line 300
    invoke-direct {v13, v2, v3, v11, v12}, Lcom/google/android/exoplayer2/audio/v$d;-><init>(JJ)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v5, v13}, Lcom/google/android/exoplayer2/audio/v$c;->a(Ljava/lang/Exception;)V

    .line 304
    .line 305
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsSync:Z

    .line 306
    .line 307
    :cond_12
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsSync:Z

    .line 308
    .line 309
    if-eqz v5, :cond_14

    .line 310
    .line 311
    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->A()Z

    .line 313
    move-result v5

    .line 314
    .line 315
    if-nez v5, :cond_13

    .line 316
    return v7

    .line 317
    .line 318
    :cond_13
    sub-long v11, v2, v11

    .line 319
    .line 320
    iget-wide v13, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUs:J

    .line 321
    add-long/2addr v13, v11

    .line 322
    .line 323
    iput-wide v13, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUs:J

    .line 324
    .line 325
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsSync:Z

    .line 326
    .line 327
    .line 328
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/c0;->v(J)V

    .line 329
    .line 330
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    .line 331
    .line 332
    if-eqz v5, :cond_14

    .line 333
    .line 334
    cmp-long v9, v11, v9

    .line 335
    .line 336
    if-eqz v9, :cond_14

    .line 337
    .line 338
    .line 339
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/v$c;->onPositionDiscontinuity()V

    .line 340
    .line 341
    :cond_14
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 342
    .line 343
    iget v5, v5, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 344
    .line 345
    if-nez v5, :cond_15

    .line 346
    .line 347
    iget-wide v9, v1, Lcom/google/android/exoplayer2/audio/c0;->submittedPcmBytes:J

    .line 348
    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 351
    move-result v5

    .line 352
    int-to-long v11, v5

    .line 353
    add-long/2addr v9, v11

    .line 354
    .line 355
    iput-wide v9, v1, Lcom/google/android/exoplayer2/audio/c0;->submittedPcmBytes:J

    .line 356
    goto :goto_4

    .line 357
    .line 358
    :cond_15
    iget-wide v9, v1, Lcom/google/android/exoplayer2/audio/c0;->submittedEncodedFrames:J

    .line 359
    .line 360
    iget v5, v1, Lcom/google/android/exoplayer2/audio/c0;->framesPerEncodedSample:I

    .line 361
    int-to-long v11, v5

    .line 362
    int-to-long v13, v4

    .line 363
    mul-long/2addr v11, v13

    .line 364
    add-long/2addr v9, v11

    .line 365
    .line 366
    iput-wide v9, v1, Lcom/google/android/exoplayer2/audio/c0;->submittedEncodedFrames:J

    .line 367
    .line 368
    :goto_4
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 369
    .line 370
    iput v4, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBufferAccessUnitCount:I

    .line 371
    .line 372
    .line 373
    :cond_16
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/c0;->S(J)V

    .line 374
    .line 375
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 379
    move-result v0

    .line 380
    .line 381
    if-nez v0, :cond_17

    .line 382
    .line 383
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 384
    .line 385
    iput v7, v1, Lcom/google/android/exoplayer2/audio/c0;->inputBufferAccessUnitCount:I

    .line 386
    return v6

    .line 387
    .line 388
    :cond_17
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 389
    .line 390
    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 392
    move-result-wide v2

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/x;->j(J)Z

    .line 396
    move-result v0

    .line 397
    .line 398
    if-eqz v0, :cond_18

    .line 399
    .line 400
    const-string v0, "DefaultAudioSink"

    .line 401
    .line 402
    const-string v2, "Resetting stalled audio track"

    .line 403
    .line 404
    .line 405
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 409
    return v6

    .line 410
    :cond_18
    return v7
.end method

.method public synthetic f(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/u;->a(Lcom/google/android/exoplayer2/audio/v;J)V

    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->V()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/x;->i()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->O(Landroid/media/AudioTrack;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/exoplayer2/audio/c0$n;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/c0$n;->b(Landroid/media/AudioTrack;)V

    .line 44
    .line 45
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 46
    .line 47
    const/16 v1, 0x15

    .line 48
    .line 49
    if-ge v0, v1, :cond_2

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->externalAudioSessionIdProvided:Z

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioSessionId:I

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/x;->q()V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->releasingConditionVariable:Lcom/google/android/exoplayer2/util/g;

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/audio/c0;->U(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/g;)V

    .line 78
    .line 79
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c0$l;->a()V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/c0$l;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c0$l;->a()V

    .line 90
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->D()Lcom/google/android/exoplayer2/c3;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/c0;->W(Lcom/google/android/exoplayer2/c3;Z)V

    .line 8
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsInit:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/x;->d(Z)J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/audio/c0$h;->h(J)J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/c0;->w(J)J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/c0;->x(J)J

    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    .line 42
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 43
    return-wide v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/c3;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->enableAudioTrackPlaybackParams:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/c3;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->D()Lcom/google/android/exoplayer2/c3;

    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/e;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c0;->tunneling:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 20
    return-void
.end method

.method public handleDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->startMediaTimeUsNeedsSync:Z

    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->K()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/x;->h(J)Z

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

.method public i(Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/analytics/t1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->handledEndOfStream:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->hasPendingData()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/audio/v$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->listener:Lcom/google/android/exoplayer2/audio/v$c;

    return-void
.end method

.method public k(Lcom/google/android/exoplayer2/a2;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "audio/raw"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->o0(I)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Invalid PCM encoding: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "DefaultAudioSink"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v1

    .line 46
    .line 47
    :cond_0
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 48
    .line 49
    if-eq p1, v2, :cond_2

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->enableFloatOutput:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x4

    .line 55
    .line 56
    if-ne p1, v0, :cond_1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    :cond_2
    :goto_0
    return v2

    .line 61
    .line 62
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadDisabledUntilNextConfiguration:Z

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/audio/c0;->e0(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/audio/e;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    return v2

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/f;->h(Lcom/google/android/exoplayer2/a2;)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    return v2

    .line 83
    :cond_5
    return v1
.end method

.method public l(Lcom/google/android/exoplayer2/audio/y;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/y;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 12
    .line 13
    iget v1, p1, Lcom/google/android/exoplayer2/audio/y;->sendLevel:F

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/c0;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

    .line 20
    .line 21
    iget v3, v3, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 22
    .line 23
    if-eq v3, v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 27
    .line 28
    :cond_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 34
    .line 35
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/y;

    .line 36
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/a2;I[I)V
    .locals 20
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$a;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    iget-object v0, v3, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "audio/raw"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    iget v0, v3, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->o0(I)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 25
    .line 26
    iget v0, v3, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 27
    .line 28
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/o0;->Y(II)I

    .line 32
    move-result v0

    .line 33
    .line 34
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/audio/c0;->d0(I)Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/c0;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/c0;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 46
    .line 47
    :goto_0
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/n0;

    .line 48
    .line 49
    iget v6, v3, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 50
    .line 51
    iget v7, v3, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/audio/n0;->j(II)V

    .line 55
    .line 56
    sget v5, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 57
    .line 58
    const/16 v6, 0x15

    .line 59
    .line 60
    if-ge v5, v6, :cond_1

    .line 61
    .line 62
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 63
    .line 64
    const/16 v6, 0x8

    .line 65
    .line 66
    if-ne v5, v6, :cond_1

    .line 67
    .line 68
    if-nez p3, :cond_1

    .line 69
    const/4 v5, 0x6

    .line 70
    .line 71
    new-array v6, v5, [I

    .line 72
    move v7, v2

    .line 73
    .line 74
    :goto_1
    if-ge v7, v5, :cond_2

    .line 75
    .line 76
    aput v7, v6, v7

    .line 77
    .line 78
    add-int/lit8 v7, v7, 0x1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    move-object/from16 v6, p3

    .line 82
    .line 83
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/a0;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/audio/a0;->h([I)V

    .line 87
    .line 88
    new-instance v5, Lcom/google/android/exoplayer2/audio/g$a;

    .line 89
    .line 90
    iget v6, v3, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 91
    .line 92
    iget v7, v3, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 93
    .line 94
    iget v8, v3, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 95
    .line 96
    .line 97
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/audio/g$a;-><init>(III)V

    .line 98
    array-length v6, v4

    .line 99
    move v7, v2

    .line 100
    .line 101
    :goto_2
    if-ge v7, v6, :cond_4

    .line 102
    .line 103
    aget-object v8, v4, v7

    .line 104
    .line 105
    .line 106
    :try_start_0
    invoke-interface {v8, v5}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/g$a;)Lcom/google/android/exoplayer2/audio/g$a;

    .line 107
    move-result-object v9

    .line 108
    .line 109
    .line 110
    invoke-interface {v8}, Lcom/google/android/exoplayer2/audio/g;->isActive()Z

    .line 111
    move-result v8
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/g$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    if-eqz v8, :cond_3

    .line 114
    move-object v5, v9

    .line 115
    .line 116
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .line 120
    new-instance v2, Lcom/google/android/exoplayer2/audio/v$a;

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/audio/v$a;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;)V

    .line 124
    throw v2

    .line 125
    .line 126
    :cond_4
    iget v6, v5, Lcom/google/android/exoplayer2/audio/g$a;->encoding:I

    .line 127
    .line 128
    iget v7, v5, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 129
    .line 130
    iget v8, v5, Lcom/google/android/exoplayer2/audio/g$a;->channelCount:I

    .line 131
    .line 132
    .line 133
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/o0;->D(I)I

    .line 134
    move-result v8

    .line 135
    .line 136
    iget v5, v5, Lcom/google/android/exoplayer2/audio/g$a;->channelCount:I

    .line 137
    .line 138
    .line 139
    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/o0;->Y(II)I

    .line 140
    move-result v5

    .line 141
    .line 142
    move-object/from16 v16, v4

    .line 143
    move v13, v5

    .line 144
    move v11, v6

    .line 145
    move v14, v7

    .line 146
    move v15, v8

    .line 147
    move v4, v0

    .line 148
    move v0, v2

    .line 149
    goto :goto_4

    .line 150
    .line 151
    :cond_5
    new-array v0, v2, [Lcom/google/android/exoplayer2/audio/g;

    .line 152
    .line 153
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 154
    .line 155
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v3, v5}, Lcom/google/android/exoplayer2/audio/c0;->e0(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/audio/e;)Z

    .line 159
    move-result v5

    .line 160
    const/4 v6, -0x1

    .line 161
    .line 162
    if-eqz v5, :cond_6

    .line 163
    .line 164
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    check-cast v5, Ljava/lang/String;

    .line 171
    .line 172
    iget-object v7, v3, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/x;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-result v5

    .line 177
    .line 178
    iget v7, v3, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 179
    .line 180
    .line 181
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/o0;->D(I)I

    .line 182
    move-result v7

    .line 183
    const/4 v8, 0x1

    .line 184
    .line 185
    move-object/from16 v16, v0

    .line 186
    move v14, v4

    .line 187
    move v11, v5

    .line 188
    move v4, v6

    .line 189
    move v13, v4

    .line 190
    move v15, v7

    .line 191
    :goto_3
    move v0, v8

    .line 192
    goto :goto_4

    .line 193
    .line 194
    :cond_6
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/audio/f;->f(Lcom/google/android/exoplayer2/a2;)Landroid/util/Pair;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    if-eqz v5, :cond_c

    .line 201
    .line 202
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v7, Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 208
    move-result v7

    .line 209
    .line 210
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v5, Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 216
    move-result v5

    .line 217
    const/4 v8, 0x2

    .line 218
    .line 219
    move-object/from16 v16, v0

    .line 220
    move v14, v4

    .line 221
    move v15, v5

    .line 222
    move v4, v6

    .line 223
    move v13, v4

    .line 224
    move v11, v7

    .line 225
    goto :goto_3

    .line 226
    .line 227
    :goto_4
    const-string v5, ") for: "

    .line 228
    .line 229
    if-eqz v11, :cond_b

    .line 230
    .line 231
    if-eqz v15, :cond_a

    .line 232
    .line 233
    if-eqz p2, :cond_7

    .line 234
    .line 235
    move/from16 v10, p2

    .line 236
    .line 237
    move/from16 v19, v11

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_7
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/c0;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/c0$f;

    .line 241
    .line 242
    .line 243
    invoke-static {v14, v15, v11}, Lcom/google/android/exoplayer2/audio/c0;->E(III)I

    .line 244
    move-result v6

    .line 245
    .line 246
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/audio/c0;->enableAudioTrackPlaybackParams:Z

    .line 247
    .line 248
    if-eqz v7, :cond_8

    .line 249
    .line 250
    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    .line 251
    .line 252
    :goto_5
    move-wide/from16 v17, v7

    .line 253
    goto :goto_6

    .line 254
    .line 255
    :cond_8
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 256
    goto :goto_5

    .line 257
    :goto_6
    move v7, v11

    .line 258
    move v8, v0

    .line 259
    move v9, v13

    .line 260
    move v10, v14

    .line 261
    .line 262
    move/from16 v19, v11

    .line 263
    .line 264
    move-wide/from16 v11, v17

    .line 265
    .line 266
    .line 267
    invoke-interface/range {v5 .. v12}, Lcom/google/android/exoplayer2/audio/c0$f;->a(IIIIID)I

    .line 268
    move-result v5

    .line 269
    move v10, v5

    .line 270
    .line 271
    :goto_7
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/audio/c0;->offloadDisabledUntilNextConfiguration:Z

    .line 272
    .line 273
    new-instance v12, Lcom/google/android/exoplayer2/audio/c0$h;

    .line 274
    move-object v2, v12

    .line 275
    .line 276
    move-object/from16 v3, p1

    .line 277
    move v5, v0

    .line 278
    move v6, v13

    .line 279
    move v7, v14

    .line 280
    move v8, v15

    .line 281
    .line 282
    move/from16 v9, v19

    .line 283
    .line 284
    move-object/from16 v11, v16

    .line 285
    .line 286
    .line 287
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/audio/c0$h;-><init>(Lcom/google/android/exoplayer2/a2;IIIIIII[Lcom/google/android/exoplayer2/audio/g;)V

    .line 288
    .line 289
    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 291
    move-result v0

    .line 292
    .line 293
    if-eqz v0, :cond_9

    .line 294
    .line 295
    iput-object v12, v1, Lcom/google/android/exoplayer2/audio/c0;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 296
    goto :goto_8

    .line 297
    .line 298
    :cond_9
    iput-object v12, v1, Lcom/google/android/exoplayer2/audio/c0;->configuration:Lcom/google/android/exoplayer2/audio/c0$h;

    .line 299
    :goto_8
    return-void

    .line 300
    .line 301
    :cond_a
    new-instance v2, Lcom/google/android/exoplayer2/audio/v$a;

    .line 302
    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    const-string v6, "Invalid output channel config (mode="

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    .line 327
    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/audio/v$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)V

    .line 328
    throw v2

    .line 329
    .line 330
    :cond_b
    new-instance v2, Lcom/google/android/exoplayer2/audio/v$a;

    .line 331
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    const-string v6, "Invalid output encoding (mode="

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object v0

    .line 354
    .line 355
    .line 356
    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/audio/v$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)V

    .line 357
    throw v2

    .line 358
    .line 359
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/audio/v$a;

    .line 360
    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    const-string v4, "Unable to configure passthrough for: "

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v2

    .line 377
    .line 378
    .line 379
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/v$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)V

    .line 380
    throw v0
.end method

.method public pause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->playing:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/x;->p()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 23
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->playing:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/x;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/x;->u()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 20
    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->handledEndOfStream:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->N()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->A()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->R()V

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c0;->handledEndOfStream:Z

    .line 23
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget-object v4, v0, v3

    .line 13
    .line 14
    .line 15
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/g;->reset()V

    .line 16
    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 21
    array-length v1, v0

    .line 22
    move v3, v2

    .line 23
    .line 24
    :goto_1
    if-ge v3, v1, :cond_1

    .line 25
    .line 26
    aget-object v4, v0, v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/g;->reset()V

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->playing:Z

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c0;->offloadDisabledUntilNextConfiguration:Z

    .line 37
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioSessionId:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/audio/c0;->audioSessionId:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c0;->externalAudioSessionIdProvided:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0;->flush()V

    .line 17
    :cond_1
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$d;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 10
    move-object p1, v0

    .line 11
    .line 12
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0;->preferredDevice:Lcom/google/android/exoplayer2/audio/c0$d;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0;->audioTrack:Landroid/media/AudioTrack;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$b;->a(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/audio/c0$d;)V

    .line 20
    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0;->volume:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/audio/c0;->volume:F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/c0;->Y()V

    .line 12
    :cond_0
    return-void
.end method
