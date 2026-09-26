.class public final Lcom/google/android/exoplayer2/extractor/mkv/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field private blockAddIdType:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/google/android/exoplayer2/extractor/e0$a;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/e0;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->width:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->height:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayWidth:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayHeight:I

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayUnit:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionType:I

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPoseYaw:F

    .line 21
    .line 22
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPosePitch:F

    .line 23
    .line 24
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPoseRoll:F

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionData:[B

    .line 28
    .line 29
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->stereoMode:I

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->hasColorInfo:Z

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->colorSpace:I

    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->colorTransfer:I

    .line 36
    .line 37
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->colorRange:I

    .line 38
    .line 39
    const/16 v1, 0x3e8

    .line 40
    .line 41
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxContentLuminance:I

    .line 42
    .line 43
    const/16 v1, 0xc8

    .line 44
    .line 45
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxFrameAverageLuminance:I

    .line 46
    .line 47
    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    .line 49
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryRChromaticityX:F

    .line 50
    .line 51
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryRChromaticityY:F

    .line 52
    .line 53
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryGChromaticityX:F

    .line 54
    .line 55
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryGChromaticityY:F

    .line 56
    .line 57
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryBChromaticityX:F

    .line 58
    .line 59
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryBChromaticityY:F

    .line 60
    .line 61
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->whitePointChromaticityX:F

    .line 62
    .line 63
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->whitePointChromaticityY:F

    .line 64
    .line 65
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxMasteringLuminance:F

    .line 66
    .line 67
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->minMasteringLuminance:F

    .line 68
    const/4 v1, 0x1

    .line 69
    .line 70
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->channelCount:I

    .line 71
    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 73
    .line 74
    const/16 v0, 0x1f40

    .line 75
    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->sampleRate:I

    .line 77
    .line 78
    const-wide/16 v2, 0x0

    .line 79
    .line 80
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecDelayNs:J

    .line 81
    .line 82
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->seekPreRollNs:J

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->flagDefault:Z

    .line 85
    .line 86
    const-string v0, "eng"

    .line 87
    .line 88
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->language:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mkv/e$c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->f()V

    .line 4
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/mkv/e$c;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->blockAddIdType:I

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/mkv/e$c;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->blockAddIdType:I

    .line 3
    return p1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/extractor/mkv/e$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->language:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/extractor/mkv/e$c;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->o(Z)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private f()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method private g(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecPrivate:[B

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "Missing CodecPrivate for codec "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 27
    move-result-object p1

    .line 28
    throw p1
.end method

.method private h()[B
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryRChromaticityX:F

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryRChromaticityY:F

    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryGChromaticityX:F

    .line 17
    .line 18
    cmpl-float v0, v0, v1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryGChromaticityY:F

    .line 23
    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryBChromaticityX:F

    .line 29
    .line 30
    cmpl-float v0, v0, v1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryBChromaticityY:F

    .line 35
    .line 36
    cmpl-float v0, v0, v1

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->whitePointChromaticityX:F

    .line 41
    .line 42
    cmpl-float v0, v0, v1

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->whitePointChromaticityY:F

    .line 47
    .line 48
    cmpl-float v0, v0, v1

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxMasteringLuminance:F

    .line 53
    .line 54
    cmpl-float v0, v0, v1

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->minMasteringLuminance:F

    .line 59
    .line 60
    cmpl-float v0, v0, v1

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    const/16 v0, 0x19

    .line 66
    .line 67
    new-array v0, v0, [B

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryRChromaticityX:F

    .line 84
    .line 85
    .line 86
    const v3, 0x47435000    # 50000.0f

    .line 87
    mul-float/2addr v2, v3

    .line 88
    .line 89
    const/high16 v4, 0x3f000000    # 0.5f

    .line 90
    add-float/2addr v2, v4

    .line 91
    float-to-int v2, v2

    .line 92
    int-to-short v2, v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryRChromaticityY:F

    .line 98
    mul-float/2addr v2, v3

    .line 99
    add-float/2addr v2, v4

    .line 100
    float-to-int v2, v2

    .line 101
    int-to-short v2, v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryGChromaticityX:F

    .line 107
    mul-float/2addr v2, v3

    .line 108
    add-float/2addr v2, v4

    .line 109
    float-to-int v2, v2

    .line 110
    int-to-short v2, v2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryGChromaticityY:F

    .line 116
    mul-float/2addr v2, v3

    .line 117
    add-float/2addr v2, v4

    .line 118
    float-to-int v2, v2

    .line 119
    int-to-short v2, v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryBChromaticityX:F

    .line 125
    mul-float/2addr v2, v3

    .line 126
    add-float/2addr v2, v4

    .line 127
    float-to-int v2, v2

    .line 128
    int-to-short v2, v2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->primaryBChromaticityY:F

    .line 134
    mul-float/2addr v2, v3

    .line 135
    add-float/2addr v2, v4

    .line 136
    float-to-int v2, v2

    .line 137
    int-to-short v2, v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->whitePointChromaticityX:F

    .line 143
    mul-float/2addr v2, v3

    .line 144
    add-float/2addr v2, v4

    .line 145
    float-to-int v2, v2

    .line 146
    int-to-short v2, v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->whitePointChromaticityY:F

    .line 152
    mul-float/2addr v2, v3

    .line 153
    add-float/2addr v2, v4

    .line 154
    float-to-int v2, v2

    .line 155
    int-to-short v2, v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxMasteringLuminance:F

    .line 161
    add-float/2addr v2, v4

    .line 162
    float-to-int v2, v2

    .line 163
    int-to-short v2, v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 167
    .line 168
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->minMasteringLuminance:F

    .line 169
    add-float/2addr v2, v4

    .line 170
    float-to-int v2, v2

    .line 171
    int-to-short v2, v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    .line 176
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxContentLuminance:I

    .line 177
    int-to-short v2, v2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxFrameAverageLuminance:I

    .line 183
    int-to-short v2, v2

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 187
    return-object v0

    .line 188
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 189
    return-object v0
.end method

.method private static k(Lcom/google/android/exoplayer2/util/c0;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->t()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    const-wide/32 v4, 0x58564944

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance p0, Landroid/util/Pair;

    .line 20
    .line 21
    const-string v0, "video/divx"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :cond_0
    const-wide/32 v4, 0x33363248

    .line 29
    .line 30
    cmp-long v0, v2, v4

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance p0, Landroid/util/Pair;

    .line 35
    .line 36
    const-string v0, "video/3gpp"

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-object p0

    .line 41
    .line 42
    .line 43
    :cond_1
    const-wide/32 v4, 0x31435657

    .line 44
    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 51
    move-result v0

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x14

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 57
    move-result-object p0

    .line 58
    :goto_0
    array-length v2, p0

    .line 59
    .line 60
    add-int/lit8 v2, v2, -0x4

    .line 61
    .line 62
    if-ge v0, v2, :cond_3

    .line 63
    .line 64
    aget-byte v2, p0, v0

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    add-int/lit8 v2, v0, 0x1

    .line 69
    .line 70
    aget-byte v2, p0, v2

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    add-int/lit8 v2, v0, 0x2

    .line 75
    .line 76
    aget-byte v2, p0, v2

    .line 77
    const/4 v3, 0x1

    .line 78
    .line 79
    if-ne v2, v3, :cond_2

    .line 80
    .line 81
    add-int/lit8 v2, v0, 0x3

    .line 82
    .line 83
    aget-byte v2, p0, v2

    .line 84
    .line 85
    const/16 v3, 0xf

    .line 86
    .line 87
    if-ne v2, v3, :cond_2

    .line 88
    array-length v2, p0

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 92
    move-result-object p0

    .line 93
    .line 94
    new-instance v0, Landroid/util/Pair;

    .line 95
    .line 96
    const-string v2, "video/wvc1"

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    return-object v0

    .line 105
    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_3
    const-string p0, "Failed to find FourCC VC1 initialization data"

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 113
    move-result-object p0

    .line 114
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    :cond_4
    const-string p0, "MatroskaExtractor"

    .line 117
    .line 118
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 119
    .line 120
    .line 121
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    new-instance p0, Landroid/util/Pair;

    .line 124
    .line 125
    const-string v0, "video/x-unknown"

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    return-object p0

    .line 130
    .line 131
    :catch_0
    const-string p0, "Error parsing FourCC private data"

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 135
    move-result-object p0

    .line 136
    throw p0
.end method

.method private static l(Lcom/google/android/exoplayer2/util/c0;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    const v2, 0xfffe

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-ne v0, v2, :cond_2

    .line 15
    .line 16
    const/16 v0, 0x18

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->w()J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->g()Ljava/util/UUID;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 31
    move-result-wide v6

    .line 32
    .line 33
    cmp-long v0, v4, v6

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->w()J

    .line 39
    move-result-wide v4

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->g()Ljava/util/UUID;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 47
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    cmp-long p0, v4, v6

    .line 50
    .line 51
    if-nez p0, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 55
    :cond_2
    return v3

    .line 56
    .line 57
    :catch_0
    const-string p0, "Error parsing MS/ACM codec private"

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 62
    move-result-object p0

    .line 63
    throw p0
.end method

.method private static m([B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Error parsing vorbis codec private"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :try_start_0
    aget-byte v3, p0, v2

    .line 7
    const/4 v4, 0x2

    .line 8
    .line 9
    if-ne v3, v4, :cond_5

    .line 10
    const/4 v3, 0x1

    .line 11
    move v6, v2

    .line 12
    move v5, v3

    .line 13
    .line 14
    :goto_0
    aget-byte v7, p0, v5

    .line 15
    .line 16
    and-int/lit16 v8, v7, 0xff

    .line 17
    .line 18
    const/16 v9, 0xff

    .line 19
    .line 20
    if-ne v8, v9, :cond_0

    .line 21
    .line 22
    add-int/lit16 v6, v6, 0xff

    .line 23
    .line 24
    add-int/lit8 v5, v5, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/2addr v5, v3

    .line 27
    and-int/2addr v7, v9

    .line 28
    add-int/2addr v6, v7

    .line 29
    move v7, v2

    .line 30
    .line 31
    :goto_1
    aget-byte v8, p0, v5

    .line 32
    .line 33
    and-int/lit16 v10, v8, 0xff

    .line 34
    .line 35
    if-ne v10, v9, :cond_1

    .line 36
    .line 37
    add-int/lit16 v7, v7, 0xff

    .line 38
    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/2addr v5, v3

    .line 42
    and-int/2addr v8, v9

    .line 43
    add-int/2addr v7, v8

    .line 44
    .line 45
    aget-byte v8, p0, v5

    .line 46
    .line 47
    if-ne v8, v3, :cond_4

    .line 48
    .line 49
    new-array v3, v6, [B

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    add-int/2addr v5, v6

    .line 54
    .line 55
    aget-byte v6, p0, v5

    .line 56
    const/4 v8, 0x3

    .line 57
    .line 58
    if-ne v6, v8, :cond_3

    .line 59
    add-int/2addr v5, v7

    .line 60
    .line 61
    aget-byte v6, p0, v5

    .line 62
    const/4 v7, 0x5

    .line 63
    .line 64
    if-ne v6, v7, :cond_2

    .line 65
    array-length v6, p0

    .line 66
    sub-int/2addr v6, v5

    .line 67
    .line 68
    new-array v6, v6, [B

    .line 69
    array-length v7, p0

    .line 70
    sub-int/2addr v7, v5

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    new-instance p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object p0

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 99
    move-result-object p0

    .line 100
    throw p0

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 104
    move-result-object p0

    .line 105
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 109
    move-result-object p0

    .line 110
    throw p0
.end method

.method private o(Z)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "A_OPUS"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->maxBlockAdditionId:I

    .line 14
    .line 15
    if-lez p1, :cond_1

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method


# virtual methods
.method public i(Lcom/google/android/exoplayer2/extractor/n;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    const/16 v3, 0x20

    .line 14
    .line 15
    const/16 v4, 0x10

    .line 16
    .line 17
    const/16 v7, 0x8

    .line 18
    const/4 v9, 0x3

    .line 19
    .line 20
    .line 21
    sparse-switch v2, :sswitch_data_0

    .line 22
    :goto_0
    const/4 v1, -0x1

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :sswitch_0
    const-string v2, "A_OPUS"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v3

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :sswitch_1
    const-string v2, "A_FLAC"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    const/16 v1, 0x1f

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :sswitch_2
    const-string v2, "A_EAC3"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    const/16 v1, 0x1e

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "V_MPEG2"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    const/16 v1, 0x1d

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_4
    const/16 v1, 0x1c

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_5
    const/16 v1, 0x1b

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-nez v1, :cond_6

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_6
    const/16 v1, 0x1a

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :sswitch_7
    const-string v2, "S_TEXT/ASS"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v1

    .line 121
    .line 122
    if-nez v1, :cond_7

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_7
    const/16 v1, 0x19

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :sswitch_8
    const-string v2, "A_PCM/INT/LIT"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-nez v1, :cond_8

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_8
    const/16 v1, 0x18

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_9
    const-string v2, "A_PCM/INT/BIG"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v1

    .line 147
    .line 148
    if-nez v1, :cond_9

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_9
    const/16 v1, 0x17

    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :sswitch_a
    const-string v2, "A_PCM/FLOAT/IEEE"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-nez v1, :cond_a

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_a
    const/16 v1, 0x16

    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :sswitch_b
    const-string v2, "A_DTS/EXPRESS"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v1

    .line 174
    .line 175
    if-nez v1, :cond_b

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_b
    const/16 v1, 0x15

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :sswitch_c
    const-string v2, "V_THEORA"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v1

    .line 188
    .line 189
    if-nez v1, :cond_c

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_c
    const/16 v1, 0x14

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :sswitch_d
    const-string v2, "S_HDMV/PGS"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v1

    .line 202
    .line 203
    if-nez v1, :cond_d

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_d
    const/16 v1, 0x13

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :sswitch_e
    const-string v2, "V_VP9"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result v1

    .line 216
    .line 217
    if-nez v1, :cond_e

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_e
    const/16 v1, 0x12

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :sswitch_f
    const-string v2, "V_VP8"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v1

    .line 230
    .line 231
    if-nez v1, :cond_f

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_f
    const/16 v1, 0x11

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :sswitch_10
    const-string v2, "V_AV1"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v1

    .line 244
    .line 245
    if-nez v1, :cond_10

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    :cond_10
    move v1, v4

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :sswitch_11
    const-string v2, "A_DTS"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    move-result v1

    .line 257
    .line 258
    if-nez v1, :cond_11

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_11
    const/16 v1, 0xf

    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :sswitch_12
    const-string v2, "A_AC3"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v1

    .line 271
    .line 272
    if-nez v1, :cond_12

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_12
    const/16 v1, 0xe

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :sswitch_13
    const-string v2, "A_AAC"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v1

    .line 285
    .line 286
    if-nez v1, :cond_13

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_13
    const/16 v1, 0xd

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :sswitch_14
    const-string v2, "A_DTS/LOSSLESS"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    move-result v1

    .line 299
    .line 300
    if-nez v1, :cond_14

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_14
    const/16 v1, 0xc

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :sswitch_15
    const-string v2, "S_VOBSUB"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    move-result v1

    .line 313
    .line 314
    if-nez v1, :cond_15

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_15
    const/16 v1, 0xb

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :sswitch_16
    const-string v2, "V_MPEG4/ISO/AVC"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    move-result v1

    .line 327
    .line 328
    if-nez v1, :cond_16

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_16
    const/16 v1, 0xa

    .line 333
    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :sswitch_17
    const-string v2, "V_MPEG4/ISO/ASP"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    move-result v1

    .line 341
    .line 342
    if-nez v1, :cond_17

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_17
    const/16 v1, 0x9

    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :sswitch_18
    const-string v2, "S_DVBSUB"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    move-result v1

    .line 355
    .line 356
    if-nez v1, :cond_18

    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    :cond_18
    move v1, v7

    .line 360
    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :sswitch_19
    const-string v2, "V_MS/VFW/FOURCC"

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result v1

    .line 368
    .line 369
    if-nez v1, :cond_19

    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    :cond_19
    const/4 v1, 0x7

    .line 373
    goto :goto_1

    .line 374
    .line 375
    :sswitch_1a
    const-string v2, "A_MPEG/L3"

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    move-result v1

    .line 380
    .line 381
    if-nez v1, :cond_1a

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    :cond_1a
    const/4 v1, 0x6

    .line 385
    goto :goto_1

    .line 386
    .line 387
    :sswitch_1b
    const-string v2, "A_MPEG/L2"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    move-result v1

    .line 392
    .line 393
    if-nez v1, :cond_1b

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    :cond_1b
    const/4 v1, 0x5

    .line 397
    goto :goto_1

    .line 398
    .line 399
    :sswitch_1c
    const-string v2, "A_VORBIS"

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    move-result v1

    .line 404
    .line 405
    if-nez v1, :cond_1c

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    :cond_1c
    const/4 v1, 0x4

    .line 409
    goto :goto_1

    .line 410
    .line 411
    :sswitch_1d
    const-string v2, "A_TRUEHD"

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v1

    .line 416
    .line 417
    if-nez v1, :cond_1d

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    :cond_1d
    move v1, v9

    .line 421
    goto :goto_1

    .line 422
    .line 423
    :sswitch_1e
    const-string v2, "A_MS/ACM"

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    move-result v1

    .line 428
    .line 429
    if-nez v1, :cond_1e

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    :cond_1e
    const/4 v1, 0x2

    .line 433
    goto :goto_1

    .line 434
    .line 435
    :sswitch_1f
    const-string v2, "V_MPEG4/ISO/SP"

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result v1

    .line 440
    .line 441
    if-nez v1, :cond_1f

    .line 442
    .line 443
    goto/16 :goto_0

    .line 444
    :cond_1f
    const/4 v1, 0x1

    .line 445
    goto :goto_1

    .line 446
    .line 447
    :sswitch_20
    const-string v2, "V_MPEG4/ISO/AP"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    move-result v1

    .line 452
    .line 453
    if-nez v1, :cond_20

    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    :cond_20
    const/4 v1, 0x0

    .line 457
    .line 458
    :goto_1
    const-string v12, "application/dvbsubs"

    .line 459
    .line 460
    const-string v13, "application/vobsub"

    .line 461
    .line 462
    const-string v14, "application/pgs"

    .line 463
    .line 464
    const-string v15, "text/x-ssa"

    .line 465
    .line 466
    const-string v2, "text/vtt"

    .line 467
    .line 468
    const-string v5, "application/x-subrip"

    .line 469
    .line 470
    const-string v6, ". Setting mimeType to "

    .line 471
    .line 472
    const-string v17, "audio/raw"

    .line 473
    .line 474
    const-string v11, "MatroskaExtractor"

    .line 475
    .line 476
    const-string v10, "audio/x-unknown"

    .line 477
    const/4 v8, 0x0

    .line 478
    .line 479
    .line 480
    packed-switch v1, :pswitch_data_0

    .line 481
    .line 482
    const-string v1, "Unrecognized codec identifier."

    .line 483
    .line 484
    .line 485
    invoke-static {v1, v8}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 486
    move-result-object v1

    .line 487
    throw v1

    .line 488
    .line 489
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    .line 490
    .line 491
    .line 492
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    .line 494
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 498
    move-result-object v3

    .line 499
    .line 500
    .line 501
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 505
    move-result-object v3

    .line 506
    .line 507
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 511
    move-result-object v3

    .line 512
    .line 513
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecDelayNs:J

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 517
    move-result-object v3

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 521
    move-result-object v3

    .line 522
    .line 523
    .line 524
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 528
    move-result-object v3

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 532
    move-result-object v3

    .line 533
    .line 534
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->seekPreRollNs:J

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 538
    move-result-object v3

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 542
    move-result-object v3

    .line 543
    .line 544
    .line 545
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    const-string v17, "audio/opus"

    .line 548
    .line 549
    const/16 v3, 0x1680

    .line 550
    move v4, v3

    .line 551
    move-object v3, v8

    .line 552
    :goto_2
    const/4 v6, -0x1

    .line 553
    :goto_3
    const/4 v7, 0x0

    .line 554
    .line 555
    goto/16 :goto_10

    .line 556
    .line 557
    :pswitch_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 561
    move-result-object v1

    .line 562
    .line 563
    .line 564
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 565
    move-result-object v1

    .line 566
    .line 567
    const-string v17, "audio/flac"

    .line 568
    move-object v3, v8

    .line 569
    :goto_4
    const/4 v4, -0x1

    .line 570
    goto :goto_2

    .line 571
    .line 572
    :pswitch_2
    const-string v17, "audio/eac3"

    .line 573
    :goto_5
    move-object v1, v8

    .line 574
    move-object v3, v1

    .line 575
    goto :goto_4

    .line 576
    .line 577
    :pswitch_3
    const-string v17, "video/mpeg2"

    .line 578
    goto :goto_5

    .line 579
    .line 580
    :pswitch_4
    move-object/from16 v17, v5

    .line 581
    goto :goto_5

    .line 582
    .line 583
    :pswitch_5
    move-object/from16 v17, v2

    .line 584
    goto :goto_5

    .line 585
    .line 586
    :pswitch_6
    new-instance v1, Lcom/google/android/exoplayer2/util/c0;

    .line 587
    .line 588
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 592
    move-result-object v3

    .line 593
    .line 594
    .line 595
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 596
    .line 597
    .line 598
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/f;->a(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/f;

    .line 599
    move-result-object v1

    .line 600
    .line 601
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/f;->initializationData:Ljava/util/List;

    .line 602
    .line 603
    iget v4, v1, Lcom/google/android/exoplayer2/video/f;->nalUnitLengthFieldLength:I

    .line 604
    .line 605
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->nalUnitLengthFieldLength:I

    .line 606
    .line 607
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/f;->codecs:Ljava/lang/String;

    .line 608
    .line 609
    const-string v17, "video/hevc"

    .line 610
    :goto_6
    const/4 v4, -0x1

    .line 611
    const/4 v6, -0x1

    .line 612
    const/4 v7, 0x0

    .line 613
    .line 614
    move-object/from16 v18, v3

    .line 615
    move-object v3, v1

    .line 616
    .line 617
    move-object/from16 v1, v18

    .line 618
    .line 619
    goto/16 :goto_10

    .line 620
    .line 621
    .line 622
    :pswitch_7
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->e()[B

    .line 623
    move-result-object v1

    .line 624
    .line 625
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 629
    move-result-object v3

    .line 630
    .line 631
    .line 632
    invoke-static {v1, v3}, Lcom/google/common/collect/a0;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 633
    move-result-object v1

    .line 634
    move-object v3, v8

    .line 635
    .line 636
    move-object/from16 v17, v15

    .line 637
    goto :goto_4

    .line 638
    .line 639
    :pswitch_8
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 640
    .line 641
    .line 642
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->W(I)I

    .line 643
    move-result v1

    .line 644
    .line 645
    if-nez v1, :cond_21

    .line 646
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .line 652
    const-string v3, "Unsupported little endian PCM bit depth: "

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    move-result-object v1

    .line 671
    .line 672
    .line 673
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :goto_7
    move-object v1, v8

    .line 675
    move-object v3, v1

    .line 676
    .line 677
    move-object/from16 v17, v10

    .line 678
    goto :goto_4

    .line 679
    :cond_21
    :goto_8
    move v6, v1

    .line 680
    move-object v1, v8

    .line 681
    move-object v3, v1

    .line 682
    :goto_9
    const/4 v4, -0x1

    .line 683
    .line 684
    goto/16 :goto_3

    .line 685
    .line 686
    :pswitch_9
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 687
    .line 688
    if-ne v1, v7, :cond_22

    .line 689
    move-object v1, v8

    .line 690
    move-object v3, v1

    .line 691
    move v6, v9

    .line 692
    goto :goto_9

    .line 693
    .line 694
    :cond_22
    if-ne v1, v4, :cond_23

    .line 695
    .line 696
    const/high16 v1, 0x10000000

    .line 697
    goto :goto_8

    .line 698
    .line 699
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    const-string v3, "Unsupported big endian PCM bit depth: "

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    move-result-object v1

    .line 723
    .line 724
    .line 725
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    goto :goto_7

    .line 727
    .line 728
    :pswitch_a
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 729
    .line 730
    if-ne v1, v3, :cond_24

    .line 731
    move-object v1, v8

    .line 732
    move-object v3, v1

    .line 733
    const/4 v4, -0x1

    .line 734
    const/4 v6, 0x4

    .line 735
    .line 736
    goto/16 :goto_3

    .line 737
    .line 738
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .line 743
    const-string v3, "Unsupported floating point PCM bit depth: "

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    move-result-object v1

    .line 762
    .line 763
    .line 764
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    goto :goto_7

    .line 766
    .line 767
    :pswitch_b
    const-string v17, "video/x-unknown"

    .line 768
    .line 769
    goto/16 :goto_5

    .line 770
    :pswitch_c
    move-object v1, v8

    .line 771
    move-object v3, v1

    .line 772
    .line 773
    move-object/from16 v17, v14

    .line 774
    .line 775
    goto/16 :goto_4

    .line 776
    .line 777
    :pswitch_d
    const-string v17, "video/x-vnd.on2.vp9"

    .line 778
    .line 779
    goto/16 :goto_5

    .line 780
    .line 781
    :pswitch_e
    const-string v17, "video/x-vnd.on2.vp8"

    .line 782
    .line 783
    goto/16 :goto_5

    .line 784
    .line 785
    :pswitch_f
    const-string v17, "video/av01"

    .line 786
    .line 787
    goto/16 :goto_5

    .line 788
    .line 789
    :pswitch_10
    const-string v17, "audio/vnd.dts"

    .line 790
    .line 791
    goto/16 :goto_5

    .line 792
    .line 793
    :pswitch_11
    const-string v17, "audio/ac3"

    .line 794
    .line 795
    goto/16 :goto_5

    .line 796
    .line 797
    :pswitch_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 801
    move-result-object v1

    .line 802
    .line 803
    .line 804
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 805
    move-result-object v1

    .line 806
    .line 807
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecPrivate:[B

    .line 808
    .line 809
    .line 810
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/a;->e([B)Lcom/google/android/exoplayer2/audio/a$b;

    .line 811
    move-result-object v3

    .line 812
    .line 813
    iget v4, v3, Lcom/google/android/exoplayer2/audio/a$b;->sampleRateHz:I

    .line 814
    .line 815
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->sampleRate:I

    .line 816
    .line 817
    iget v4, v3, Lcom/google/android/exoplayer2/audio/a$b;->channelCount:I

    .line 818
    .line 819
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->channelCount:I

    .line 820
    .line 821
    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/a$b;->codecs:Ljava/lang/String;

    .line 822
    .line 823
    const-string v17, "audio/mp4a-latm"

    .line 824
    .line 825
    goto/16 :goto_4

    .line 826
    .line 827
    :pswitch_13
    const-string v17, "audio/vnd.dts.hd"

    .line 828
    .line 829
    goto/16 :goto_5

    .line 830
    .line 831
    :pswitch_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 835
    move-result-object v1

    .line 836
    .line 837
    .line 838
    invoke-static {v1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 839
    move-result-object v1

    .line 840
    move-object v3, v8

    .line 841
    .line 842
    move-object/from16 v17, v13

    .line 843
    .line 844
    goto/16 :goto_4

    .line 845
    .line 846
    :pswitch_15
    new-instance v1, Lcom/google/android/exoplayer2/util/c0;

    .line 847
    .line 848
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 852
    move-result-object v3

    .line 853
    .line 854
    .line 855
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 856
    .line 857
    .line 858
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/a;

    .line 859
    move-result-object v1

    .line 860
    .line 861
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/a;->initializationData:Ljava/util/List;

    .line 862
    .line 863
    iget v4, v1, Lcom/google/android/exoplayer2/video/a;->nalUnitLengthFieldLength:I

    .line 864
    .line 865
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->nalUnitLengthFieldLength:I

    .line 866
    .line 867
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/a;->codecs:Ljava/lang/String;

    .line 868
    .line 869
    const-string v17, "video/avc"

    .line 870
    .line 871
    goto/16 :goto_6

    .line 872
    :pswitch_16
    const/4 v1, 0x4

    .line 873
    .line 874
    new-array v3, v1, [B

    .line 875
    .line 876
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 880
    move-result-object v4

    .line 881
    const/4 v7, 0x0

    .line 882
    .line 883
    .line 884
    invoke-static {v4, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    .line 886
    .line 887
    invoke-static {v3}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 888
    move-result-object v1

    .line 889
    move-object v3, v8

    .line 890
    .line 891
    move-object/from16 v17, v12

    .line 892
    :goto_a
    const/4 v4, -0x1

    .line 893
    :goto_b
    const/4 v6, -0x1

    .line 894
    .line 895
    goto/16 :goto_10

    .line 896
    :pswitch_17
    const/4 v7, 0x0

    .line 897
    .line 898
    new-instance v1, Lcom/google/android/exoplayer2/util/c0;

    .line 899
    .line 900
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 904
    move-result-object v3

    .line 905
    .line 906
    .line 907
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 908
    .line 909
    .line 910
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->k(Lcom/google/android/exoplayer2/util/c0;)Landroid/util/Pair;

    .line 911
    move-result-object v1

    .line 912
    .line 913
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 914
    .line 915
    move-object/from16 v17, v3

    .line 916
    .line 917
    check-cast v17, Ljava/lang/String;

    .line 918
    .line 919
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v1, Ljava/util/List;

    .line 922
    :goto_c
    move-object v3, v8

    .line 923
    goto :goto_a

    .line 924
    :pswitch_18
    const/4 v7, 0x0

    .line 925
    .line 926
    const-string v17, "audio/mpeg"

    .line 927
    :goto_d
    move-object v1, v8

    .line 928
    move-object v3, v1

    .line 929
    .line 930
    const/16 v4, 0x1000

    .line 931
    goto :goto_b

    .line 932
    :pswitch_19
    const/4 v7, 0x0

    .line 933
    .line 934
    const-string v17, "audio/mpeg-L2"

    .line 935
    goto :goto_d

    .line 936
    :pswitch_1a
    const/4 v7, 0x0

    .line 937
    .line 938
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 942
    move-result-object v1

    .line 943
    .line 944
    .line 945
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->m([B)Ljava/util/List;

    .line 946
    move-result-object v1

    .line 947
    .line 948
    const-string v17, "audio/vorbis"

    .line 949
    .line 950
    const/16 v3, 0x2000

    .line 951
    move v4, v3

    .line 952
    move-object v3, v8

    .line 953
    goto :goto_b

    .line 954
    :pswitch_1b
    const/4 v7, 0x0

    .line 955
    .line 956
    new-instance v1, Lcom/google/android/exoplayer2/extractor/f0;

    .line 957
    .line 958
    .line 959
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f0;-><init>()V

    .line 960
    .line 961
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

    .line 962
    .line 963
    const-string v17, "audio/true-hd"

    .line 964
    move-object v1, v8

    .line 965
    move-object v3, v1

    .line 966
    goto :goto_a

    .line 967
    :pswitch_1c
    const/4 v7, 0x0

    .line 968
    .line 969
    new-instance v1, Lcom/google/android/exoplayer2/util/c0;

    .line 970
    .line 971
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecId:Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->g(Ljava/lang/String;)[B

    .line 975
    move-result-object v3

    .line 976
    .line 977
    .line 978
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 979
    .line 980
    .line 981
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->l(Lcom/google/android/exoplayer2/util/c0;)Z

    .line 982
    move-result v1

    .line 983
    .line 984
    if-eqz v1, :cond_26

    .line 985
    .line 986
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 987
    .line 988
    .line 989
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->W(I)I

    .line 990
    move-result v1

    .line 991
    .line 992
    if-nez v1, :cond_25

    .line 993
    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .line 999
    const-string v3, "Unsupported PCM bit depth: "

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->audioBitDepth:I

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    move-result-object v1

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :goto_e
    move-object v1, v8

    .line 1022
    move-object v3, v1

    .line 1023
    .line 1024
    move-object/from16 v17, v10

    .line 1025
    .line 1026
    goto/16 :goto_a

    .line 1027
    :cond_25
    move v6, v1

    .line 1028
    move-object v1, v8

    .line 1029
    move-object v3, v1

    .line 1030
    const/4 v4, -0x1

    .line 1031
    goto :goto_10

    .line 1032
    .line 1033
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    .line 1038
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    move-result-object v1

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    goto :goto_e

    .line 1053
    :pswitch_1d
    const/4 v7, 0x0

    .line 1054
    .line 1055
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->codecPrivate:[B

    .line 1056
    .line 1057
    if-nez v1, :cond_27

    .line 1058
    move-object v1, v8

    .line 1059
    goto :goto_f

    .line 1060
    .line 1061
    .line 1062
    :cond_27
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1063
    move-result-object v1

    .line 1064
    .line 1065
    :goto_f
    const-string v17, "video/mp4v-es"

    .line 1066
    .line 1067
    goto/16 :goto_c

    .line 1068
    .line 1069
    :goto_10
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->dolbyVisionConfigBytes:[B

    .line 1070
    .line 1071
    if-eqz v10, :cond_28

    .line 1072
    .line 1073
    new-instance v11, Lcom/google/android/exoplayer2/util/c0;

    .line 1074
    .line 1075
    .line 1076
    invoke-direct {v11, v10}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 1077
    .line 1078
    .line 1079
    invoke-static {v11}, Lcom/google/android/exoplayer2/video/d;->a(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/d;

    .line 1080
    move-result-object v10

    .line 1081
    .line 1082
    if-eqz v10, :cond_28

    .line 1083
    .line 1084
    iget-object v3, v10, Lcom/google/android/exoplayer2/video/d;->codecs:Ljava/lang/String;

    .line 1085
    .line 1086
    const-string v17, "video/dolby-vision"

    .line 1087
    .line 1088
    :cond_28
    move-object/from16 v10, v17

    .line 1089
    .line 1090
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->flagDefault:Z

    .line 1091
    .line 1092
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->flagForced:Z

    .line 1093
    .line 1094
    if-eqz v7, :cond_29

    .line 1095
    const/4 v7, 0x2

    .line 1096
    goto :goto_11

    .line 1097
    :cond_29
    const/4 v7, 0x0

    .line 1098
    :goto_11
    or-int/2addr v7, v11

    .line 1099
    .line 1100
    new-instance v11, Lcom/google/android/exoplayer2/a2$b;

    .line 1101
    .line 1102
    .line 1103
    invoke-direct {v11}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/x;->l(Ljava/lang/String;)Z

    .line 1107
    move-result v16

    .line 1108
    .line 1109
    if-eqz v16, :cond_2a

    .line 1110
    .line 1111
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->channelCount:I

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1115
    move-result-object v2

    .line 1116
    .line 1117
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->sampleRate:I

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1121
    move-result-object v2

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/a2$b;->Y(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1125
    const/4 v5, 0x1

    .line 1126
    .line 1127
    goto/16 :goto_17

    .line 1128
    .line 1129
    .line 1130
    :cond_2a
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/x;->o(Ljava/lang/String;)Z

    .line 1131
    move-result v6

    .line 1132
    .line 1133
    if-eqz v6, :cond_36

    .line 1134
    .line 1135
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayUnit:I

    .line 1136
    .line 1137
    if-nez v2, :cond_2d

    .line 1138
    .line 1139
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayWidth:I

    .line 1140
    const/4 v5, -0x1

    .line 1141
    .line 1142
    if-ne v2, v5, :cond_2b

    .line 1143
    .line 1144
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->width:I

    .line 1145
    .line 1146
    :cond_2b
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayWidth:I

    .line 1147
    .line 1148
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayHeight:I

    .line 1149
    .line 1150
    if-ne v2, v5, :cond_2c

    .line 1151
    .line 1152
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->height:I

    .line 1153
    .line 1154
    :cond_2c
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayHeight:I

    .line 1155
    goto :goto_12

    .line 1156
    :cond_2d
    const/4 v5, -0x1

    .line 1157
    .line 1158
    :goto_12
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayWidth:I

    .line 1159
    .line 1160
    if-eq v2, v5, :cond_2e

    .line 1161
    .line 1162
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->displayHeight:I

    .line 1163
    .line 1164
    if-eq v6, v5, :cond_2e

    .line 1165
    .line 1166
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->height:I

    .line 1167
    mul-int/2addr v9, v2

    .line 1168
    int-to-float v2, v9

    .line 1169
    .line 1170
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->width:I

    .line 1171
    mul-int/2addr v9, v6

    .line 1172
    int-to-float v6, v9

    .line 1173
    div-float/2addr v2, v6

    .line 1174
    goto :goto_13

    .line 1175
    .line 1176
    :cond_2e
    const/high16 v2, -0x40800000    # -1.0f

    .line 1177
    .line 1178
    :goto_13
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->hasColorInfo:Z

    .line 1179
    .line 1180
    if-eqz v6, :cond_2f

    .line 1181
    .line 1182
    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->h()[B

    .line 1184
    move-result-object v6

    .line 1185
    .line 1186
    new-instance v8, Lcom/google/android/exoplayer2/video/c;

    .line 1187
    .line 1188
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->colorSpace:I

    .line 1189
    .line 1190
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->colorRange:I

    .line 1191
    .line 1192
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->colorTransfer:I

    .line 1193
    .line 1194
    .line 1195
    invoke-direct {v8, v9, v12, v13, v6}, Lcom/google/android/exoplayer2/video/c;-><init>(III[B)V

    .line 1196
    .line 1197
    :cond_2f
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->name:Ljava/lang/String;

    .line 1198
    .line 1199
    if-eqz v6, :cond_30

    .line 1200
    .line 1201
    .line 1202
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->f()Ljava/util/Map;

    .line 1203
    move-result-object v6

    .line 1204
    .line 1205
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->name:Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1209
    move-result v6

    .line 1210
    .line 1211
    if-eqz v6, :cond_30

    .line 1212
    .line 1213
    .line 1214
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->f()Ljava/util/Map;

    .line 1215
    move-result-object v5

    .line 1216
    .line 1217
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->name:Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    move-result-object v5

    .line 1222
    .line 1223
    check-cast v5, Ljava/lang/Integer;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1227
    move-result v5

    .line 1228
    .line 1229
    :cond_30
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionType:I

    .line 1230
    .line 1231
    if-nez v6, :cond_35

    .line 1232
    .line 1233
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPoseYaw:F

    .line 1234
    const/4 v9, 0x0

    .line 1235
    .line 1236
    .line 1237
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1238
    move-result v6

    .line 1239
    .line 1240
    if-nez v6, :cond_35

    .line 1241
    .line 1242
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPosePitch:F

    .line 1243
    .line 1244
    .line 1245
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1246
    move-result v6

    .line 1247
    .line 1248
    if-nez v6, :cond_35

    .line 1249
    .line 1250
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPoseRoll:F

    .line 1251
    .line 1252
    .line 1253
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1254
    move-result v6

    .line 1255
    .line 1256
    if-nez v6, :cond_31

    .line 1257
    const/4 v5, 0x0

    .line 1258
    goto :goto_15

    .line 1259
    .line 1260
    :cond_31
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPosePitch:F

    .line 1261
    .line 1262
    const/high16 v9, 0x42b40000    # 90.0f

    .line 1263
    .line 1264
    .line 1265
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1266
    move-result v6

    .line 1267
    .line 1268
    if-nez v6, :cond_32

    .line 1269
    .line 1270
    const/16 v5, 0x5a

    .line 1271
    goto :goto_15

    .line 1272
    .line 1273
    :cond_32
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPosePitch:F

    .line 1274
    .line 1275
    const/high16 v9, -0x3ccc0000    # -180.0f

    .line 1276
    .line 1277
    .line 1278
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1279
    move-result v6

    .line 1280
    .line 1281
    if-eqz v6, :cond_34

    .line 1282
    .line 1283
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPosePitch:F

    .line 1284
    .line 1285
    const/high16 v9, 0x43340000    # 180.0f

    .line 1286
    .line 1287
    .line 1288
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1289
    move-result v6

    .line 1290
    .line 1291
    if-nez v6, :cond_33

    .line 1292
    goto :goto_14

    .line 1293
    .line 1294
    :cond_33
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionPosePitch:F

    .line 1295
    .line 1296
    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 1297
    .line 1298
    .line 1299
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1300
    move-result v6

    .line 1301
    .line 1302
    if-nez v6, :cond_35

    .line 1303
    .line 1304
    const/16 v5, 0x10e

    .line 1305
    goto :goto_15

    .line 1306
    .line 1307
    :cond_34
    :goto_14
    const/16 v5, 0xb4

    .line 1308
    .line 1309
    :cond_35
    :goto_15
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->width:I

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1313
    move-result-object v6

    .line 1314
    .line 1315
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->height:I

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1319
    move-result-object v6

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/a2$b;->a0(F)Lcom/google/android/exoplayer2/a2$b;

    .line 1323
    move-result-object v2

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/a2$b;->d0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1327
    move-result-object v2

    .line 1328
    .line 1329
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->projectionData:[B

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/a2$b;->b0([B)Lcom/google/android/exoplayer2/a2$b;

    .line 1333
    move-result-object v2

    .line 1334
    .line 1335
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->stereoMode:I

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/a2$b;->h0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1339
    move-result-object v2

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/a2$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/a2$b;

    .line 1343
    const/4 v5, 0x2

    .line 1344
    goto :goto_17

    .line 1345
    .line 1346
    .line 1347
    :cond_36
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1348
    move-result v5

    .line 1349
    .line 1350
    if-nez v5, :cond_38

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1354
    move-result v5

    .line 1355
    .line 1356
    if-nez v5, :cond_38

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1360
    move-result v2

    .line 1361
    .line 1362
    if-nez v2, :cond_38

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1366
    move-result v2

    .line 1367
    .line 1368
    if-nez v2, :cond_38

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1372
    move-result v2

    .line 1373
    .line 1374
    if-nez v2, :cond_38

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1378
    move-result v2

    .line 1379
    .line 1380
    if-eqz v2, :cond_37

    .line 1381
    goto :goto_16

    .line 1382
    .line 1383
    :cond_37
    const-string v1, "Unexpected MIME type."

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v1, v8}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 1387
    move-result-object v1

    .line 1388
    throw v1

    .line 1389
    :cond_38
    :goto_16
    move v5, v9

    .line 1390
    .line 1391
    :goto_17
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->name:Ljava/lang/String;

    .line 1392
    .line 1393
    if-eqz v2, :cond_39

    .line 1394
    .line 1395
    .line 1396
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->f()Ljava/util/Map;

    .line 1397
    move-result-object v2

    .line 1398
    .line 1399
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->name:Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1403
    move-result v2

    .line 1404
    .line 1405
    if-nez v2, :cond_39

    .line 1406
    .line 1407
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->name:Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/a2$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 1411
    .line 1412
    :cond_39
    move/from16 v2, p2

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1416
    move-result-object v2

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 1420
    move-result-object v2

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1424
    move-result-object v2

    .line 1425
    .line 1426
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->language:Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 1430
    move-result-object v2

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/a2$b;->g0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 1434
    move-result-object v2

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 1438
    move-result-object v1

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 1442
    move-result-object v1

    .line 1443
    .line 1444
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    .line 1448
    move-result-object v1

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 1452
    move-result-object v1

    .line 1453
    .line 1454
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->number:I

    .line 1455
    .line 1456
    move-object/from16 v3, p1

    .line 1457
    .line 1458
    .line 1459
    invoke-interface {v3, v2, v5}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 1460
    move-result-object v2

    .line 1461
    .line 1462
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 1463
    .line 1464
    .line 1465
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 1466
    return-void

    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->cryptoData:Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f0;->a(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 12
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f0;->b()V

    .line 8
    :cond_0
    return-void
.end method
