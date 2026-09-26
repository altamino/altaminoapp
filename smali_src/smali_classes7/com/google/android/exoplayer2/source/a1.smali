.class final Lcom/google/android/exoplayer2/source/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/y;
.implements Lcom/google/android/exoplayer2/upstream/g0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/a1$c;,
        Lcom/google/android/exoplayer2/source/a1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/y;",
        "Lcom/google/android/exoplayer2/upstream/g0$b<",
        "Lcom/google/android/exoplayer2/source/a1$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_SAMPLE_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SingleSampleMediaPeriod"


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/o;

.field private final durationUs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

.field final format:Lcom/google/android/exoplayer2/a2;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field final loader:Lcom/google/android/exoplayer2/upstream/g0;

.field loadingFinished:Z

.field sampleData:[B

.field sampleSize:I

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/a1$b;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Lcom/google/android/exoplayer2/source/h1;

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/m0;Lcom/google/android/exoplayer2/a2;JLcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Z)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a1;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a1;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a1;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/a1;->durationUs:J

    .line 14
    .line 15
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/a1;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 18
    .line 19
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/a1;->treatLoadErrorsAsEndOfStream:Z

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/source/h1;

    .line 22
    const/4 p2, 0x1

    .line 23
    .line 24
    new-array p3, p2, [Lcom/google/android/exoplayer2/source/f1;

    .line 25
    .line 26
    new-instance p5, Lcom/google/android/exoplayer2/source/f1;

    .line 27
    .line 28
    new-array p2, p2, [Lcom/google/android/exoplayer2/a2;

    .line 29
    const/4 p6, 0x0

    .line 30
    .line 31
    aput-object p4, p2, p6

    .line 32
    .line 33
    .line 34
    invoke-direct {p5, p2}, Lcom/google/android/exoplayer2/source/f1;-><init>([Lcom/google/android/exoplayer2/a2;)V

    .line 35
    .line 36
    aput-object p5, p3, p6

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/h1;-><init>([Lcom/google/android/exoplayer2/source/f1;)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a1;->tracks:Lcom/google/android/exoplayer2/source/h1;

    .line 42
    .line 43
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a1;->sampleStreams:Ljava/util/ArrayList;

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/exoplayer2/upstream/g0;

    .line 51
    .line 52
    const-string p2, "SingleSampleMediaPeriod"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/g0;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/a1;)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/a1;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    return-object p0
.end method


# virtual methods
.method public b([Lcom/google/android/exoplayer2/trackselection/s;[Z[Lcom/google/android/exoplayer2/source/w0;[ZJ)J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    .line 4
    if-ge v0, v1, :cond_3

    .line 5
    .line 6
    aget-object v1, p3, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v0

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    aget-boolean v3, p2, v0

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/a1;->sampleStreams:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    aput-object v2, p3, v0

    .line 25
    .line 26
    :cond_1
    aget-object v1, p3, v0

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Lcom/google/android/exoplayer2/source/a1$b;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/a1$b;-><init>(Lcom/google/android/exoplayer2/source/a1;Lcom/google/android/exoplayer2/source/a1$a;)V

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a1;->sampleStreams:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    aput-object v1, p3, v0

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    aput-boolean v1, p4, v0

    .line 48
    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-wide p5
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/upstream/g0$e;JJZ)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/a1$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/a1;->h(Lcom/google/android/exoplayer2/source/a1$c;JJZ)V

    .line 6
    return-void
.end method

.method public continueLoading(J)Z
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/g0;->h()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/a1;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a1;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/k;->b(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 37
    .line 38
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/a1$c;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a1;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/a1$c;-><init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/k;)V

    .line 44
    .line 45
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 48
    const/4 v4, 0x1

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->b(I)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/g0;->n(Lcom/google/android/exoplayer2/upstream/g0$e;Lcom/google/android/exoplayer2/upstream/g0$b;I)J

    .line 56
    move-result-wide v9

    .line 57
    .line 58
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/a1;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 59
    .line 60
    new-instance v12, Lcom/google/android/exoplayer2/source/u;

    .line 61
    .line 62
    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 63
    .line 64
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/a1;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 65
    move-object v5, v12

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;J)V

    .line 69
    const/4 v13, 0x1

    .line 70
    const/4 v14, -0x1

    .line 71
    .line 72
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const-wide/16 v18, 0x0

    .line 79
    .line 80
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/a1;->durationUs:J

    .line 81
    .line 82
    move-wide/from16 v20, v1

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {v11 .. v21}, Lcom/google/android/exoplayer2/source/h0$a;->u(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 86
    return v4

    .line 87
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 88
    return v1
.end method

.method public bridge synthetic d(Lcom/google/android/exoplayer2/upstream/g0$e;JJ)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/a1$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/a1;->i(Lcom/google/android/exoplayer2/source/a1$c;JJ)V

    .line 6
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    return-void
.end method

.method public e(JLcom/google/android/exoplayer2/r3;)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public f(Lcom/google/android/exoplayer2/source/y$a;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/y$a;->d(Lcom/google/android/exoplayer2/source/y;)V

    .line 4
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/upstream/g0$e;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/g0$c;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/a1$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/a1;->j(Lcom/google/android/exoplayer2/source/a1$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 19
    :goto_1
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/h1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1;->tracks:Lcom/google/android/exoplayer2/source/h1;

    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/source/a1$c;JJZ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a1$c;->a(Lcom/google/android/exoplayer2/source/a1$c;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    new-instance v15, Lcom/google/android/exoplayer2/source/u;

    .line 11
    .line 12
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 13
    .line 14
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/a1$c;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/l0;->e()Landroid/net/Uri;

    .line 18
    move-result-object v7

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/l0;->f()Ljava/util/Map;

    .line 22
    move-result-object v8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/l0;->d()J

    .line 26
    move-result-wide v13

    .line 27
    move-object v3, v15

    .line 28
    .line 29
    move-wide/from16 v9, p2

    .line 30
    .line 31
    move-wide/from16 v11, p4

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 37
    .line 38
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->a(J)V

    .line 42
    .line 43
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a1;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v6, -0x1

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    .line 50
    const-wide/16 v10, 0x0

    .line 51
    .line 52
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a1;->durationUs:J

    .line 53
    move-object v4, v15

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/h0$a;->o(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 57
    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/a1$c;JJ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a1$c;->a(Lcom/google/android/exoplayer2/source/a1$c;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/l0;->d()J

    .line 12
    move-result-wide v2

    .line 13
    long-to-int v2, v2

    .line 14
    .line 15
    iput v2, v0, Lcom/google/android/exoplayer2/source/a1;->sampleSize:I

    .line 16
    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a1$c;->b(Lcom/google/android/exoplayer2/source/a1$c;)[B

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, [B

    .line 26
    .line 27
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/a1;->sampleData:[B

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a1$c;->a(Lcom/google/android/exoplayer2/source/a1$c;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    new-instance v15, Lcom/google/android/exoplayer2/source/u;

    .line 37
    .line 38
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 39
    .line 40
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/a1$c;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/l0;->e()Landroid/net/Uri;

    .line 44
    move-result-object v7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/l0;->f()Ljava/util/Map;

    .line 48
    move-result-object v8

    .line 49
    .line 50
    iget v2, v0, Lcom/google/android/exoplayer2/source/a1;->sampleSize:I

    .line 51
    int-to-long v13, v2

    .line 52
    move-object v3, v15

    .line 53
    .line 54
    move-wide/from16 v9, p2

    .line 55
    .line 56
    move-wide/from16 v11, p4

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 60
    .line 61
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 62
    .line 63
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->a(J)V

    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a1;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 69
    const/4 v5, 0x1

    .line 70
    const/4 v6, -0x1

    .line 71
    .line 72
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    .line 76
    const-wide/16 v10, 0x0

    .line 77
    .line 78
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a1;->durationUs:J

    .line 79
    move-object v4, v15

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/h0$a;->q(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 83
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/source/a1$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/g0$c;
    .locals 36

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v13, p6

    .line 7
    .line 8
    move/from16 v2, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a1$c;->a(Lcom/google/android/exoplayer2/source/a1$c;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    new-instance v4, Lcom/google/android/exoplayer2/source/u;

    .line 15
    .line 16
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 17
    .line 18
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/a1$c;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/l0;->e()Landroid/net/Uri;

    .line 22
    move-result-object v18

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/l0;->f()Ljava/util/Map;

    .line 26
    move-result-object v19

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/l0;->d()J

    .line 30
    move-result-wide v24

    .line 31
    move-object v14, v4

    .line 32
    move-wide v15, v5

    .line 33
    .line 34
    move-object/from16 v17, v7

    .line 35
    .line 36
    move-wide/from16 v20, p2

    .line 37
    .line 38
    move-wide/from16 v22, p4

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v14 .. v25}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 42
    .line 43
    new-instance v3, Lcom/google/android/exoplayer2/source/x;

    .line 44
    .line 45
    const/16 v27, 0x1

    .line 46
    .line 47
    const/16 v28, -0x1

    .line 48
    .line 49
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 50
    .line 51
    const/16 v30, 0x0

    .line 52
    .line 53
    const/16 v31, 0x0

    .line 54
    .line 55
    const-wide/16 v32, 0x0

    .line 56
    .line 57
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/a1;->durationUs:J

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 61
    move-result-wide v34

    .line 62
    .line 63
    move-object/from16 v26, v3

    .line 64
    .line 65
    move-object/from16 v29, v5

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v26 .. v35}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 69
    .line 70
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 71
    .line 72
    new-instance v6, Lcom/google/android/exoplayer2/upstream/f0$a;

    .line 73
    .line 74
    .line 75
    invoke-direct {v6, v4, v3, v13, v2}, Lcom/google/android/exoplayer2/upstream/f0$a;-><init>(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/upstream/f0;->c(Lcom/google/android/exoplayer2/upstream/f0$a;)J

    .line 79
    move-result-wide v5

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    .line 86
    cmp-long v3, v5, v7

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x1

    .line 89
    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 93
    .line 94
    .line 95
    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/upstream/f0;->b(I)I

    .line 96
    move-result v9

    .line 97
    .line 98
    if-lt v2, v9, :cond_0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v2, v7

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    move v2, v8

    .line 103
    .line 104
    :goto_1
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/source/a1;->treatLoadErrorsAsEndOfStream:Z

    .line 105
    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    const-string v2, "SingleSampleMediaPeriod"

    .line 111
    .line 112
    const-string v3, "Loading failed, treating as end-of-stream."

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3, v13}, Lcom/google/android/exoplayer2/util/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    .line 118
    .line 119
    sget-object v2, Lcom/google/android/exoplayer2/upstream/g0;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 120
    :goto_2
    move-object v15, v2

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :cond_2
    if-eqz v3, :cond_3

    .line 124
    .line 125
    .line 126
    invoke-static {v7, v5, v6}, Lcom/google/android/exoplayer2/upstream/g0;->g(ZJ)Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 127
    move-result-object v2

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/upstream/g0;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 131
    goto :goto_2

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/upstream/g0$c;->c()Z

    .line 135
    move-result v2

    .line 136
    .line 137
    xor-int/lit8 v16, v2, 0x1

    .line 138
    .line 139
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a1;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 140
    const/4 v5, 0x1

    .line 141
    const/4 v6, -0x1

    .line 142
    .line 143
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    .line 147
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/a1;->durationUs:J

    .line 148
    move-object v3, v4

    .line 149
    move v4, v5

    .line 150
    move v5, v6

    .line 151
    move-object v6, v7

    .line 152
    move v7, v8

    .line 153
    move-object v8, v9

    .line 154
    move-wide v11, v10

    .line 155
    .line 156
    const-wide/16 v9, 0x0

    .line 157
    .line 158
    move-object/from16 v13, p6

    .line 159
    .line 160
    move/from16 v14, v16

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/h0$a;->s(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 164
    .line 165
    if-eqz v16, :cond_4

    .line 166
    .line 167
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 168
    .line 169
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/a1$c;->loadTaskId:J

    .line 170
    .line 171
    .line 172
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->a(J)V

    .line 173
    :cond_4
    return-object v15
.end method

.method public k()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->l()V

    .line 6
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a1;->sampleStreams:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a1;->sampleStreams:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/source/a1$b;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/a1$b;->c()V

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide p1
.end method
