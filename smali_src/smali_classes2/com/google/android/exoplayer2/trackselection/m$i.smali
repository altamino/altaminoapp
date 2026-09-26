.class final Lcom/google/android/exoplayer2/trackselection/m$i;
.super Lcom/google/android/exoplayer2/trackselection/m$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/trackselection/m$h<",
        "Lcom/google/android/exoplayer2/trackselection/m$i;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowMixedMimeTypes:Z

.field private final bitrate:I

.field private final codecPreferenceScore:I

.field private final hasMainOrNoRoleFlag:Z

.field private final isWithinMaxConstraints:Z

.field private final isWithinMinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

.field private final pixelCount:I

.field private final preferredMimeTypeMatchIndex:I

.field private final preferredRoleFlagsScore:I

.field private final selectionEligibility:I

.field private final usesHardwareAcceleration:Z

.field private final usesPrimaryDecoder:Z


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/f1;ILcom/google/android/exoplayer2/trackselection/m$d;IIZ)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/m$h;-><init>(ILcom/google/android/exoplayer2/source/f1;I)V

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 6
    .line 7
    iget-boolean p1, p4, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x18

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const/16 p1, 0x10

    .line 15
    .line 16
    :goto_0
    iget-boolean p2, p4, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 17
    const/4 p3, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    and-int p2, p6, p1

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    move p2, p3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p2, v0

    .line 28
    .line 29
    :goto_1
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->allowMixedMimeTypes:Z

    .line 30
    .line 31
    const/high16 p2, -0x40800000    # -1.0f

    .line 32
    const/4 p6, -0x1

    .line 33
    .line 34
    if-eqz p7, :cond_6

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 37
    .line 38
    iget v2, v1, Lcom/google/android/exoplayer2/a2;->width:I

    .line 39
    .line 40
    if-eq v2, p6, :cond_2

    .line 41
    .line 42
    iget v3, p4, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 43
    .line 44
    if-gt v2, v3, :cond_6

    .line 45
    .line 46
    :cond_2
    iget v2, v1, Lcom/google/android/exoplayer2/a2;->height:I

    .line 47
    .line 48
    if-eq v2, p6, :cond_3

    .line 49
    .line 50
    iget v3, p4, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 51
    .line 52
    if-gt v2, v3, :cond_6

    .line 53
    .line 54
    :cond_3
    iget v2, v1, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 55
    .line 56
    cmpl-float v3, v2, p2

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iget v3, p4, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 61
    int-to-float v3, v3

    .line 62
    .line 63
    cmpg-float v2, v2, v3

    .line 64
    .line 65
    if-gtz v2, :cond_6

    .line 66
    .line 67
    :cond_4
    iget v1, v1, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 68
    .line 69
    if-eq v1, p6, :cond_5

    .line 70
    .line 71
    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 72
    .line 73
    if-gt v1, v2, :cond_6

    .line 74
    :cond_5
    move v1, p3

    .line 75
    goto :goto_2

    .line 76
    :cond_6
    move v1, v0

    .line 77
    .line 78
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMaxConstraints:Z

    .line 79
    .line 80
    if-eqz p7, :cond_b

    .line 81
    .line 82
    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 83
    .line 84
    iget v1, p7, Lcom/google/android/exoplayer2/a2;->width:I

    .line 85
    .line 86
    if-eq v1, p6, :cond_7

    .line 87
    .line 88
    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 89
    .line 90
    if-lt v1, v2, :cond_b

    .line 91
    .line 92
    :cond_7
    iget v1, p7, Lcom/google/android/exoplayer2/a2;->height:I

    .line 93
    .line 94
    if-eq v1, p6, :cond_8

    .line 95
    .line 96
    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 97
    .line 98
    if-lt v1, v2, :cond_b

    .line 99
    .line 100
    :cond_8
    iget v1, p7, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 101
    .line 102
    cmpl-float p2, v1, p2

    .line 103
    .line 104
    if-eqz p2, :cond_9

    .line 105
    .line 106
    iget p2, p4, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 107
    int-to-float p2, p2

    .line 108
    .line 109
    cmpl-float p2, v1, p2

    .line 110
    .line 111
    if-ltz p2, :cond_b

    .line 112
    .line 113
    :cond_9
    iget p2, p7, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 114
    .line 115
    if-eq p2, p6, :cond_a

    .line 116
    .line 117
    iget p6, p4, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 118
    .line 119
    if-lt p2, p6, :cond_b

    .line 120
    :cond_a
    move p2, p3

    .line 121
    goto :goto_3

    .line 122
    :cond_b
    move p2, v0

    .line 123
    .line 124
    :goto_3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMinConstraints:Z

    .line 125
    .line 126
    .line 127
    invoke-static {p5, v0}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 128
    move-result p2

    .line 129
    .line 130
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinRendererCapabilities:Z

    .line 131
    .line 132
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 133
    .line 134
    iget p6, p2, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 135
    .line 136
    iput p6, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->bitrate:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a2;->f()I

    .line 140
    move-result p2

    .line 141
    .line 142
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->pixelCount:I

    .line 143
    .line 144
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 145
    .line 146
    iget p2, p2, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 147
    .line 148
    iget p6, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 149
    .line 150
    .line 151
    invoke-static {p2, p6}, Lcom/google/android/exoplayer2/trackselection/m;->v(II)I

    .line 152
    move-result p2

    .line 153
    .line 154
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->preferredRoleFlagsScore:I

    .line 155
    .line 156
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 157
    .line 158
    iget p2, p2, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 159
    .line 160
    if-eqz p2, :cond_d

    .line 161
    and-int/2addr p2, p3

    .line 162
    .line 163
    if-eqz p2, :cond_c

    .line 164
    goto :goto_4

    .line 165
    :cond_c
    move p2, v0

    .line 166
    goto :goto_5

    .line 167
    :cond_d
    :goto_4
    move p2, p3

    .line 168
    .line 169
    :goto_5
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->hasMainOrNoRoleFlag:Z

    .line 170
    move p2, v0

    .line 171
    .line 172
    :goto_6
    iget-object p6, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    .line 176
    move-result p6

    .line 177
    .line 178
    if-ge p2, p6, :cond_f

    .line 179
    .line 180
    iget-object p6, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 181
    .line 182
    iget-object p6, p6, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 183
    .line 184
    if-eqz p6, :cond_e

    .line 185
    .line 186
    iget-object p7, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 187
    .line 188
    .line 189
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object p7

    .line 191
    .line 192
    .line 193
    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result p6

    .line 195
    .line 196
    if-eqz p6, :cond_e

    .line 197
    goto :goto_7

    .line 198
    .line 199
    :cond_e
    add-int/lit8 p2, p2, 0x1

    .line 200
    goto :goto_6

    .line 201
    .line 202
    .line 203
    :cond_f
    const p2, 0x7fffffff

    .line 204
    .line 205
    :goto_7
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->preferredMimeTypeMatchIndex:I

    .line 206
    .line 207
    .line 208
    invoke-static {p5}, Lcom/google/android/exoplayer2/n3;->e(I)I

    .line 209
    move-result p2

    .line 210
    .line 211
    const/16 p4, 0x80

    .line 212
    .line 213
    if-ne p2, p4, :cond_10

    .line 214
    move p2, p3

    .line 215
    goto :goto_8

    .line 216
    :cond_10
    move p2, v0

    .line 217
    .line 218
    :goto_8
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesPrimaryDecoder:Z

    .line 219
    .line 220
    .line 221
    invoke-static {p5}, Lcom/google/android/exoplayer2/n3;->g(I)I

    .line 222
    move-result p2

    .line 223
    .line 224
    const/16 p4, 0x40

    .line 225
    .line 226
    if-ne p2, p4, :cond_11

    .line 227
    goto :goto_9

    .line 228
    :cond_11
    move p3, v0

    .line 229
    .line 230
    :goto_9
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesHardwareAcceleration:Z

    .line 231
    .line 232
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 233
    .line 234
    iget-object p2, p2, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    invoke-static {p2}, Lcom/google/android/exoplayer2/trackselection/m;->w(Ljava/lang/String;)I

    .line 238
    move-result p2

    .line 239
    .line 240
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->codecPreferenceScore:I

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, p5, p1}, Lcom/google/android/exoplayer2/trackselection/m$i;->j(II)I

    .line 244
    move-result p1

    .line 245
    .line 246
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->selectionEligibility:I

    .line 247
    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$i;->e(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$i;->f(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I

    move-result p0

    return p0
.end method

.method private static e(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/p;->j()Lcom/google/common/collect/p;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinRendererCapabilities:Z

    .line 7
    .line 8
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinRendererCapabilities:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->preferredRoleFlagsScore:I

    .line 15
    .line 16
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->preferredRoleFlagsScore:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->d(II)Lcom/google/common/collect/p;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->hasMainOrNoRoleFlag:Z

    .line 23
    .line 24
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->hasMainOrNoRoleFlag:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMaxConstraints:Z

    .line 31
    .line 32
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMaxConstraints:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMinConstraints:Z

    .line 39
    .line 40
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMinConstraints:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->preferredMimeTypeMatchIndex:I

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->preferredMimeTypeMatchIndex:I

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/google/common/collect/t0;->c()Lcom/google/common/collect/t0;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesPrimaryDecoder:Z

    .line 71
    .line 72
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->usesPrimaryDecoder:Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesHardwareAcceleration:Z

    .line 79
    .line 80
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->usesHardwareAcceleration:Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesPrimaryDecoder:Z

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesHardwareAcceleration:Z

    .line 91
    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->codecPreferenceScore:I

    .line 95
    .line 96
    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->codecPreferenceScore:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/p;->d(II)Lcom/google/common/collect/p;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/p;->i()I

    .line 104
    move-result p0

    .line 105
    return p0
.end method

.method private static f(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMaxConstraints:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinRendererCapabilities:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->x()Lcom/google/common/collect/t0;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->x()Lcom/google/common/collect/t0;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {}, Lcom/google/common/collect/p;->j()Lcom/google/common/collect/p;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->bitrate:I

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->bitrate:I

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 40
    .line 41
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->x()Lcom/google/common/collect/t0;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->y()Lcom/google/common/collect/t0;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->pixelCount:I

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->pixelCount:I

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->bitrate:I

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->bitrate:I

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/p;->i()I

    .line 96
    move-result p0

    .line 97
    return p0
.end method

.method public static h(Ljava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/m$i;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/m$i;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/p;->j()Lcom/google/common/collect/p;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/p;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/p;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/exoplayer2/trackselection/m$i;

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/p;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/p;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/google/android/exoplayer2/trackselection/m$i;

    .line 27
    .line 28
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/p;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Lcom/google/android/exoplayer2/trackselection/p;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    move-result v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p;->d(II)Lcom/google/common/collect/p;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/q;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/q;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    check-cast p0, Lcom/google/android/exoplayer2/trackselection/m$i;

    .line 59
    .line 60
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/q;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/q;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$i;

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/q;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/q;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0, p1, v1}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/p;->i()I

    .line 82
    move-result p0

    .line 83
    return p0
.end method

.method public static i(ILcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/trackselection/m$d;[II)Lcom/google/common/collect/a0;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/f1;",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            "[II)",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/trackselection/m$i;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    iget v0, v9, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 7
    .line 8
    iget v1, v9, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 9
    .line 10
    iget-boolean v2, v9, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 11
    .line 12
    .line 13
    invoke-static {v8, v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/m;->u(Lcom/google/android/exoplayer2/source/f1;IIZ)I

    .line 14
    move-result v10

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 18
    move-result-object v11

    .line 19
    const/4 v12, 0x0

    .line 20
    move v13, v12

    .line 21
    .line 22
    :goto_0
    iget v0, v8, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 23
    .line 24
    if-ge v13, v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v13}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2;->f()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7fffffff

    .line 36
    .line 37
    if-eq v10, v1, :cond_1

    .line 38
    const/4 v1, -0x1

    .line 39
    .line 40
    if-eq v0, v1, :cond_0

    .line 41
    .line 42
    if-gt v0, v10, :cond_0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v7, v12

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 47
    move v7, v0

    .line 48
    .line 49
    :goto_2
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/m$i;

    .line 50
    .line 51
    aget v5, p3, v13

    .line 52
    move-object v0, v14

    .line 53
    move v1, p0

    .line 54
    .line 55
    move-object/from16 v2, p1

    .line 56
    move v3, v13

    .line 57
    .line 58
    move-object/from16 v4, p2

    .line 59
    .line 60
    move/from16 v6, p4

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/trackselection/m$i;-><init>(ILcom/google/android/exoplayer2/source/f1;ILcom/google/android/exoplayer2/trackselection/m$d;IIZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v11, v14}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 67
    .line 68
    add-int/lit8 v13, v13, 0x1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v11}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method private j(II)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    iget v0, v0, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0x4000

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    return v1

    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMaxConstraints:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 28
    .line 29
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    return v1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMinConstraints:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->isWithinMaxConstraints:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 49
    .line 50
    iget v0, v0, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 51
    const/4 v1, -0x1

    .line 52
    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 56
    .line 57
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    and-int/2addr p1, p2

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    const/4 p1, 0x2

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p1, 0x1

    .line 70
    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->selectionEligibility:I

    return v0
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/trackselection/m$h;)Z
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$i;->k(Lcom/google/android/exoplayer2/trackselection/m$i;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public k(Lcom/google/android/exoplayer2/trackselection/m$i;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->allowMixedMimeTypes:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesPrimaryDecoder:Z

    .line 27
    .line 28
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->usesPrimaryDecoder:Z

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$i;->usesHardwareAcceleration:Z

    .line 33
    .line 34
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/m$i;->usesHardwareAcceleration:Z

    .line 35
    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 41
    :goto_1
    return p1
.end method
