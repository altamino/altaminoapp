.class final Lcom/google/android/exoplayer2/audio/c0$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field public final availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

.field public final bufferSize:I

.field public final inputFormat:Lcom/google/android/exoplayer2/a2;

.field public final inputPcmFrameSize:I

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputMode:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a2;IIIIIII[Lcom/google/android/exoplayer2/audio/g;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputPcmFrameSize:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 12
    .line 13
    iput p5, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 14
    .line 15
    iput p6, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 16
    .line 17
    iput p7, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 18
    .line 19
    iput p8, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 20
    .line 21
    iput-object p9, p0, Lcom/google/android/exoplayer2/audio/c0$h;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 22
    return-void
.end method

.method private d(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
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
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/c0$h;->f(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x15

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/c0$h;->e(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/c0$h;->g(Lcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private e(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/c0$h;->i(Lcom/google/android/exoplayer2/audio/e;Z)Landroid/media/AudioAttributes;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 9
    .line 10
    iget p2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/audio/c0;->s(III)Landroid/media/AudioFormat;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 19
    const/4 v4, 0x1

    .line 20
    move-object v0, v6

    .line 21
    move v5, p3

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 25
    return-object v6
.end method

.method private f(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/c0;->s(III)Landroid/media/AudioFormat;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/c0$h;->i(Lcom/google/android/exoplayer2/audio/e;Z)Landroid/media/AudioAttributes;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance p2, Landroid/media/AudioTrack$Builder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget p3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 45
    .line 46
    if-ne p3, p2, :cond_0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p2, 0x0

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/x;->a(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method private g(Lcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 8

    .line 1
    .line 2
    iget p1, p1, Lcom/google/android/exoplayer2/audio/e;->usage:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->a0(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/media/AudioTrack;

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 13
    .line 14
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 15
    .line 16
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 17
    .line 18
    iget v5, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 19
    const/4 v6, 0x1

    .line 20
    move-object v0, p1

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Landroid/media/AudioTrack;

    .line 27
    .line 28
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 29
    .line 30
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 31
    .line 32
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 33
    .line 34
    iget v5, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 35
    const/4 v6, 0x1

    .line 36
    move-object v0, p1

    .line 37
    move v7, p2

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 41
    return-object p1
.end method

.method private static i(Lcom/google/android/exoplayer2/audio/e;Z)Landroid/media/AudioAttributes;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/audio/c0$h;->j()Landroid/media/AudioAttributes;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/e;->b()Lcom/google/android/exoplayer2/audio/e$d;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/e$d;->audioAttributes:Landroid/media/AudioAttributes;

    .line 14
    return-object p0
.end method

.method private static j()Landroid/media/AudioAttributes;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    const/4 v1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method


# virtual methods
.method public a(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$b;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/c0$h;->d(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    .line 8
    move-result v1

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    if-ne v1, p2, :cond_0

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    :catch_0
    new-instance p1, Lcom/google/android/exoplayer2/audio/v$b;

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 20
    .line 21
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 22
    .line 23
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0$h;->l()Z

    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v0, p1

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/v$b;-><init>(IIIILcom/google/android/exoplayer2/a2;ZLjava/lang/Exception;)V

    .line 35
    throw p1

    .line 36
    :catch_1
    move-exception p1

    .line 37
    :goto_0
    move-object v7, p1

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/audio/v$b;

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 46
    .line 47
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 48
    .line 49
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0$h;->bufferSize:I

    .line 50
    .line 51
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c0$h;->l()Z

    .line 55
    move-result v6

    .line 56
    move-object v0, p1

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/v$b;-><init>(IIIILcom/google/android/exoplayer2/a2;ZLjava/lang/Exception;)V

    .line 60
    throw p1
.end method

.method public b(Lcom/google/android/exoplayer2/audio/c0$h;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p1, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 15
    .line 16
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget v0, p1, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget p1, p1, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public c(I)Lcom/google/android/exoplayer2/audio/c0$h;
    .locals 11

    .line 1
    .line 2
    new-instance v10, Lcom/google/android/exoplayer2/audio/c0$h;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputPcmFrameSize:I

    .line 7
    .line 8
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    .line 9
    .line 10
    iget v4, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputPcmFrameSize:I

    .line 11
    .line 12
    iget v5, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 13
    .line 14
    iget v6, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputChannelConfig:I

    .line 15
    .line 16
    iget v7, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputEncoding:I

    .line 17
    .line 18
    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/c0$h;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    .line 19
    move-object v0, v10

    .line 20
    move v8, p1

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/audio/c0$h;-><init>(Lcom/google/android/exoplayer2/a2;IIIIIII[Lcom/google/android/exoplayer2/audio/g;)V

    .line 24
    return-object v10
.end method

.method public h(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    mul-long/2addr p1, v0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputSampleRate:I

    .line 7
    int-to-long v0, v0

    .line 8
    div-long/2addr p1, v0

    .line 9
    return-wide p1
.end method

.method public k(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    mul-long/2addr p1, v0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 7
    .line 8
    iget v0, v0, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 9
    int-to-long v0, v0

    .line 10
    div-long/2addr p1, v0

    .line 11
    return-wide p1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/c0$h;->outputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
