.class public Lcom/narvii/chat/audio/Resampler;
.super Ljava/lang/Object;
.source "Resampler.java"


# instance fields
.field private ctx:J

.field private outbuf:[S

.field private outlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "resampler"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/narvii/chat/audio/ResamplerException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [S

    .line 23
    iput-object v0, p0, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    .line 27
    invoke-static {p1, p2, p3, p4}, Lcom/narvii/chat/audio/Resampler;->init(IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    .line 28
    iget-wide p1, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Lcom/narvii/chat/audio/ResamplerException;

    invoke-static {}, Lcom/narvii/chat/audio/Resampler;->err()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/audio/ResamplerException;-><init>(I)V

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

    .line 41
    iget-object v0, p0, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 34
    :try_start_0
    iget-wide v0, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    invoke-static {v0, v1}, Lcom/narvii/chat/audio/Resampler;->destory(J)V

    .line 36
    iput-wide v2, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    iget-wide v0, p0, Lcom/narvii/chat/audio/Resampler;->ctx:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 76
    invoke-static {v0, v1}, Lcom/narvii/chat/audio/Resampler;->destory(J)V

    .line 78
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public length()I
    .locals 1

    .line 45
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

    move-object/from16 v1, p0

    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v2, v1, Lcom/narvii/chat/audio/Resampler;->ctx:J

    const/4 v0, 0x2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    .line 53
    iput v2, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    move/from16 v15, p2

    move/from16 v3, p3

    :goto_0
    if-lez v3, :cond_2

    .line 55
    iget v6, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    iget-object v7, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 56
    iget-object v6, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [S

    .line 57
    iget-object v7, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    iget-object v8, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    array-length v8, v8

    invoke-static {v7, v2, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v6, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    .line 60
    :cond_0
    iget-wide v6, v1, Lcom/narvii/chat/audio/Resampler;->ctx:J

    const/4 v8, 0x0

    iget-object v12, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    iget v13, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    iget-object v9, v1, Lcom/narvii/chat/audio/Resampler;->outbuf:[S

    array-length v9, v9

    iget v10, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    sub-int v14, v9, v10

    move-object/from16 v9, p1

    move v10, v15

    move v11, v3

    invoke-static/range {v6 .. v14}, Lcom/narvii/chat/audio/Resampler;->process(JI[SII[SII)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    const/16 v8, 0x20

    ushr-long v8, v6, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-int v9, v8

    and-long/2addr v6, v10

    long-to-int v7, v6

    .line 66
    iget v6, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I

    add-int/2addr v15, v9

    sub-int/2addr v3, v9

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/narvii/chat/audio/ResamplerException;

    invoke-static {}, Lcom/narvii/chat/audio/Resampler;->err()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/narvii/chat/audio/ResamplerException;-><init>(I)V

    throw v0

    .line 70
    :cond_2
    iget v0, v1, Lcom/narvii/chat/audio/Resampler;->outlen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 50
    :cond_3
    :try_start_1
    new-instance v2, Lcom/narvii/chat/audio/ResamplerException;

    invoke-direct {v2, v0}, Lcom/narvii/chat/audio/ResamplerException;-><init>(I)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
