.class public Lcom/narvii/chat/audio/Resampler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctx:J

.field private outbuf:[S

.field private outlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "resampler"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/narvii/chat/audio/ResamplerException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x400

    .line 6
    .line 7
    new-array v0, v0, [S

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, p3, p4}, Lcom/narvii/chat/audio/Resampler;->init(IIII)J

    .line 13
    move-result-wide p1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    .line 16
    .line 17
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    cmp-long p1, p1, p3

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    new-instance p1, Lcom/narvii/chat/audio/ResamplerException;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/chat/audio/Resampler;->err()I

    .line 28
    move-result p2

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/narvii/chat/audio/ResamplerException;-><init>(I)V

    .line 32
    throw p1
.end method

.method private static native destory(J)V
.end method

.method private static native err()I
.end method

.method private static native init(IIII)J
.end method

.method private static native process(JI[SII[SII)J
.end method


# virtual methods
.method public buffer()[S
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/chat/audio/Resampler;->destory(J)V

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/chat/audio/Resampler;->destory(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    return-void
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/audio/Resampler;->outlen:I

    return v0
.end method

.method public declared-synchronized put([SII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/narvii/chat/audio/ResamplerException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    monitor-enter p0

    .line 4
    .line 5
    :try_start_0
    iget-wide v2, v1, Lcom/narvii/chat/audio/Resampler;->ctx:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v0, v2, v4

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput v0, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    .line 16
    .line 17
    move/from16 v3, p2

    .line 18
    .line 19
    move/from16 v15, p3

    .line 20
    .line 21
    :goto_0
    if-lez v15, :cond_2

    .line 22
    .line 23
    iget v6, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    .line 24
    .line 25
    iget-object v7, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    .line 26
    array-length v8, v7

    .line 27
    .line 28
    if-lt v6, v8, :cond_0

    .line 29
    array-length v6, v7

    .line 30
    mul-int/2addr v6, v2

    .line 31
    .line 32
    new-array v6, v6, [S

    .line 33
    array-length v8, v7

    .line 34
    .line 35
    .line 36
    invoke-static {v7, v0, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    iput-object v6, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_0
    :goto_1
    iget-wide v6, v1, Lcom/narvii/chat/audio/Resampler;->ctx:J

    .line 44
    const/4 v8, 0x0

    .line 45
    .line 46
    iget-object v12, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    .line 47
    .line 48
    iget v13, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    .line 49
    array-length v9, v12

    .line 50
    .line 51
    sub-int v14, v9, v13

    .line 52
    .line 53
    move-object/from16 v9, p1

    .line 54
    move v10, v3

    .line 55
    move v11, v15

    .line 56
    .line 57
    .line 58
    invoke-static/range {v6 .. v14}, Lcom/narvii/chat/audio/Resampler;->process(JI[SII[SII)J

    .line 59
    move-result-wide v6

    .line 60
    .line 61
    cmp-long v8, v6, v4

    .line 62
    .line 63
    if-lez v8, :cond_1

    .line 64
    .line 65
    const/16 v8, 0x20

    .line 66
    .line 67
    ushr-long v8, v6, v8

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const-wide v10, 0xffffffffL

    .line 73
    and-long/2addr v8, v10

    .line 74
    long-to-int v8, v8

    .line 75
    and-long/2addr v6, v10

    .line 76
    long-to-int v6, v6

    .line 77
    .line 78
    iget v7, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    .line 79
    add-int/2addr v7, v6

    .line 80
    .line 81
    iput v7, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    .line 82
    add-int/2addr v3, v8

    .line 83
    sub-int/2addr v15, v8

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_1
    new-instance v0, Lcom/narvii/chat/audio/ResamplerException;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/narvii/chat/audio/Resampler;->err()I

    .line 90
    move-result v2

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v2}, Lcom/narvii/chat/audio/ResamplerException;-><init>(I)V

    .line 94
    throw v0

    .line 95
    .line 96
    :cond_2
    iget v0, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    .line 98
    return v0

    .line 99
    .line 100
    :cond_3
    :try_start_1
    new-instance v0, Lcom/narvii/chat/audio/ResamplerException;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v2}, Lcom/narvii/chat/audio/ResamplerException;-><init>(I)V

    .line 104
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_2
    monitor-exit p0

    .line 106
    throw v0
.end method
