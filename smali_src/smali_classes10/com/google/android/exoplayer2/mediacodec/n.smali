.class public final Lcom/google/android/exoplayer2/mediacodec/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/n$a;
    }
.end annotation


# static fields
.field private static final COVERAGE_RESULT_NO:I = 0x1

.field private static final COVERAGE_RESULT_NO_EMPTY_LIST:I = 0x0

.field private static final COVERAGE_RESULT_YES:I = 0x2

.field public static final MAX_SUPPORTED_INSTANCES_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final codecMimeType:Ljava/lang/String;

.field public final hardwareAccelerated:Z

.field private final isVideo:Z

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final secure:Z

.field public final softwareOnly:Z

.field public final tunneling:Z

.field public final vendor:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0
    .param p4    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/n;->codecMimeType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 18
    .line 19
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/n;->hardwareAccelerated:Z

    .line 20
    .line 21
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/mediacodec/n;->softwareOnly:Z

    .line 22
    .line 23
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/mediacodec/n;->vendor:Z

    .line 24
    .line 25
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/mediacodec/n;->adaptive:Z

    .line 26
    .line 27
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/mediacodec/n;->tunneling:Z

    .line 28
    .line 29
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/mediacodec/n;->secure:Z

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/x;->o(Ljava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->isVideo:Z

    .line 36
    return-void
.end method

.method private static A(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "video/hevc"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    const/4 p0, 0x2

    .line 10
    .line 11
    if-ne p0, p1, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/google/android/exoplayer2/util/o0;->DEVICE:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "sailfish"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string p1, "marlin"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method private static final B(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "mcv5a"

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->DEVICE:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/n;
    .locals 12
    .param p3    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v11, Lcom/google/android/exoplayer2/mediacodec/n;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-nez p7, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/n;->h(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/n;->z(Ljava/lang/String;)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    move v8, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v8, v0

    .line 24
    .line 25
    :goto_0
    if-eqz p3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/n;->s(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    move v9, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v9, v0

    .line 35
    .line 36
    :goto_1
    if-nez p8, :cond_3

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/n;->q(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v10, v0

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    :goto_2
    move v10, v1

    .line 49
    :goto_3
    move-object v0, v11

    .line 50
    move-object v1, p0

    .line 51
    move-object v2, p1

    .line 52
    move-object v3, p2

    .line 53
    move-object v4, p3

    .line 54
    .line 55
    move/from16 v5, p4

    .line 56
    .line 57
    move/from16 v6, p5

    .line 58
    .line 59
    move/from16 v7, p6

    .line 60
    .line 61
    .line 62
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/mediacodec/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    .line 63
    return-object v11
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-gt p2, v0, :cond_4

    .line 4
    .line 5
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    if-lez p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const-string v0, "audio/mpeg"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    const-string v0, "audio/3gpp"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    const-string v0, "audio/amr-wb"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    const-string v0, "audio/mp4a-latm"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    const-string v0, "audio/vorbis"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    const-string v0, "audio/opus"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    const-string v0, "audio/raw"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    const-string v0, "audio/flac"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    const-string v0, "audio/g711-alaw"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    const-string v0, "audio/g711-mlaw"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    const-string v0, "audio/gsm"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_1
    const-string v0, "audio/ac3"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    const/4 p1, 0x6

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_2
    const-string v0, "audio/eac3"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    const/16 p1, 0x10

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_3
    const/16 p1, 0x1e

    .line 126
    .line 127
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    const-string v1, "AssumedMaxChannelAdjustment: "

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string p0, ", ["

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string p0, " to "

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string p0, "]"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    .line 165
    const-string p2, "MediaCodecInfo"

    .line 166
    .line 167
    .line 168
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return p1

    .line 170
    :cond_4
    :goto_1
    return p2
.end method

.method private static c(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 8
    move-result p0

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/Point;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/o0;->l(II)I

    .line 14
    move-result p1

    .line 15
    mul-int/2addr p1, v0

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/o0;->l(II)I

    .line 19
    move-result p2

    .line 20
    mul-int/2addr p2, p0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    return-object v1
.end method

.method private static d(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/n;->c(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 7
    .line 8
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 9
    .line 10
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 11
    .line 12
    cmpl-double v0, p3, v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 17
    .line 18
    cmpg-double v0, p3, v0

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    .line 25
    move-result-wide p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private static f(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 3
    .param p0    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v0

    .line 26
    .line 27
    .line 28
    :goto_0
    const v1, 0xaba9500

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    if-lt p0, v1, :cond_1

    .line 32
    .line 33
    const/16 p0, 0x400

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    const v1, 0x7270e00

    .line 38
    .line 39
    if-lt p0, v1, :cond_2

    .line 40
    .line 41
    const/16 p0, 0x200

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_2
    const v1, 0x3938700

    .line 46
    .line 47
    if-lt p0, v1, :cond_3

    .line 48
    .line 49
    const/16 p0, 0x100

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_3
    const v1, 0x1c9c380

    .line 54
    .line 55
    if-lt p0, v1, :cond_4

    .line 56
    .line 57
    const/16 p0, 0x80

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_4
    const v1, 0x112a880

    .line 62
    .line 63
    if-lt p0, v1, :cond_5

    .line 64
    .line 65
    const/16 p0, 0x40

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_5
    const v1, 0xb71b00

    .line 70
    .line 71
    if-lt p0, v1, :cond_6

    .line 72
    .line 73
    const/16 p0, 0x20

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_6
    const v1, 0x6ddd00

    .line 78
    .line 79
    if-lt p0, v1, :cond_7

    .line 80
    .line 81
    const/16 p0, 0x10

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_7
    const v1, 0x36ee80

    .line 86
    .line 87
    if-lt p0, v1, :cond_8

    .line 88
    .line 89
    const/16 p0, 0x8

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_8
    const v1, 0x1b7740

    .line 94
    .line 95
    if-lt p0, v1, :cond_9

    .line 96
    const/4 p0, 0x4

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_9
    const v1, 0xc3500

    .line 101
    .line 102
    if-lt p0, v1, :cond_a

    .line 103
    const/4 p0, 0x2

    .line 104
    goto :goto_1

    .line 105
    :cond_a
    move p0, v2

    .line 106
    .line 107
    :goto_1
    new-instance v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 111
    .line 112
    iput v2, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 113
    .line 114
    iput p0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 115
    .line 116
    new-array p0, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 117
    .line 118
    aput-object v1, p0, v0

    .line 119
    return-object p0
.end method

.method private static h(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x13

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/n;->i(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static i(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "adaptive-playback"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private l(Lcom/google/android/exoplayer2/a2;)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/v;->q(Lcom/google/android/exoplayer2/a2;)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 22
    .line 23
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v0

    .line 30
    .line 31
    const-string v3, "video/dolby-vision"

    .line 32
    .line 33
    iget-object v4, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    const-string v3, "video/avc"

    .line 43
    .line 44
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    :goto_0
    move v0, v4

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    const-string v3, "video/hevc"

    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    const/4 v2, 0x2

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/n;->isVideo:Z

    .line 69
    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    const/16 v3, 0x2a

    .line 73
    .line 74
    if-eq v2, v3, :cond_4

    .line 75
    return v1

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/n;->g()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    sget v5, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 82
    .line 83
    const/16 v6, 0x17

    .line 84
    .line 85
    if-gt v5, v6, :cond_5

    .line 86
    .line 87
    const-string v5, "video/x-vnd.on2.vp9"

    .line 88
    .line 89
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    array-length v5, v3

    .line 97
    .line 98
    if-nez v5, :cond_5

    .line 99
    .line 100
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/n;->f(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 104
    move-result-object v3

    .line 105
    :cond_5
    array-length v5, v3

    .line 106
    move v6, v4

    .line 107
    .line 108
    :goto_2
    if-ge v6, v5, :cond_7

    .line 109
    .line 110
    aget-object v7, v3, v6

    .line 111
    .line 112
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 113
    .line 114
    if-ne v8, v2, :cond_6

    .line 115
    .line 116
    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 117
    .line 118
    if-lt v7, v0, :cond_6

    .line 119
    .line 120
    iget-object v7, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/mediacodec/n;->A(Ljava/lang/String;I)Z

    .line 124
    move-result v7

    .line 125
    .line 126
    if-nez v7, :cond_6

    .line 127
    return v1

    .line 128
    .line 129
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 130
    goto :goto_2

    .line 131
    .line 132
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    const-string v1, "codec.profileLevel, "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p1, ", "

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->codecMimeType:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 163
    return v4
.end method

.method private o(Lcom/google/android/exoplayer2/a2;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/v;->m(Lcom/google/android/exoplayer2/a2;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method private static q(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/n;->r(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static r(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "secure-playback"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static s(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/n;->t(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static t(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "tunneled-playback"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private v(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "AssumedSupport ["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, "] ["

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, ", "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    sget-object p1, Lcom/google/android/exoplayer2/util/o0;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, "]"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string v0, "MediaCodecInfo"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "NoSupport ["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, "] ["

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, ", "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    sget-object p1, Lcom/google/android/exoplayer2/util/o0;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, "]"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string v0, "MediaCodecInfo"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static x(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "audio/opus"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->MODEL:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "SM-T230"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method private static z(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x16

    .line 5
    .line 6
    if-gt v0, v1, :cond_2

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->MODEL:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "ODROID-XU3"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "Nexus 10"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_0
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0
.end method


# virtual methods
.method public b(II)Landroid/graphics/Point;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return-object v1

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/n;->c(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public e(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/decoder/i;
    .locals 13

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p2, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->isVideo:Z

    .line 17
    .line 18
    if-eqz v1, :cond_8

    .line 19
    .line 20
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 21
    .line 22
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 23
    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    or-int/lit16 v0, v0, 0x400

    .line 27
    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->adaptive:Z

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->width:I

    .line 33
    .line 34
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->width:I

    .line 35
    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->height:I

    .line 39
    .line 40
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->height:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    :cond_2
    or-int/lit16 v0, v0, 0x200

    .line 45
    .line 46
    :cond_3
    iget-object v1, p1, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 47
    .line 48
    iget-object v2, p2, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    or-int/lit16 v0, v0, 0x800

    .line 57
    .line 58
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/n;->y(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2;->g(Lcom/google/android/exoplayer2/a2;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    or-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    :cond_5
    if-nez v0, :cond_7

    .line 75
    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/decoder/i;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2;->g(Lcom/google/android/exoplayer2/a2;)Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    const/4 v1, 0x3

    .line 86
    :goto_1
    move v5, v1

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    const/4 v1, 0x2

    .line 89
    goto :goto_1

    .line 90
    :goto_2
    const/4 v6, 0x0

    .line 91
    move-object v1, v0

    .line 92
    move-object v3, p1

    .line 93
    move-object v4, p2

    .line 94
    .line 95
    .line 96
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

    .line 97
    return-object v0

    .line 98
    :cond_7
    move v12, v0

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_8
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 103
    .line 104
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 105
    .line 106
    if-eq v1, v2, :cond_9

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0x1000

    .line 109
    .line 110
    :cond_9
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 111
    .line 112
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 113
    .line 114
    if-eq v1, v2, :cond_a

    .line 115
    .line 116
    or-int/lit16 v0, v0, 0x2000

    .line 117
    .line 118
    :cond_a
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 119
    .line 120
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 121
    .line 122
    if-eq v1, v2, :cond_b

    .line 123
    .line 124
    or-int/lit16 v0, v0, 0x4000

    .line 125
    .line 126
    :cond_b
    if-nez v0, :cond_c

    .line 127
    .line 128
    const-string v1, "audio/mp4a-latm"

    .line 129
    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v1

    .line 135
    .line 136
    if-eqz v1, :cond_c

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/v;->q(Lcom/google/android/exoplayer2/a2;)Landroid/util/Pair;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/v;->q(Lcom/google/android/exoplayer2/a2;)Landroid/util/Pair;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    if-eqz v1, :cond_c

    .line 147
    .line 148
    if-eqz v2, :cond_c

    .line 149
    .line 150
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v1, Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 156
    move-result v1

    .line 157
    .line 158
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 164
    move-result v2

    .line 165
    .line 166
    const/16 v3, 0x2a

    .line 167
    .line 168
    if-ne v1, v3, :cond_c

    .line 169
    .line 170
    if-ne v2, v3, :cond_c

    .line 171
    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/decoder/i;

    .line 173
    .line 174
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 175
    const/4 v8, 0x3

    .line 176
    const/4 v9, 0x0

    .line 177
    move-object v4, v0

    .line 178
    move-object v6, p1

    .line 179
    move-object v7, p2

    .line 180
    .line 181
    .line 182
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

    .line 183
    return-object v0

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2;->g(Lcom/google/android/exoplayer2/a2;)Z

    .line 187
    move-result v1

    .line 188
    .line 189
    if-nez v1, :cond_d

    .line 190
    .line 191
    or-int/lit8 v0, v0, 0x20

    .line 192
    .line 193
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/n;->x(Ljava/lang/String;)Z

    .line 197
    move-result v1

    .line 198
    .line 199
    if-eqz v1, :cond_e

    .line 200
    .line 201
    or-int/lit8 v0, v0, 0x2

    .line 202
    .line 203
    :cond_e
    if-nez v0, :cond_7

    .line 204
    .line 205
    new-instance v0, Lcom/google/android/exoplayer2/decoder/i;

    .line 206
    .line 207
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 208
    const/4 v5, 0x1

    .line 209
    const/4 v6, 0x0

    .line 210
    move-object v1, v0

    .line 211
    move-object v3, p1

    .line 212
    move-object v4, p2

    .line 213
    .line 214
    .line 215
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

    .line 216
    return-object v0

    .line 217
    .line 218
    :goto_3
    new-instance v0, Lcom/google/android/exoplayer2/decoder/i;

    .line 219
    .line 220
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 221
    const/4 v11, 0x0

    .line 222
    move-object v7, v0

    .line 223
    move-object v9, p1

    .line 224
    move-object v10, p2

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

    .line 228
    return-object v0
.end method

.method public g()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 12
    :cond_1
    return-object v0
.end method

.method public j(I)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "channelCount.caps"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p1, "channelCount.aCaps"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/mediacodec/n;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    .line 37
    if-ge v0, p1, :cond_2

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v2, "channelCount.support, "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 58
    return v1

    .line 59
    :cond_2
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method public k(I)Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "sampleRate.caps"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p1, "sampleRate.aCaps"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "sampleRate.support, "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 50
    return v1

    .line 51
    :cond_2
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public m(Lcom/google/android/exoplayer2/a2;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/v$c;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->o(Lcom/google/android/exoplayer2/a2;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->l(Lcom/google/android/exoplayer2/a2;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->isVideo:Z

    .line 18
    .line 19
    const/16 v2, 0x15

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->width:I

    .line 25
    .line 26
    if-lez v0, :cond_6

    .line 27
    .line 28
    iget v4, p1, Lcom/google/android/exoplayer2/a2;->height:I

    .line 29
    .line 30
    if-gtz v4, :cond_2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    sget v5, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 34
    .line 35
    if-lt v5, v2, :cond_3

    .line 36
    .line 37
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 38
    float-to-double v1, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/n;->u(IID)Z

    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_3
    mul-int/2addr v0, v4

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/v;->N()I

    .line 48
    move-result v2

    .line 49
    .line 50
    if-gt v0, v2, :cond_4

    .line 51
    move v1, v3

    .line 52
    .line 53
    :cond_4
    if-nez v1, :cond_5

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v2, "legacyFrameSize, "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget v2, p1, Lcom/google/android/exoplayer2/a2;->width:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "x"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->height:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 86
    :cond_5
    return v1

    .line 87
    :cond_6
    :goto_0
    return v3

    .line 88
    .line 89
    :cond_7
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 90
    .line 91
    if-lt v0, v2, :cond_9

    .line 92
    .line 93
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 94
    const/4 v2, -0x1

    .line 95
    .line 96
    if-eq v0, v2, :cond_8

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/n;->k(I)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    :cond_8
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 105
    .line 106
    if-eq p1, v2, :cond_9

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->j(I)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-eqz p1, :cond_a

    .line 113
    :cond_9
    move v1, v3

    .line 114
    :cond_a
    return v1
.end method

.method public n()Z
    .locals 6

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    const-string v0, "video/x-vnd.on2.vp9"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->mimeType:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/n;->g()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 21
    move-result-object v0

    .line 22
    array-length v1, v0

    .line 23
    move v3, v2

    .line 24
    .line 25
    :goto_0
    if-ge v3, v1, :cond_1

    .line 26
    .line 27
    aget-object v4, v0, v3

    .line 28
    .line 29
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 30
    .line 31
    const/16 v5, 0x4000

    .line 32
    .line 33
    if-ne v4, v5, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return v2
.end method

.method public p(Lcom/google/android/exoplayer2/a2;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->isVideo:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/n;->adaptive:Z

    .line 7
    return p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/v;->q(Lcom/google/android/exoplayer2/a2;)Landroid/util/Pair;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 22
    .line 23
    const/16 v0, 0x2a

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    return-object v0
.end method

.method public u(IID)Z
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "sizeAndRate.caps"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p1, "sizeAndRate.vCaps"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    .line 25
    :cond_1
    sget v2, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 26
    .line 27
    const/16 v3, 0x1d

    .line 28
    .line 29
    const-string v4, "@"

    .line 30
    .line 31
    const-string v5, "x"

    .line 32
    const/4 v6, 0x1

    .line 33
    .line 34
    if-lt v2, v3, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/n$a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    return v6

    .line 43
    .line 44
    :cond_2
    if-ne v2, v6, :cond_3

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v2, "sizeAndRate.cover, "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 77
    return v1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/n;->d(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-nez v2, :cond_6

    .line 84
    .line 85
    if-ge p1, p2, :cond_5

    .line 86
    .line 87
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/n;->B(Ljava/lang/String;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/n;->d(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-nez v0, :cond_4

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v1, "sizeAndRate.rotated, "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->v(Ljava/lang/String;)V

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    const-string v2, "sizeAndRate.support, "

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/n;->w(Ljava/lang/String;)V

    .line 166
    return v1

    .line 167
    :cond_6
    :goto_1
    return v6
.end method
