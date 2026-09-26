.class final Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SourceFile"


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    sput v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 4
    return-void
.end method

.method private static h(ILjava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    .line 6
    int-to-double v2, p0

    .line 7
    mul-double/2addr v2, v0

    .line 8
    double-to-float p0, v2

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 12
    move-result p0

    .line 13
    .line 14
    sget v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 21
    move-result p0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
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
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Util;->B0(I)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 14
    .line 15
    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 16
    .line 17
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2, p1, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 24
    :goto_0
    return-object v0

    .line 25
    .line 26
    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 30
    throw v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 8
    move-result v1

    .line 9
    .line 10
    sub-int v2, v1, v0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 13
    .line 14
    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 15
    .line 16
    const/high16 v4, 0x20000000

    .line 17
    .line 18
    if-eq v3, v4, :cond_1

    .line 19
    .line 20
    const/high16 v4, 0x30000000

    .line 21
    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->g(I)Ljava/nio/ByteBuffer;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    :goto_0
    if-ge v0, v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 32
    move-result v3

    .line 33
    .line 34
    and-int/lit16 v3, v3, 0xff

    .line 35
    .line 36
    add-int/lit8 v4, v0, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 40
    move-result v4

    .line 41
    .line 42
    and-int/lit16 v4, v4, 0xff

    .line 43
    .line 44
    shl-int/lit8 v4, v4, 0x8

    .line 45
    or-int/2addr v3, v4

    .line 46
    .line 47
    add-int/lit8 v4, v0, 0x2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 51
    move-result v4

    .line 52
    .line 53
    and-int/lit16 v4, v4, 0xff

    .line 54
    .line 55
    shl-int/lit8 v4, v4, 0x10

    .line 56
    or-int/2addr v3, v4

    .line 57
    .line 58
    add-int/lit8 v4, v0, 0x3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 62
    move-result v4

    .line 63
    .line 64
    and-int/lit16 v4, v4, 0xff

    .line 65
    .line 66
    shl-int/lit8 v4, v4, 0x18

    .line 67
    or-int/2addr v3, v4

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->h(ILjava/nio/ByteBuffer;)V

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x4

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 79
    throw p1

    .line 80
    .line 81
    :cond_1
    div-int/lit8 v2, v2, 0x3

    .line 82
    .line 83
    mul-int/lit8 v2, v2, 0x4

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->g(I)Ljava/nio/ByteBuffer;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    :goto_1
    if-ge v0, v1, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 93
    move-result v3

    .line 94
    .line 95
    and-int/lit16 v3, v3, 0xff

    .line 96
    .line 97
    shl-int/lit8 v3, v3, 0x8

    .line 98
    .line 99
    add-int/lit8 v4, v0, 0x1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 103
    move-result v4

    .line 104
    .line 105
    and-int/lit16 v4, v4, 0xff

    .line 106
    .line 107
    shl-int/lit8 v4, v4, 0x10

    .line 108
    or-int/2addr v3, v4

    .line 109
    .line 110
    add-int/lit8 v4, v0, 0x2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 114
    move-result v4

    .line 115
    .line 116
    and-int/lit16 v4, v4, 0xff

    .line 117
    .line 118
    shl-int/lit8 v4, v4, 0x18

    .line 119
    or-int/2addr v3, v4

    .line 120
    .line 121
    .line 122
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->h(ILjava/nio/ByteBuffer;)V

    .line 123
    .line 124
    add-int/lit8 v0, v0, 0x3

    .line 125
    goto :goto_1

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 129
    move-result v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 136
    return-void
.end method
