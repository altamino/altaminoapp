.class final Lcom/google/android/exoplayer2/extractor/flv/f;
.super Lcom/google/android/exoplayer2/extractor/flv/e;
.source "SourceFile"


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private hasOutputKeyframe:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/c0;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/c0;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/e0;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/e;-><init>(Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/util/y;->NAL_START_CODE:[B

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalStartCode:Lcom/google/android/exoplayer2/util/c0;

    .line 13
    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 15
    const/4 v0, 0x4

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 21
    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/exoplayer2/util/c0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/e$a;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result p1

    .line 5
    .line 6
    shr-int/lit8 v0, p1, 0x4

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0xf

    .line 9
    .line 10
    and-int/lit8 p1, p1, 0xf

    .line 11
    const/4 v1, 0x7

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->frameType:I

    .line 16
    const/4 p1, 0x5

    .line 17
    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1

    .line 23
    .line 24
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/e$a;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v2, "Video format not supported: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/flv/e$a;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method protected c(Lcom/google/android/exoplayer2/util/c0;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->o()I

    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    mul-long/2addr v1, v3

    .line 13
    .line 14
    add-long v4, p2, v1

    .line 15
    const/4 p2, 0x1

    .line 16
    const/4 p3, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->hasOutputFormat:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 28
    move-result v1

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 41
    move-result v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/a;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget v0, p1, Lcom/google/android/exoplayer2/video/a;->nalUnitLengthFieldLength:I

    .line 51
    .line 52
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalUnitLengthFieldLength:I

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 58
    .line 59
    const-string v1, "video/avc"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/a;->codecs:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->width:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->height:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->pixelWidthHeightRatio:F

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->a0(F)Lcom/google/android/exoplayer2/a2$b;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/a;->initializationData:Ljava/util/List;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/e;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 103
    .line 104
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->hasOutputFormat:Z

    .line 105
    return p3

    .line 106
    .line 107
    :cond_0
    if-ne v0, p2, :cond_4

    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->hasOutputFormat:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->frameType:I

    .line 114
    .line 115
    if-ne v0, p2, :cond_1

    .line 116
    move v6, p2

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    move v6, p3

    .line 119
    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->hasOutputKeyframe:Z

    .line 121
    .line 122
    if-nez v0, :cond_2

    .line 123
    .line 124
    if-nez v6, :cond_2

    .line 125
    return p3

    .line 126
    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 131
    move-result-object v0

    .line 132
    .line 133
    aput-byte p3, v0, p3

    .line 134
    .line 135
    aput-byte p3, v0, p2

    .line 136
    const/4 v1, 0x2

    .line 137
    .line 138
    aput-byte p3, v0, v1

    .line 139
    .line 140
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalUnitLengthFieldLength:I

    .line 141
    const/4 v1, 0x4

    .line 142
    .line 143
    rsub-int/lit8 v0, v0, 0x4

    .line 144
    move v7, p3

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 148
    move-result v2

    .line 149
    .line 150
    if-lez v2, :cond_3

    .line 151
    .line 152
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 156
    move-result-object v2

    .line 157
    .line 158
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalUnitLengthFieldLength:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 162
    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 167
    .line 168
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 172
    move-result v2

    .line 173
    .line 174
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalStartCode:Lcom/google/android/exoplayer2/util/c0;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 178
    .line 179
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/e;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 180
    .line 181
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->nalStartCode:Lcom/google/android/exoplayer2/util/c0;

    .line 182
    .line 183
    .line 184
    invoke-interface {v3, v8, v1}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 185
    .line 186
    add-int/lit8 v7, v7, 0x4

    .line 187
    .line 188
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/e;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 189
    .line 190
    .line 191
    invoke-interface {v3, p1, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 192
    add-int/2addr v7, v2

    .line 193
    goto :goto_1

    .line 194
    .line 195
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/e;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 196
    const/4 v8, 0x0

    .line 197
    const/4 v9, 0x0

    .line 198
    .line 199
    .line 200
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 201
    .line 202
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/f;->hasOutputKeyframe:Z

    .line 203
    return p2

    .line 204
    :cond_4
    return p3
.end method
