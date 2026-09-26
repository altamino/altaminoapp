.class public abstract Landroidx/media3/exoplayer/BaseRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private configuration:Landroidx/media3/exoplayer/RendererConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private index:I

.field private lastResetPositionUs:J

.field private final lock:Ljava/lang/Object;

.field private playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private readingPositionUs:J

.field private rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private state:I

.field private stream:Landroidx/media3/exoplayer/source/SampleStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamFormats:[Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private throwRendererExceptionIsExecuting:Z

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->trackType:I

    .line 13
    .line 14
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 20
    .line 21
    const-wide/high16 v0, -0x8000000000000000L

    .line 22
    .line 23
    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 24
    return-void
.end method

.method private B(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->t(JZ)V

    .line 11
    return-void
.end method


# virtual methods
.method protected final A(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->b(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 12
    move-result p3

    .line 13
    const/4 v0, -0x4

    .line 14
    .line 15
    if-ne p3, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-wide/high16 p1, -0x8000000000000000L

    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x3

    .line 32
    :goto_0
    return v0

    .line 33
    .line 34
    :cond_1
    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 35
    .line 36
    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    .line 37
    add-long/2addr v0, v2

    .line 38
    .line 39
    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 40
    .line 41
    iget-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 45
    move-result-wide p1

    .line 46
    .line 47
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 p2, -0x5

    .line 50
    .line 51
    if-ne p3, p2, :cond_3

    .line 52
    .line 53
    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Landroidx/media3/common/Format;

    .line 60
    .line 61
    iget-wide v0, p2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide v2, 0x7fffffffffffffffL

    .line 67
    .line 68
    cmp-long v0, v0, v2

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-wide v1, p2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 77
    .line 78
    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    .line 79
    add-long/2addr v1, v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Format$Builder;->k0(J)Landroidx/media3/common/Format$Builder;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iput-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 90
    :cond_3
    :goto_1
    return p3
.end method

.method protected C(J)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    .line 11
    sub-long/2addr p1, v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public synthetic d(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/g2;->b(Landroidx/media3/exoplayer/Renderer;FF)V

    return-void
.end method

.method public final disable()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 17
    .line 18
    iput v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    .line 24
    .line 25
    iput-boolean v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->r()V

    .line 29
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public final f([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 12
    .line 13
    const-wide/high16 v2, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long p2, v0, v2

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iput-wide p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    .line 22
    .line 23
    iput-wide p5, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-wide v2, p3

    .line 27
    move-wide v4, p5

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/BaseRenderer;->z([Landroidx/media3/common/Format;JJ)V

    .line 31
    return-void
.end method

.method public final g(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move v8, p6

    .line 3
    .line 4
    iget v0, v7, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 14
    move-object v0, p1

    .line 15
    .line 16
    iput-object v0, v7, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 17
    .line 18
    iput v1, v7, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 19
    .line 20
    move/from16 v0, p7

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p6, v0}, Landroidx/media3/exoplayer/BaseRenderer;->s(ZZ)V

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p2

    .line 26
    move-object v2, p3

    .line 27
    .line 28
    move-wide/from16 v3, p8

    .line 29
    .line 30
    move-wide/from16 v5, p10

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/BaseRenderer;->f([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V

    .line 34
    move-wide v0, p4

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p4, p5, p6}, Landroidx/media3/exoplayer/BaseRenderer;->B(JZ)V

    .line 38
    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->trackType:I

    return v0
.end method

.method public final h(ILandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->index:I

    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .param p2    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/BaseRenderer;->k(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected final k(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 9
    .param p2    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/RendererCapabilities;->a(Landroidx/media3/common/Format;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/media3/exoplayer/h2;->h(I)I

    .line 18
    move-result v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 21
    :goto_0
    move v6, v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    .line 25
    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 26
    throw p1

    .line 27
    .line 28
    :catch_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 29
    :cond_0
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->n()I

    .line 38
    move-result v4

    .line 39
    move-object v2, p1

    .line 40
    move-object v5, p2

    .line 41
    move v7, p3

    .line 42
    move v8, p4

    .line 43
    .line 44
    .line 45
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlaybackException;->h(Ljava/lang/Throwable;Ljava/lang/String;ILandroidx/media3/common/Format;IZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method protected final l()Landroidx/media3/exoplayer/RendererConfiguration;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/RendererConfiguration;

    .line 9
    return-object v0
.end method

.method protected final m()Landroidx/media3/exoplayer/FormatHolder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 8
    return-object v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    .line 12
    return-void
.end method

.method protected final n()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->index:I

    return v0
.end method

.method protected final o()Landroidx/media3/exoplayer/analytics/PlayerId;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 9
    return-object v0
.end method

.method protected final p()[Landroidx/media3/common/Format;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/media3/common/Format;

    .line 9
    return-object v0
.end method

.method protected final q()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method protected r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->u()V

    .line 14
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->w()V

    .line 19
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/BaseRenderer;->B(JZ)V

    .line 5
    return-void
.end method

.method protected s(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->x()V

    .line 17
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 13
    .line 14
    iput v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->y()V

    .line 18
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected t(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected u()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final v()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/RendererCapabilities$Listener;->b(Landroidx/media3/exoplayer/Renderer;)V

    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v1
.end method

.method protected w()V
    .locals 0

    .line 1
    return-void
.end method

.method protected x()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected y()V
    .locals 0

    .line 1
    return-void
.end method

.method protected z([Landroidx/media3/common/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method
