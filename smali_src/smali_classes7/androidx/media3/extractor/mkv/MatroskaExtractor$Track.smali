.class public final Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Track"
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

.field public cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Landroidx/media3/common/DrmInitData;

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

.field public output:Landroidx/media3/extractor/TrackOutput;

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

.field public trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

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
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 21
    .line 22
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 23
    .line 24
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    iput-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 28
    .line 29
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 30
    .line 31
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 32
    .line 33
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 36
    .line 37
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 38
    .line 39
    const/16 v1, 0x3e8

    .line 40
    .line 41
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 42
    .line 43
    const/16 v1, 0xc8

    .line 44
    .line 45
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 46
    .line 47
    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    .line 49
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 50
    .line 51
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 52
    .line 53
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 54
    .line 55
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 56
    .line 57
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 58
    .line 59
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 60
    .line 61
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 62
    .line 63
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 64
    .line 65
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 66
    .line 67
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 68
    const/4 v1, 0x1

    .line 69
    .line 70
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 71
    .line 72
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 73
    .line 74
    const/16 v0, 0x1f40

    .line 75
    .line 76
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 77
    .line 78
    const-wide/16 v2, 0x0

    .line 79
    .line 80
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 81
    .line 82
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 83
    .line 84
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 85
    .line 86
    const-string v0, "eng"

    .line 87
    .line 88
    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic a(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f()V

    .line 4
    return-void
.end method

.method static synthetic b(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    .line 3
    return p1
.end method

.method static synthetic d(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method static synthetic e(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o(Z)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private f()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method private g(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

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
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

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
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

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
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 17
    .line 18
    cmpl-float v0, v0, v1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 23
    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 29
    .line 30
    cmpl-float v0, v0, v1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 35
    .line 36
    cmpl-float v0, v0, v1

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 41
    .line 42
    cmpl-float v0, v0, v1

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 47
    .line 48
    cmpl-float v0, v0, v1

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 53
    .line 54
    cmpl-float v0, v0, v1

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

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
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 177
    int-to-short v2, v2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

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

.method private static k(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
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
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->x()J

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
    .line 22
    const-string/jumbo v0, "video/divx"

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-object p0

    .line 27
    .line 28
    .line 29
    :cond_0
    const-wide/32 v4, 0x33363248

    .line 30
    .line 31
    cmp-long v0, v2, v4

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance p0, Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "video/3gpp"

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-object p0

    .line 43
    .line 44
    .line 45
    :cond_1
    const-wide/32 v4, 0x31435657

    .line 46
    .line 47
    cmp-long v0, v2, v4

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 53
    move-result v0

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x14

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 59
    move-result-object p0

    .line 60
    :goto_0
    array-length v2, p0

    .line 61
    .line 62
    add-int/lit8 v2, v2, -0x4

    .line 63
    .line 64
    if-ge v0, v2, :cond_3

    .line 65
    .line 66
    aget-byte v2, p0, v0

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    add-int/lit8 v2, v0, 0x1

    .line 71
    .line 72
    aget-byte v2, p0, v2

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    add-int/lit8 v2, v0, 0x2

    .line 77
    .line 78
    aget-byte v2, p0, v2

    .line 79
    const/4 v3, 0x1

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    add-int/lit8 v2, v0, 0x3

    .line 84
    .line 85
    aget-byte v2, p0, v2

    .line 86
    .line 87
    const/16 v3, 0xf

    .line 88
    .line 89
    if-ne v2, v3, :cond_2

    .line 90
    array-length v2, p0

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 94
    move-result-object p0

    .line 95
    .line 96
    new-instance v0, Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "video/wvc1"

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    return-object v0

    .line 108
    .line 109
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_3
    const-string p0, "Failed to find FourCC VC1 initialization data"

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 116
    move-result-object p0

    .line 117
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    :cond_4
    const-string p0, "MatroskaExtractor"

    .line 120
    .line 121
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 122
    .line 123
    .line 124
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    new-instance p0, Landroid/util/Pair;

    .line 127
    .line 128
    .line 129
    const-string/jumbo v0, "video/x-unknown"

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    return-object p0

    .line 134
    .line 135
    :catch_0
    const-string p0, "Error parsing FourCC private data"

    .line 136
    .line 137
    .line 138
    invoke-static {p0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 139
    move-result-object p0

    .line 140
    throw p0
.end method

.method private static l(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

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
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->A()J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g()Ljava/util/UUID;

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
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->A()J

    .line 39
    move-result-wide v4

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g()Ljava/util/UUID;

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
    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

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
            Landroidx/media3/common/ParserException;
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
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 99
    move-result-object p0

    .line 100
    throw p0

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

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
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

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
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

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
    iget p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

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
.method public i(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

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
    .line 465
    const-string/jumbo v15, "text/x-ssa"

    .line 466
    .line 467
    .line 468
    const-string/jumbo v2, "text/vtt"

    .line 469
    .line 470
    const-string v5, "application/x-subrip"

    .line 471
    .line 472
    const-string v6, ". Setting mimeType to "

    .line 473
    .line 474
    const-string v17, "audio/raw"

    .line 475
    .line 476
    const-string v11, "MatroskaExtractor"

    .line 477
    .line 478
    const-string v10, "audio/x-unknown"

    .line 479
    const/4 v8, 0x0

    .line 480
    .line 481
    .line 482
    packed-switch v1, :pswitch_data_0

    .line 483
    .line 484
    const-string v1, "Unrecognized codec identifier."

    .line 485
    .line 486
    .line 487
    invoke-static {v1, v8}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 488
    move-result-object v1

    .line 489
    throw v1

    .line 490
    .line 491
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    .line 492
    .line 493
    .line 494
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .line 496
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    invoke-direct {v0, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 500
    move-result-object v3

    .line 501
    .line 502
    .line 503
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 507
    move-result-object v3

    .line 508
    .line 509
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 513
    move-result-object v3

    .line 514
    .line 515
    iget-wide v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 519
    move-result-object v3

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 523
    move-result-object v3

    .line 524
    .line 525
    .line 526
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 530
    move-result-object v3

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 534
    move-result-object v3

    .line 535
    .line 536
    iget-wide v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 540
    move-result-object v3

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 544
    move-result-object v3

    .line 545
    .line 546
    .line 547
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    const-string v17, "audio/opus"

    .line 550
    .line 551
    const/16 v3, 0x1680

    .line 552
    move v4, v3

    .line 553
    move-object v3, v8

    .line 554
    :goto_2
    const/4 v6, -0x1

    .line 555
    :goto_3
    const/4 v7, 0x0

    .line 556
    .line 557
    goto/16 :goto_10

    .line 558
    .line 559
    :pswitch_1
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 563
    move-result-object v1

    .line 564
    .line 565
    .line 566
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 567
    move-result-object v1

    .line 568
    .line 569
    const-string v17, "audio/flac"

    .line 570
    move-object v3, v8

    .line 571
    :goto_4
    const/4 v4, -0x1

    .line 572
    goto :goto_2

    .line 573
    .line 574
    :pswitch_2
    const-string v17, "audio/eac3"

    .line 575
    :goto_5
    move-object v1, v8

    .line 576
    move-object v3, v1

    .line 577
    goto :goto_4

    .line 578
    .line 579
    .line 580
    :pswitch_3
    const-string/jumbo v17, "video/mpeg2"

    .line 581
    goto :goto_5

    .line 582
    .line 583
    :pswitch_4
    move-object/from16 v17, v5

    .line 584
    goto :goto_5

    .line 585
    .line 586
    :pswitch_5
    move-object/from16 v17, v2

    .line 587
    goto :goto_5

    .line 588
    .line 589
    :pswitch_6
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 590
    .line 591
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    invoke-direct {v0, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 595
    move-result-object v3

    .line 596
    .line 597
    .line 598
    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 599
    .line 600
    .line 601
    invoke-static {v1}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    .line 602
    move-result-object v1

    .line 603
    .line 604
    iget-object v3, v1, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 605
    .line 606
    iget v4, v1, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 607
    .line 608
    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 609
    .line 610
    iget-object v1, v1, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    const-string/jumbo v17, "video/hevc"

    .line 614
    :goto_6
    const/4 v4, -0x1

    .line 615
    const/4 v6, -0x1

    .line 616
    const/4 v7, 0x0

    .line 617
    .line 618
    move-object/from16 v18, v3

    .line 619
    move-object v3, v1

    .line 620
    .line 621
    move-object/from16 v1, v18

    .line 622
    .line 623
    goto/16 :goto_10

    .line 624
    .line 625
    .line 626
    :pswitch_7
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e()[B

    .line 627
    move-result-object v1

    .line 628
    .line 629
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    invoke-direct {v0, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 633
    move-result-object v3

    .line 634
    .line 635
    .line 636
    invoke-static {v1, v3}, Lcom/google/common/collect/a0;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 637
    move-result-object v1

    .line 638
    move-object v3, v8

    .line 639
    .line 640
    move-object/from16 v17, v15

    .line 641
    goto :goto_4

    .line 642
    .line 643
    :pswitch_8
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 644
    .line 645
    .line 646
    invoke-static {v1}, Landroidx/media3/common/util/Util;->f0(I)I

    .line 647
    move-result v1

    .line 648
    .line 649
    if-nez v1, :cond_21

    .line 650
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    const-string v3, "Unsupported little endian PCM bit depth: "

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    move-result-object v1

    .line 675
    .line 676
    .line 677
    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :goto_7
    move-object v1, v8

    .line 679
    move-object v3, v1

    .line 680
    .line 681
    move-object/from16 v17, v10

    .line 682
    goto :goto_4

    .line 683
    :cond_21
    :goto_8
    move v6, v1

    .line 684
    move-object v1, v8

    .line 685
    move-object v3, v1

    .line 686
    :goto_9
    const/4 v4, -0x1

    .line 687
    .line 688
    goto/16 :goto_3

    .line 689
    .line 690
    :pswitch_9
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 691
    .line 692
    if-ne v1, v7, :cond_22

    .line 693
    move-object v1, v8

    .line 694
    move-object v3, v1

    .line 695
    move v6, v9

    .line 696
    goto :goto_9

    .line 697
    .line 698
    :cond_22
    if-ne v1, v4, :cond_23

    .line 699
    .line 700
    const/high16 v1, 0x10000000

    .line 701
    goto :goto_8

    .line 702
    .line 703
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .line 708
    const-string v3, "Unsupported big endian PCM bit depth: "

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v1

    .line 727
    .line 728
    .line 729
    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    goto :goto_7

    .line 731
    .line 732
    :pswitch_a
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 733
    .line 734
    if-ne v1, v3, :cond_24

    .line 735
    move-object v1, v8

    .line 736
    move-object v3, v1

    .line 737
    const/4 v4, -0x1

    .line 738
    const/4 v6, 0x4

    .line 739
    .line 740
    goto/16 :goto_3

    .line 741
    .line 742
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .line 747
    const-string v3, "Unsupported floating point PCM bit depth: "

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    move-result-object v1

    .line 766
    .line 767
    .line 768
    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    goto :goto_7

    .line 770
    .line 771
    .line 772
    :pswitch_b
    const-string/jumbo v17, "video/x-unknown"

    .line 773
    .line 774
    goto/16 :goto_5

    .line 775
    :pswitch_c
    move-object v1, v8

    .line 776
    move-object v3, v1

    .line 777
    .line 778
    move-object/from16 v17, v14

    .line 779
    .line 780
    goto/16 :goto_4

    .line 781
    .line 782
    .line 783
    :pswitch_d
    const-string/jumbo v17, "video/x-vnd.on2.vp9"

    .line 784
    .line 785
    goto/16 :goto_5

    .line 786
    .line 787
    .line 788
    :pswitch_e
    const-string/jumbo v17, "video/x-vnd.on2.vp8"

    .line 789
    .line 790
    goto/16 :goto_5

    .line 791
    .line 792
    .line 793
    :pswitch_f
    const-string/jumbo v17, "video/av01"

    .line 794
    .line 795
    goto/16 :goto_5

    .line 796
    .line 797
    :pswitch_10
    const-string v17, "audio/vnd.dts"

    .line 798
    .line 799
    goto/16 :goto_5

    .line 800
    .line 801
    :pswitch_11
    const-string v17, "audio/ac3"

    .line 802
    .line 803
    goto/16 :goto_5

    .line 804
    .line 805
    :pswitch_12
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 809
    move-result-object v1

    .line 810
    .line 811
    .line 812
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 813
    move-result-object v1

    .line 814
    .line 815
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 816
    .line 817
    .line 818
    invoke-static {v3}, Landroidx/media3/extractor/AacUtil;->f([B)Landroidx/media3/extractor/AacUtil$Config;

    .line 819
    move-result-object v3

    .line 820
    .line 821
    iget v4, v3, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 822
    .line 823
    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 824
    .line 825
    iget v4, v3, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 826
    .line 827
    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 828
    .line 829
    iget-object v3, v3, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 830
    .line 831
    const-string v17, "audio/mp4a-latm"

    .line 832
    .line 833
    goto/16 :goto_4

    .line 834
    .line 835
    :pswitch_13
    const-string v17, "audio/vnd.dts.hd"

    .line 836
    .line 837
    goto/16 :goto_5

    .line 838
    .line 839
    :pswitch_14
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 843
    move-result-object v1

    .line 844
    .line 845
    .line 846
    invoke-static {v1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 847
    move-result-object v1

    .line 848
    move-object v3, v8

    .line 849
    .line 850
    move-object/from16 v17, v13

    .line 851
    .line 852
    goto/16 :goto_4

    .line 853
    .line 854
    :pswitch_15
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 855
    .line 856
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    invoke-direct {v0, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 860
    move-result-object v3

    .line 861
    .line 862
    .line 863
    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 864
    .line 865
    .line 866
    invoke-static {v1}, Landroidx/media3/extractor/AvcConfig;->b(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    .line 867
    move-result-object v1

    .line 868
    .line 869
    iget-object v3, v1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 870
    .line 871
    iget v4, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    .line 872
    .line 873
    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 874
    .line 875
    iget-object v1, v1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    const-string/jumbo v17, "video/avc"

    .line 879
    .line 880
    goto/16 :goto_6

    .line 881
    :pswitch_16
    const/4 v1, 0x4

    .line 882
    .line 883
    new-array v3, v1, [B

    .line 884
    .line 885
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    invoke-direct {v0, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 889
    move-result-object v4

    .line 890
    const/4 v7, 0x0

    .line 891
    .line 892
    .line 893
    invoke-static {v4, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 894
    .line 895
    .line 896
    invoke-static {v3}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 897
    move-result-object v1

    .line 898
    move-object v3, v8

    .line 899
    .line 900
    move-object/from16 v17, v12

    .line 901
    :goto_a
    const/4 v4, -0x1

    .line 902
    :goto_b
    const/4 v6, -0x1

    .line 903
    .line 904
    goto/16 :goto_10

    .line 905
    :pswitch_17
    const/4 v7, 0x0

    .line 906
    .line 907
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 908
    .line 909
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    invoke-direct {v0, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 913
    move-result-object v3

    .line 914
    .line 915
    .line 916
    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 917
    .line 918
    .line 919
    invoke-static {v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    .line 920
    move-result-object v1

    .line 921
    .line 922
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 923
    .line 924
    move-object/from16 v17, v3

    .line 925
    .line 926
    check-cast v17, Ljava/lang/String;

    .line 927
    .line 928
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v1, Ljava/util/List;

    .line 931
    :goto_c
    move-object v3, v8

    .line 932
    goto :goto_a

    .line 933
    :pswitch_18
    const/4 v7, 0x0

    .line 934
    .line 935
    const-string v17, "audio/mpeg"

    .line 936
    :goto_d
    move-object v1, v8

    .line 937
    move-object v3, v1

    .line 938
    .line 939
    const/16 v4, 0x1000

    .line 940
    goto :goto_b

    .line 941
    :pswitch_19
    const/4 v7, 0x0

    .line 942
    .line 943
    const-string v17, "audio/mpeg-L2"

    .line 944
    goto :goto_d

    .line 945
    :pswitch_1a
    const/4 v7, 0x0

    .line 946
    .line 947
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 951
    move-result-object v1

    .line 952
    .line 953
    .line 954
    invoke-static {v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m([B)Ljava/util/List;

    .line 955
    move-result-object v1

    .line 956
    .line 957
    const-string v17, "audio/vorbis"

    .line 958
    .line 959
    const/16 v3, 0x2000

    .line 960
    move v4, v3

    .line 961
    move-object v3, v8

    .line 962
    goto :goto_b

    .line 963
    :pswitch_1b
    const/4 v7, 0x0

    .line 964
    .line 965
    new-instance v1, Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 966
    .line 967
    .line 968
    invoke-direct {v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    .line 969
    .line 970
    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 971
    .line 972
    const-string v17, "audio/true-hd"

    .line 973
    move-object v1, v8

    .line 974
    move-object v3, v1

    .line 975
    goto :goto_a

    .line 976
    :pswitch_1c
    const/4 v7, 0x0

    .line 977
    .line 978
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 979
    .line 980
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    invoke-direct {v0, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g(Ljava/lang/String;)[B

    .line 984
    move-result-object v3

    .line 985
    .line 986
    .line 987
    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 988
    .line 989
    .line 990
    invoke-static {v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 991
    move-result v1

    .line 992
    .line 993
    if-eqz v1, :cond_26

    .line 994
    .line 995
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 996
    .line 997
    .line 998
    invoke-static {v1}, Landroidx/media3/common/util/Util;->f0(I)I

    .line 999
    move-result v1

    .line 1000
    .line 1001
    if-nez v1, :cond_25

    .line 1002
    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .line 1008
    const-string v3, "Unsupported PCM bit depth: "

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    move-result-object v1

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_e
    move-object v1, v8

    .line 1031
    move-object v3, v1

    .line 1032
    .line 1033
    move-object/from16 v17, v10

    .line 1034
    .line 1035
    goto/16 :goto_a

    .line 1036
    :cond_25
    move v6, v1

    .line 1037
    move-object v1, v8

    .line 1038
    move-object v3, v1

    .line 1039
    const/4 v4, -0x1

    .line 1040
    goto :goto_10

    .line 1041
    .line 1042
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .line 1047
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1057
    move-result-object v1

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    goto :goto_e

    .line 1062
    :pswitch_1d
    const/4 v7, 0x0

    .line 1063
    .line 1064
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1065
    .line 1066
    if-nez v1, :cond_27

    .line 1067
    move-object v1, v8

    .line 1068
    goto :goto_f

    .line 1069
    .line 1070
    .line 1071
    :cond_27
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1072
    move-result-object v1

    .line 1073
    .line 1074
    .line 1075
    :goto_f
    const-string/jumbo v17, "video/mp4v-es"

    .line 1076
    .line 1077
    goto/16 :goto_c

    .line 1078
    .line 1079
    :goto_10
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    .line 1080
    .line 1081
    if-eqz v10, :cond_28

    .line 1082
    .line 1083
    new-instance v10, Landroidx/media3/common/util/ParsableByteArray;

    .line 1084
    .line 1085
    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    .line 1086
    .line 1087
    .line 1088
    invoke-direct {v10, v11}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 1089
    .line 1090
    .line 1091
    invoke-static {v10}, Landroidx/media3/extractor/DolbyVisionConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/DolbyVisionConfig;

    .line 1092
    move-result-object v10

    .line 1093
    .line 1094
    if-eqz v10, :cond_28

    .line 1095
    .line 1096
    iget-object v3, v10, Landroidx/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    const-string/jumbo v17, "video/dolby-vision"

    .line 1100
    .line 1101
    :cond_28
    move-object/from16 v10, v17

    .line 1102
    .line 1103
    iget-boolean v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 1104
    .line 1105
    iget-boolean v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    .line 1106
    .line 1107
    if-eqz v7, :cond_29

    .line 1108
    const/4 v7, 0x2

    .line 1109
    goto :goto_11

    .line 1110
    :cond_29
    const/4 v7, 0x0

    .line 1111
    :goto_11
    or-int/2addr v7, v11

    .line 1112
    .line 1113
    new-instance v11, Landroidx/media3/common/Format$Builder;

    .line 1114
    .line 1115
    .line 1116
    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    .line 1120
    move-result v16

    .line 1121
    .line 1122
    if-eqz v16, :cond_2a

    .line 1123
    .line 1124
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v11, v2}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 1128
    move-result-object v2

    .line 1129
    .line 1130
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->h0(I)Landroidx/media3/common/Format$Builder;

    .line 1134
    move-result-object v2

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v2, v6}, Landroidx/media3/common/Format$Builder;->a0(I)Landroidx/media3/common/Format$Builder;

    .line 1138
    const/4 v5, 0x1

    .line 1139
    .line 1140
    goto/16 :goto_17

    .line 1141
    .line 1142
    .line 1143
    :cond_2a
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->s(Ljava/lang/String;)Z

    .line 1144
    move-result v6

    .line 1145
    .line 1146
    if-eqz v6, :cond_36

    .line 1147
    .line 1148
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1149
    .line 1150
    if-nez v2, :cond_2d

    .line 1151
    .line 1152
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1153
    const/4 v5, -0x1

    .line 1154
    .line 1155
    if-ne v2, v5, :cond_2b

    .line 1156
    .line 1157
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1158
    .line 1159
    :cond_2b
    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1160
    .line 1161
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1162
    .line 1163
    if-ne v2, v5, :cond_2c

    .line 1164
    .line 1165
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1166
    .line 1167
    :cond_2c
    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1168
    goto :goto_12

    .line 1169
    :cond_2d
    const/4 v5, -0x1

    .line 1170
    .line 1171
    :goto_12
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1172
    .line 1173
    if-eq v2, v5, :cond_2e

    .line 1174
    .line 1175
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1176
    .line 1177
    if-eq v6, v5, :cond_2e

    .line 1178
    .line 1179
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1180
    mul-int/2addr v9, v2

    .line 1181
    int-to-float v2, v9

    .line 1182
    .line 1183
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1184
    mul-int/2addr v9, v6

    .line 1185
    int-to-float v6, v9

    .line 1186
    div-float/2addr v2, v6

    .line 1187
    goto :goto_13

    .line 1188
    .line 1189
    :cond_2e
    const/high16 v2, -0x40800000    # -1.0f

    .line 1190
    .line 1191
    :goto_13
    iget-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1192
    .line 1193
    if-eqz v6, :cond_2f

    .line 1194
    .line 1195
    .line 1196
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->h()[B

    .line 1197
    move-result-object v6

    .line 1198
    .line 1199
    new-instance v8, Landroidx/media3/common/ColorInfo;

    .line 1200
    .line 1201
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 1202
    .line 1203
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1204
    .line 1205
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 1206
    .line 1207
    .line 1208
    invoke-direct {v8, v9, v12, v13, v6}, Landroidx/media3/common/ColorInfo;-><init>(III[B)V

    .line 1209
    .line 1210
    :cond_2f
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1211
    .line 1212
    if-eqz v6, :cond_30

    .line 1213
    .line 1214
    .line 1215
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f()Ljava/util/Map;

    .line 1216
    move-result-object v6

    .line 1217
    .line 1218
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1222
    move-result v6

    .line 1223
    .line 1224
    if-eqz v6, :cond_30

    .line 1225
    .line 1226
    .line 1227
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f()Ljava/util/Map;

    .line 1228
    move-result-object v5

    .line 1229
    .line 1230
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    move-result-object v5

    .line 1235
    .line 1236
    check-cast v5, Ljava/lang/Integer;

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1240
    move-result v5

    .line 1241
    .line 1242
    :cond_30
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1243
    .line 1244
    if-nez v6, :cond_35

    .line 1245
    .line 1246
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1247
    const/4 v9, 0x0

    .line 1248
    .line 1249
    .line 1250
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1251
    move-result v6

    .line 1252
    .line 1253
    if-nez v6, :cond_35

    .line 1254
    .line 1255
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1259
    move-result v6

    .line 1260
    .line 1261
    if-nez v6, :cond_35

    .line 1262
    .line 1263
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1267
    move-result v6

    .line 1268
    .line 1269
    if-nez v6, :cond_31

    .line 1270
    const/4 v5, 0x0

    .line 1271
    goto :goto_15

    .line 1272
    .line 1273
    :cond_31
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1274
    .line 1275
    const/high16 v9, 0x42b40000    # 90.0f

    .line 1276
    .line 1277
    .line 1278
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1279
    move-result v6

    .line 1280
    .line 1281
    if-nez v6, :cond_32

    .line 1282
    .line 1283
    const/16 v5, 0x5a

    .line 1284
    goto :goto_15

    .line 1285
    .line 1286
    :cond_32
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1287
    .line 1288
    const/high16 v9, -0x3ccc0000    # -180.0f

    .line 1289
    .line 1290
    .line 1291
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1292
    move-result v6

    .line 1293
    .line 1294
    if-eqz v6, :cond_34

    .line 1295
    .line 1296
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1297
    .line 1298
    const/high16 v9, 0x43340000    # 180.0f

    .line 1299
    .line 1300
    .line 1301
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1302
    move-result v6

    .line 1303
    .line 1304
    if-nez v6, :cond_33

    .line 1305
    goto :goto_14

    .line 1306
    .line 1307
    :cond_33
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1308
    .line 1309
    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 1310
    .line 1311
    .line 1312
    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1313
    move-result v6

    .line 1314
    .line 1315
    if-nez v6, :cond_35

    .line 1316
    .line 1317
    const/16 v5, 0x10e

    .line 1318
    goto :goto_15

    .line 1319
    .line 1320
    :cond_34
    :goto_14
    const/16 v5, 0xb4

    .line 1321
    .line 1322
    :cond_35
    :goto_15
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v11, v6}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 1326
    move-result-object v6

    .line 1327
    .line 1328
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v6, v9}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 1332
    move-result-object v6

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v6, v2}, Landroidx/media3/common/Format$Builder;->c0(F)Landroidx/media3/common/Format$Builder;

    .line 1336
    move-result-object v2

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->f0(I)Landroidx/media3/common/Format$Builder;

    .line 1340
    move-result-object v2

    .line 1341
    .line 1342
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->d0([B)Landroidx/media3/common/Format$Builder;

    .line 1346
    move-result-object v2

    .line 1347
    .line 1348
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->j0(I)Landroidx/media3/common/Format$Builder;

    .line 1352
    move-result-object v2

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v2, v8}, Landroidx/media3/common/Format$Builder;->L(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 1356
    const/4 v5, 0x2

    .line 1357
    goto :goto_17

    .line 1358
    .line 1359
    .line 1360
    :cond_36
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1361
    move-result v5

    .line 1362
    .line 1363
    if-nez v5, :cond_38

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1367
    move-result v5

    .line 1368
    .line 1369
    if-nez v5, :cond_38

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1373
    move-result v2

    .line 1374
    .line 1375
    if-nez v2, :cond_38

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1379
    move-result v2

    .line 1380
    .line 1381
    if-nez v2, :cond_38

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1385
    move-result v2

    .line 1386
    .line 1387
    if-nez v2, :cond_38

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1391
    move-result v2

    .line 1392
    .line 1393
    if-eqz v2, :cond_37

    .line 1394
    goto :goto_16

    .line 1395
    .line 1396
    :cond_37
    const-string v1, "Unexpected MIME type."

    .line 1397
    .line 1398
    .line 1399
    invoke-static {v1, v8}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 1400
    move-result-object v1

    .line 1401
    throw v1

    .line 1402
    :cond_38
    :goto_16
    move v5, v9

    .line 1403
    .line 1404
    :goto_17
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1405
    .line 1406
    if-eqz v2, :cond_39

    .line 1407
    .line 1408
    .line 1409
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f()Ljava/util/Map;

    .line 1410
    move-result-object v2

    .line 1411
    .line 1412
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1416
    move-result v2

    .line 1417
    .line 1418
    if-nez v2, :cond_39

    .line 1419
    .line 1420
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v11, v2}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1424
    .line 1425
    :cond_39
    move/from16 v2, p2

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v11, v2}, Landroidx/media3/common/Format$Builder;->T(I)Landroidx/media3/common/Format$Builder;

    .line 1429
    move-result-object v2

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v2, v10}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1433
    move-result-object v2

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->Y(I)Landroidx/media3/common/Format$Builder;

    .line 1437
    move-result-object v2

    .line 1438
    .line 1439
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1443
    move-result-object v2

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 1447
    move-result-object v2

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 1451
    move-result-object v1

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1455
    move-result-object v1

    .line 1456
    .line 1457
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->O(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 1461
    move-result-object v1

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 1465
    move-result-object v1

    .line 1466
    .line 1467
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    .line 1468
    .line 1469
    move-object/from16 v3, p1

    .line 1470
    .line 1471
    .line 1472
    invoke-interface {v3, v2, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 1473
    move-result-object v2

    .line 1474
    .line 1475
    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1476
    .line 1477
    .line 1478
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/Format;)V

    .line 1479
    return-void

    .line 1480
    nop

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
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/TrueHdSampleRechunker;->a(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 12
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/extractor/TrueHdSampleRechunker;->b()V

    .line 8
    :cond_0
    return-void
.end method
