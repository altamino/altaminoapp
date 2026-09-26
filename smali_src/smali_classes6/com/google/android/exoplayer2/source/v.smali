.class public final Lcom/google/android/exoplayer2/source/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/y;
.implements Lcom/google/android/exoplayer2/source/y$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/v$a;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/b;

.field private callback:Lcom/google/android/exoplayer2/source/y$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final id:Lcom/google/android/exoplayer2/source/b0$b;

.field private listener:Lcom/google/android/exoplayer2/source/v$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaPeriod:Lcom/google/android/exoplayer2/source/y;

.field private mediaSource:Lcom/google/android/exoplayer2/source/b0;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private final preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v;->allocator:Lcom/google/android/exoplayer2/upstream/b;

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionUs:J

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionOverrideUs:J

    .line 17
    return-void
.end method

.method private i(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/b0$b;)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionUs:J

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/v;->i(J)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/v;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Lcom/google/android/exoplayer2/source/b0;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v;->allocator:Lcom/google/android/exoplayer2/upstream/b;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/b0;->c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/v;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/y;->f(Lcom/google/android/exoplayer2/source/y$a;J)V

    .line 30
    :cond_0
    return-void
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/s;[Z[Lcom/google/android/exoplayer2/source/w0;[ZJ)J
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/v;->preparePositionOverrideUs:J

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/v;->preparePositionUs:J

    .line 15
    .line 16
    cmp-long v5, p5, v5

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/v;->preparePositionOverrideUs:J

    .line 21
    move-wide v11, v1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    move-wide/from16 v11, p5

    .line 25
    .line 26
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    move-object v6, v1

    .line 32
    .line 33
    check-cast v6, Lcom/google/android/exoplayer2/source/y;

    .line 34
    move-object v7, p1

    .line 35
    move-object v8, p2

    .line 36
    .line 37
    move-object/from16 v9, p3

    .line 38
    .line 39
    move-object/from16 v10, p4

    .line 40
    .line 41
    .line 42
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/y;->b([Lcom/google/android/exoplayer2/trackselection/s;[Z[Lcom/google/android/exoplayer2/source/w0;[ZJ)J

    .line 43
    move-result-wide v1

    .line 44
    return-wide v1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/source/x0;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/v;->j(Lcom/google/android/exoplayer2/source/y;)V

    .line 6
    return-void
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->continueLoading(J)Z

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

.method public d(Lcom/google/android/exoplayer2/source/y;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/source/y$a;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/y$a;->d(Lcom/google/android/exoplayer2/source/y;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v;->listener:Lcom/google/android/exoplayer2/source/v$a;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/v$a;->b(Lcom/google/android/exoplayer2/source/b0$b;)V

    .line 21
    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/y;->discardBuffer(JZ)V

    .line 12
    return-void
.end method

.method public e(JLcom/google/android/exoplayer2/r3;)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/y;->e(JLcom/google/android/exoplayer2/r3;)J

    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public f(Lcom/google/android/exoplayer2/source/y$a;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionUs:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/v;->i(J)J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/y;->f(Lcom/google/android/exoplayer2/source/y$a;J)V

    .line 16
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionOverrideUs:J

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->getBufferedPositionUs()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->getNextLoadPositionUs()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/h1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->getTrackGroups()Lcom/google/android/exoplayer2/source/h1;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionUs:J

    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->isLoading()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/source/y;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/source/y$a;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/x0$a;->c(Lcom/google/android/exoplayer2/source/x0;)V

    .line 12
    return-void
.end method

.method public k(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v;->preparePositionOverrideUs:J

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/exoplayer2/source/b0;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/b0;->f(Lcom/google/android/exoplayer2/source/y;)V

    .line 18
    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 13
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->maybeThrowPrepareError()V

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v;->listener:Lcom/google/android/exoplayer2/source/v$a;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/v;->notifiedPrepareError:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/v;->notifiedPrepareError:Z

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/v;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/v$a;->a(Lcom/google/android/exoplayer2/source/b0$b;Ljava/io/IOException;)V

    .line 35
    :cond_1
    :goto_1
    return-void

    .line 36
    :cond_2
    throw v0
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->readDiscontinuity()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->reevaluateBuffer(J)V

    .line 12
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->seekToUs(J)J

    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method
