.class public final Lcom/google/android/exoplayer2/extractor/ts/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/p$b;
    }
.end annotation


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/e0;

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private final prefixFlags:[Z

.field private randomAccessIndicator:Z

.field private sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

.field private final sei:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private final seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

.field private final seiWrapper:Lcom/google/android/exoplayer2/util/c0;

.field private final sps:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/d0;ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->allowNonIdrKeyframes:Z

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->detectAccessUnits:Z

    .line 10
    const/4 p1, 0x3

    .line 11
    .line 12
    new-array p1, p1, [Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->prefixFlags:[Z

    .line 15
    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 17
    const/4 p2, 0x7

    .line 18
    .line 19
    const/16 p3, 0x80

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 25
    .line 26
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 27
    .line 28
    const/16 p2, 0x8

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 36
    const/4 p2, 0x6

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pesTimeUs:J

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 56
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method private e(JIIJ)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->hasOutputFormat:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->hasOutputFormat:Z

    .line 25
    const/4 v1, 0x3

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 51
    .line 52
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 53
    .line 54
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 64
    .line 65
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 66
    .line 67
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 77
    .line 78
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 79
    .line 80
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/y;->l([BII)Lcom/google/android/exoplayer2/util/y$c;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 87
    .line 88
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 89
    .line 90
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v1, v3}, Lcom/google/android/exoplayer2/util/y;->j([BII)Lcom/google/android/exoplayer2/util/y$b;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    iget v3, v2, Lcom/google/android/exoplayer2/util/y$c;->profileIdc:I

    .line 97
    .line 98
    iget v4, v2, Lcom/google/android/exoplayer2/util/y$c;->constraintsFlagsAndReservedZero2Bits:I

    .line 99
    .line 100
    iget v5, v2, Lcom/google/android/exoplayer2/util/y$c;->levelIdc:I

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/e;->a(III)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 107
    .line 108
    new-instance v5, Lcom/google/android/exoplayer2/a2$b;

    .line 109
    .line 110
    .line 111
    invoke-direct {v5}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 112
    .line 113
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->formatId:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    const-string v6, "video/avc"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    iget v5, v2, Lcom/google/android/exoplayer2/util/y$c;->width:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    iget v5, v2, Lcom/google/android/exoplayer2/util/y$c;->height:I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    .line 139
    move-result-object v3

    .line 140
    .line 141
    iget v5, v2, Lcom/google/android/exoplayer2/util/y$c;->pixelWidthHeightRatio:F

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/a2$b;->a0(F)Lcom/google/android/exoplayer2/a2$b;

    .line 145
    move-result-object v3

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 157
    const/4 v0, 0x1

    .line 158
    .line 159
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->hasOutputFormat:Z

    .line 160
    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->f(Lcom/google/android/exoplayer2/util/y$c;)V

    .line 165
    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->e(Lcom/google/android/exoplayer2/util/y$b;)V

    .line 170
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 175
    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 180
    goto :goto_0

    .line 181
    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 191
    .line 192
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 193
    .line 194
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 195
    .line 196
    .line 197
    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/y;->l([BII)Lcom/google/android/exoplayer2/util/y$c;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->f(Lcom/google/android/exoplayer2/util/y$c;)V

    .line 204
    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 209
    goto :goto_0

    .line 210
    .line 211
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    .line 215
    move-result v0

    .line 216
    .line 217
    if-eqz v0, :cond_3

    .line 218
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 220
    .line 221
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 222
    .line 223
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/y;->j([BII)Lcom/google/android/exoplayer2/util/y$b;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->e(Lcom/google/android/exoplayer2/util/y$b;)V

    .line 233
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 238
    .line 239
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 243
    move-result p4

    .line 244
    .line 245
    if-eqz p4, :cond_4

    .line 246
    .line 247
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 248
    .line 249
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 250
    .line 251
    iget p4, p4, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 252
    .line 253
    .line 254
    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/util/y;->q([BI)I

    .line 255
    move-result p4

    .line 256
    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 258
    .line 259
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 260
    .line 261
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/util/c0;->N([BI)V

    .line 265
    .line 266
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 267
    const/4 v0, 0x4

    .line 268
    .line 269
    .line 270
    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 271
    .line 272
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p4, p5, p6, v0}, Lcom/google/android/exoplayer2/extractor/ts/d0;->a(JLcom/google/android/exoplayer2/util/c0;)V

    .line 278
    .line 279
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 280
    .line 281
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->hasOutputFormat:Z

    .line 282
    .line 283
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->randomAccessIndicator:Z

    .line 284
    move-wide v2, p1

    .line 285
    move v4, p3

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->b(JIZZ)Z

    .line 289
    move-result p1

    .line 290
    .line 291
    if-eqz p1, :cond_5

    .line 292
    const/4 p1, 0x0

    .line 293
    .line 294
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->randomAccessIndicator:Z

    .line 295
    :cond_5
    return-void
.end method

.method private f([BII)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->hasOutputFormat:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->a([BII)V

    .line 33
    return-void
.end method

.method private g(JIJ)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->hasOutputFormat:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 30
    move-wide v2, p1

    .line 31
    move v4, p3

    .line 32
    move-wide v5, p4

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->h(JIJ)V

    .line 36
    return-void
.end method


# virtual methods
.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pesTimeUs:J

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->randomAccessIndicator:Z

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/p;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 15
    move-result-object v2

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->totalBytesWritten:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 21
    move-result v5

    .line 22
    int-to-long v5, v5

    .line 23
    add-long/2addr v3, v5

    .line 24
    .line 25
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->totalBytesWritten:J

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 31
    move-result v4

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, p1, v4}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->prefixFlags:[Z

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/util/y;->c([BII[Z)I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-ne p1, v1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p;->f([BII)V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/y;->f([BI)I

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
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/p;->f([BII)V

    .line 58
    .line 59
    :cond_1
    sub-int v10, v1, p1

    .line 60
    .line 61
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->totalBytesWritten:J

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
    iget-wide v12, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pesTimeUs:J

    .line 73
    move-object v7, p0

    .line 74
    move-wide v8, v4

    .line 75
    .line 76
    .line 77
    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/ts/p;->e(JIIJ)V

    .line 78
    .line 79
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pesTimeUs:J

    .line 80
    move-object v3, p0

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/ts/p;->g(JIJ)V

    .line 84
    .line 85
    add-int/lit8 v0, p1, 0x3

    .line 86
    goto :goto_0
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->b()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->formatId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->c()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->allowNonIdrKeyframes:Z

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->detectAccessUnits:Z

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/p$b;-><init>(Lcom/google/android/exoplayer2/extractor/e0;ZZ)V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/d0;->b(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V

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
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->totalBytesWritten:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->randomAccessIndicator:Z

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pesTimeUs:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->prefixFlags:[Z

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/y;->a([Z)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->g()V

    .line 42
    :cond_0
    return-void
.end method
