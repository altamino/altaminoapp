.class public final Landroidx/media3/common/audio/ChannelMixingAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final matrixByInputChannelCount:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/common/audio/ChannelMixingMatrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method protected c(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroidx/media3/common/audio/ChannelMixingMatrix;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/common/audio/ChannelMixingMatrix;->e()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_0
    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 29
    .line 30
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/common/audio/ChannelMixingMatrix;->d()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p1, v0, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 38
    return-object v2

    .line 39
    .line 40
    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 41
    .line 42
    const-string v1, "No mixing matrix for input channel count"

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 46
    throw v0

    .line 47
    .line 48
    :cond_2
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 52
    throw v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 5
    .line 6
    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/media3/common/audio/ChannelMixingMatrix;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/media3/common/audio/ChannelMixingMatrix;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 22
    move-result v1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 25
    .line 26
    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    .line 27
    div-int/2addr v1, v2

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 30
    .line 31
    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    .line 32
    mul-int/2addr v1, v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/BaseAudioProcessor;->g(I)Ljava/nio/ByteBuffer;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/audio/ChannelMixingMatrix;->b()I

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/audio/ChannelMixingMatrix;->d()I

    .line 44
    move-result v3

    .line 45
    .line 46
    new-array v4, v3, [F

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 50
    move-result v5

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    const/4 v5, 0x0

    .line 54
    move v6, v5

    .line 55
    .line 56
    :goto_0
    if-ge v6, v2, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 60
    move-result v7

    .line 61
    move v8, v5

    .line 62
    .line 63
    :goto_1
    if-ge v8, v3, :cond_1

    .line 64
    .line 65
    aget v9, v4, v8

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v6, v8}, Landroidx/media3/common/audio/ChannelMixingMatrix;->c(II)F

    .line 69
    move-result v10

    .line 70
    int-to-float v11, v7

    .line 71
    mul-float/2addr v10, v11

    .line 72
    add-float/2addr v9, v10

    .line 73
    .line 74
    aput v9, v4, v8

    .line 75
    .line 76
    add-int/lit8 v8, v8, 0x1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    :goto_2
    if-ge v5, v3, :cond_0

    .line 83
    .line 84
    aget v6, v4, v5

    .line 85
    .line 86
    const/high16 v7, -0x39000000    # -32768.0f

    .line 87
    .line 88
    .line 89
    const v8, 0x46fffe00    # 32767.0f

    .line 90
    .line 91
    .line 92
    invoke-static {v6, v7, v8}, Landroidx/media3/common/util/Util;->p(FFF)F

    .line 93
    move-result v6

    .line 94
    float-to-int v6, v6

    .line 95
    int-to-short v6, v6

    .line 96
    .line 97
    and-int/lit16 v7, v6, 0xff

    .line 98
    int-to-byte v7, v7

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    shr-int/lit8 v6, v6, 0x8

    .line 104
    .line 105
    and-int/lit16 v6, v6, 0xff

    .line 106
    int-to-byte v6, v6

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    const/4 v6, 0x0

    .line 111
    .line 112
    aput v6, v4, v5

    .line 113
    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 119
    return-void
.end method
