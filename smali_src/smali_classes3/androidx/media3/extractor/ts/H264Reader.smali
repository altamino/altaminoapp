.class public final Landroidx/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private randomAccessIndicator:Z

.field private sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

.field private final sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Landroidx/media3/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field private final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    .line 6
    .line 7
    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 8
    .line 9
    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    .line 10
    const/4 p1, 0x3

    .line 11
    .line 12
    new-array p1, p1, [Z

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 17
    const/4 p2, 0x7

    .line 18
    .line 19
    const/16 p3, 0x80

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 25
    .line 26
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 27
    .line 28
    const/16 p2, 0x8

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 34
    .line 35
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 36
    const/4 p2, 0x6

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 49
    .line 50
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 54
    .line 55
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 56
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method private e(JIIJ)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 25
    const/4 v1, 0x3

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 51
    .line 52
    iget-object v3, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 53
    .line 54
    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 64
    .line 65
    iget-object v3, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 66
    .line 67
    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 77
    .line 78
    iget-object v3, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 79
    .line 80
    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v1, v2}, Landroidx/media3/container/NalUnitUtil;->l([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 87
    .line 88
    iget-object v4, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 89
    .line 90
    iget v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v1, v3}, Landroidx/media3/container/NalUnitUtil;->j([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    iget v3, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    .line 97
    .line 98
    iget v4, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 99
    .line 100
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4, v5}, Landroidx/media3/common/util/CodecSpecificDataUtil;->a(III)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    iget-object v4, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 107
    .line 108
    new-instance v5, Landroidx/media3/common/Format$Builder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 112
    .line 113
    iget-object v6, p0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    const-string/jumbo v6, "video/avc"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 124
    move-result-object v5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->c0(F)Landroidx/media3/common/Format$Builder;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v0}, Landroidx/media3/common/Format$Builder;->V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-interface {v4, v0}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/Format;)V

    .line 158
    const/4 v0, 0x1

    .line 159
    .line 160
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 161
    .line 162
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->f(Landroidx/media3/container/NalUnitUtil$SpsData;)V

    .line 166
    .line 167
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e(Landroidx/media3/container/NalUnitUtil$PpsData;)V

    .line 171
    .line 172
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 181
    goto :goto_0

    .line 182
    .line 183
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()Z

    .line 187
    move-result v0

    .line 188
    .line 189
    if-eqz v0, :cond_2

    .line 190
    .line 191
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 192
    .line 193
    iget-object v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 194
    .line 195
    iget v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v1, v0}, Landroidx/media3/container/NalUnitUtil;->l([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->f(Landroidx/media3/container/NalUnitUtil$SpsData;)V

    .line 205
    .line 206
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 210
    goto :goto_0

    .line 211
    .line 212
    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_3

    .line 219
    .line 220
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 221
    .line 222
    iget-object v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 223
    .line 224
    iget v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v1, v0}, Landroidx/media3/container/NalUnitUtil;->j([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e(Landroidx/media3/container/NalUnitUtil$PpsData;)V

    .line 234
    .line 235
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 239
    .line 240
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    .line 244
    move-result p4

    .line 245
    .line 246
    if-eqz p4, :cond_4

    .line 247
    .line 248
    iget-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 249
    .line 250
    iget-object v0, p4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 251
    .line 252
    iget p4, p4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 253
    .line 254
    .line 255
    invoke-static {v0, p4}, Landroidx/media3/container/NalUnitUtil;->q([BI)I

    .line 256
    move-result p4

    .line 257
    .line 258
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 259
    .line 260
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 261
    .line 262
    iget-object v1, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1, p4}, Landroidx/media3/common/util/ParsableByteArray;->S([BI)V

    .line 266
    .line 267
    iget-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 268
    const/4 v0, 0x4

    .line 269
    .line 270
    .line 271
    invoke-virtual {p4, v0}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 272
    .line 273
    iget-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    .line 274
    .line 275
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p4, p5, p6, v0}, Landroidx/media3/extractor/ts/SeiReader;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 279
    .line 280
    :cond_4
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 281
    .line 282
    iget-boolean v5, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 283
    .line 284
    iget-boolean v6, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 285
    move-wide v2, p1

    .line 286
    move v4, p3

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->b(JIZZ)Z

    .line 290
    move-result p1

    .line 291
    .line 292
    if-eqz p1, :cond_5

    .line 293
    const/4 p1, 0x0

    .line 294
    .line 295
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 296
    :cond_5
    return-void
.end method

.method private f([BII)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a([BII)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a([BII)V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a([BII)V

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->a([BII)V

    .line 33
    return-void
.end method

.method private g(JIJ)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e(I)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e(I)V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e(I)V

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 30
    move-wide v2, p1

    .line 31
    move v4, p3

    .line 32
    move-wide v5, p4

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h(JIJ)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/extractor/ts/H264Reader;->d()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->g()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 15
    move-result-object v2

    .line 16
    .line 17
    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 21
    move-result v5

    .line 22
    int-to-long v5, v5

    .line 23
    add-long/2addr v3, v5

    .line 24
    .line 25
    iput-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 31
    move-result v4

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, p1, v4}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->c([BII[Z)I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-ne p1, v1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/extractor/ts/H264Reader;->f([BII)V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {v2, p1}, Landroidx/media3/container/NalUnitUtil;->f([BI)I

    .line 50
    move-result v6

    .line 51
    .line 52
    sub-int v3, p1, v0

    .line 53
    .line 54
    if-lez v3, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2, v0, p1}, Landroidx/media3/extractor/ts/H264Reader;->f([BII)V

    .line 58
    .line 59
    :cond_1
    sub-int v10, v1, p1

    .line 60
    .line 61
    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 62
    int-to-long v7, v10

    .line 63
    sub-long/2addr v4, v7

    .line 64
    .line 65
    if-gez v3, :cond_2

    .line 66
    neg-int v0, v3

    .line 67
    :goto_1
    move v11, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 v0, 0x0

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :goto_2
    iget-wide v12, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 73
    move-object v7, p0

    .line 74
    move-wide v8, v4

    .line 75
    .line 76
    .line 77
    invoke-direct/range {v7 .. v13}, Landroidx/media3/extractor/ts/H264Reader;->e(JIIJ)V

    .line 78
    .line 79
    iget-wide v7, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 80
    move-object v3, p0

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/ts/H264Reader;->g(JIJ)V

    .line 84
    .line 85
    add-int/lit8 v0, p1, 0x3

    .line 86
    goto :goto_0
.end method

.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public c(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->c()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 21
    .line 22
    new-instance v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 23
    .line 24
    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 25
    .line 26
    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;ZZ)V

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ts/SeiReader;->b(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 37
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d()V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g()V

    .line 42
    :cond_0
    return-void
.end method
