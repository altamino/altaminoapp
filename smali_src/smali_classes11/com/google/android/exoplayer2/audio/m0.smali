.class public final Lcom/google/android/exoplayer2/audio/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/g;


# static fields
.field private static final CLOSE_THRESHOLD:F = 1.0E-4f

.field private static final MIN_BYTES_FOR_DURATION_SCALING_CALCULATION:I = 0x400

.field public static final SAMPLE_RATE_NO_CHANGE:I = -0x1


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private inputBytes:J

.field private inputEnded:Z

.field private outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private pendingOutputSampleRate:I

.field private pendingSonicRecreation:Z

.field private pitch:F

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Lcom/google/android/exoplayer2/audio/l0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pitch:F

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 20
    .line 21
    sget-object v0, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 32
    const/4 v0, -0x1

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputSampleRate:I

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/audio/g$a;)Lcom/google/android/exoplayer2/audio/g$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/g$b;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/audio/g$a;->encoding:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputSampleRate:I

    .line 8
    const/4 v2, -0x1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/exoplayer2/audio/g$a;

    .line 17
    .line 18
    iget p1, p1, Lcom/google/android/exoplayer2/audio/g$a;->channelCount:I

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/g$a;-><init>(III)V

    .line 22
    .line 23
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 24
    const/4 p1, 0x1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingSonicRecreation:Z

    .line 27
    return-object v2

    .line 28
    .line 29
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/g$b;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/g$b;-><init>(Lcom/google/android/exoplayer2/audio/g$a;)V

    .line 33
    throw v0
.end method

.method public b(J)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 4
    .line 5
    const-wide/16 v3, 0x400

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-ltz v1, :cond_1

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/m0;->inputBytes:J

    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    check-cast v3, Lcom/google/android/exoplayer2/audio/l0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/l0;->l()I

    .line 23
    move-result v3

    .line 24
    int-to-long v3, v3

    .line 25
    .line 26
    sub-long v7, v1, v3

    .line 27
    .line 28
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/m0;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 29
    .line 30
    iget v1, v1, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 31
    .line 32
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/m0;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 33
    .line 34
    iget v2, v2, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 35
    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 39
    .line 40
    move-wide/from16 v5, p1

    .line 41
    .line 42
    .line 43
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    .line 44
    move-result-wide v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    int-to-long v3, v1

    .line 47
    .line 48
    mul-long v11, v7, v3

    .line 49
    .line 50
    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 51
    int-to-long v1, v2

    .line 52
    .line 53
    mul-long v13, v3, v1

    .line 54
    .line 55
    move-wide/from16 v9, p1

    .line 56
    .line 57
    .line 58
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    .line 59
    move-result-wide v1

    .line 60
    :goto_0
    return-wide v1

    .line 61
    .line 62
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    .line 63
    float-to-double v1, v1

    .line 64
    .line 65
    move-wide/from16 v3, p1

    .line 66
    long-to-double v3, v3

    .line 67
    mul-double/2addr v1, v3

    .line 68
    double-to-long v1, v1

    .line 69
    return-wide v1
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pitch:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/m0;->pitch:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingSonicRecreation:Z

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingSonicRecreation:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/m0;->isActive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingSonicRecreation:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/google/android/exoplayer2/audio/l0;

    .line 21
    .line 22
    iget v4, v0, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 23
    .line 24
    iget v5, v0, Lcom/google/android/exoplayer2/audio/g$a;->channelCount:I

    .line 25
    .line 26
    iget v6, p0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    .line 27
    .line 28
    iget v7, p0, Lcom/google/android/exoplayer2/audio/m0;->pitch:F

    .line 29
    .line 30
    iget v8, v1, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 31
    move-object v3, v2

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/l0;-><init>(IIFFI)V

    .line 35
    .line 36
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/l0;->i()V

    .line 45
    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputBytes:J

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputEnded:Z

    .line 58
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/l0;->k()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 50
    .line 51
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/m0;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/l0;->j(Ljava/nio/ShortBuffer;)V

    .line 55
    .line 56
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 57
    int-to-long v4, v1

    .line 58
    add-long/2addr v2, v4

    .line 59
    .line 60
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 76
    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3
    .line 4
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    sub-float/2addr v0, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    const v2, 0x38d1b717    # 1.0E-4f

    .line 20
    .line 21
    cmpl-float v0, v0, v2

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pitch:F

    .line 26
    sub-float/2addr v0, v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 30
    move-result v0

    .line 31
    .line 32
    cmpl-float v0, v0, v2

    .line 33
    .line 34
    if-gez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 37
    .line 38
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 41
    .line 42
    iget v1, v1, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 43
    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputEnded:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/l0;->k()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/l0;->s()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputEnded:Z

    .line 11
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/exoplayer2/audio/l0;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 23
    move-result v2

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/m0;->inputBytes:J

    .line 26
    int-to-long v5, v2

    .line 27
    add-long/2addr v3, v5

    .line 28
    .line 29
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/m0;->inputBytes:J

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/l0;->t(Ljava/nio/ShortBuffer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/audio/m0;->speed:F

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pitch:F

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->buffer:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 29
    const/4 v0, -0x1

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingOutputSampleRate:I

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/m0;->pendingSonicRecreation:Z

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->sonic:Lcom/google/android/exoplayer2/audio/l0;

    .line 38
    .line 39
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/m0;->inputBytes:J

    .line 42
    .line 43
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/m0;->outputBytes:J

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/m0;->inputEnded:Z

    .line 46
    return-void
.end method
