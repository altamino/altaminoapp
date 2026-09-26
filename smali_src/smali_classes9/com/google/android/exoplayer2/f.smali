.class public abstract Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/m3;
.implements Lcom/google/android/exoplayer2/o3;


# instance fields
.field private configuration:Lcom/google/android/exoplayer2/p3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final formatHolder:Lcom/google/android/exoplayer2/b2;

.field private index:I

.field private lastResetPositionUs:J

.field private playerId:Lcom/google/android/exoplayer2/analytics/t1;

.field private readingPositionUs:J

.field private state:I

.field private stream:Lcom/google/android/exoplayer2/source/w0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamFormats:[Lcom/google/android/exoplayer2/a2;
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
    iput p1, p0, Lcom/google/android/exoplayer2/f;->trackType:I

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/b2;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/exoplayer2/b2;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->formatHolder:Lcom/google/android/exoplayer2/b2;

    .line 13
    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

    .line 17
    return-void
.end method

.method private x(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->lastResetPositionUs:J

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->r(JZ)V

    .line 11
    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

    return-wide v0
.end method

.method public synthetic d(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/l3;->a(Lcom/google/android/exoplayer2/m3;FF)V

    return-void
.end method

.method public final disable()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/f;->state:I

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
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->formatHolder:Lcom/google/android/exoplayer2/b2;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->a()V

    .line 17
    .line 18
    iput v1, p0, Lcom/google/android/exoplayer2/f;->state:I

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->streamFormats:[Lcom/google/android/exoplayer2/a2;

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->p()V

    .line 29
    return-void
.end method

.method public final e(ILcom/google/android/exoplayer2/analytics/t1;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/f;->index:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/f;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    return-void
.end method

.method protected final f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/f;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;ZI)Lcom/google/android/exoplayer2/q;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final g([Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

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
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->streamFormats:[Lcom/google/android/exoplayer2/a2;

    .line 22
    .line 23
    iput-wide p5, p0, Lcom/google/android/exoplayer2/f;->streamOffsetUs:J

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/f;->v([Lcom/google/android/exoplayer2/a2;JJ)V

    .line 31
    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/o3;
    .locals 0

    return-object p0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/v;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplayer2/source/w0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->trackType:I

    return v0
.end method

.method public final h(Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move v8, p6

    .line 3
    .line 4
    iget v0, v7, Lcom/google/android/exoplayer2/f;->state:I

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 14
    move-object v0, p1

    .line 15
    .line 16
    iput-object v0, v7, Lcom/google/android/exoplayer2/f;->configuration:Lcom/google/android/exoplayer2/p3;

    .line 17
    .line 18
    iput v1, v7, Lcom/google/android/exoplayer2/f;->state:I

    .line 19
    .line 20
    move/from16 v0, p7

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplayer2/f;->q(ZZ)V

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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/f;->g([Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JJ)V

    .line 34
    move-wide v0, p4

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/f;->x(JZ)V

    .line 38
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
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

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

.method protected final i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;ZI)Lcom/google/android/exoplayer2/q;
    .locals 9
    .param p2    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->throwRendererExceptionIsExecuting:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->throwRendererExceptionIsExecuting:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/o3;->a(Lcom/google/android/exoplayer2/a2;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/n3;->f(I)I

    .line 18
    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->throwRendererExceptionIsExecuting:Z

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->throwRendererExceptionIsExecuting:Z

    .line 26
    throw p1

    .line 27
    .line 28
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->throwRendererExceptionIsExecuting:Z

    .line 29
    :cond_0
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/m3;->getName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->l()I

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
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/q;->g(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/a2;IZI)Lcom/google/android/exoplayer2/q;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

    return v0
.end method

.method protected final j()Lcom/google/android/exoplayer2/p3;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->configuration:Lcom/google/android/exoplayer2/p3;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/p3;

    .line 9
    return-object v0
.end method

.method protected final k()Lcom/google/android/exoplayer2/b2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->formatHolder:Lcom/google/android/exoplayer2/b2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->a()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->formatHolder:Lcom/google/android/exoplayer2/b2;

    .line 8
    return-object v0
.end method

.method protected final l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->index:I

    return v0
.end method

.method protected final m()Lcom/google/android/exoplayer2/analytics/t1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/analytics/t1;

    .line 9
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/w0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w0;->maybeThrowError()V

    .line 12
    return-void
.end method

.method protected final n()[Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->streamFormats:[Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/android/exoplayer2/a2;

    .line 9
    return-object v0
.end method

.method protected final o()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->hasReadStreamToEnd()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/exoplayer2/source/w0;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w0;->isReady()Z

    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method protected p()V
    .locals 0

    .line 1
    return-void
.end method

.method protected q(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected r(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/f;->state:I

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->formatHolder:Lcom/google/android/exoplayer2/b2;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->a()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->s()V

    .line 19
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->x(JZ)V

    .line 5
    return-void
.end method

.method protected s()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/f;->state:I

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/f;->state:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->t()V

    .line 17
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/f;->state:I

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 13
    .line 14
    iput v2, p0, Lcom/google/android/exoplayer2/f;->state:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->u()V

    .line 18
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected t()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
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

.method protected v([Lcom/google/android/exoplayer2/a2;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected final w(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/w0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w0;->a(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

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
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/f;->streamIsFinal:Z

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
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/google/android/exoplayer2/f;->streamOffsetUs:J

    .line 37
    add-long/2addr v0, v2

    .line 38
    .line 39
    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 40
    .line 41
    iget-wide p1, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 45
    move-result-wide p1

    .line 46
    .line 47
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->readingPositionUs:J

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
    iget-object p2, p1, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Lcom/google/android/exoplayer2/a2;

    .line 60
    .line 61
    iget-wide v0, p2, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

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
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-wide v1, p2, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 77
    .line 78
    iget-wide v3, p0, Lcom/google/android/exoplayer2/f;->streamOffsetUs:J

    .line 79
    add-long/2addr v1, v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/a2$b;->i0(J)Lcom/google/android/exoplayer2/a2$b;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iput-object p2, p1, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    .line 90
    :cond_3
    :goto_1
    return p3
.end method

.method protected y(J)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->stream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/w0;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/google/android/exoplayer2/f;->streamOffsetUs:J

    .line 11
    sub-long/2addr p1, v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w0;->skipData(J)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method
