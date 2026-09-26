.class final Lcom/google/android/exoplayer2/trackselection/m$b;
.super Lcom/google/android/exoplayer2/trackselection/m$h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/trackselection/m$h<",
        "Lcom/google/android/exoplayer2/trackselection/m$b;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final hasMainOrNoRoleFlag:Z

.field private final isDefaultSelectionFlag:Z

.field private final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final localeLanguageMatchIndex:I

.field private final localeLanguageScore:I

.field private final parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

.field private final preferredLanguageIndex:I

.field private final preferredLanguageScore:I

.field private final preferredMimeTypeMatchIndex:I

.field private final preferredRoleFlagsScore:I

.field private final sampleRate:I

.field private final selectionEligibility:I

.field private final usesHardwareAcceleration:Z

.field private final usesPrimaryDecoder:Z


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/f1;ILcom/google/android/exoplayer2/trackselection/m$d;IZLcom/google/common/base/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/f1;",
            "I",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            "IZ",
            "Lcom/google/common/base/p<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/m$h;-><init>(ILcom/google/android/exoplayer2/source/f1;I)V

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m;->T(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->language:Ljava/lang/String;

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p5, p1}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 20
    move-result p2

    .line 21
    .line 22
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinRendererCapabilities:Z

    .line 23
    move p2, p1

    .line 24
    .line 25
    :goto_0
    iget-object p3, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    const v0, 0x7fffffff

    .line 33
    .line 34
    if-ge p2, p3, :cond_1

    .line 35
    .line 36
    iget-object p3, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 37
    .line 38
    iget-object v1, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p3, v1, p1}, Lcom/google/android/exoplayer2/trackselection/m;->D(Lcom/google/android/exoplayer2/a2;Ljava/lang/String;Z)I

    .line 48
    move-result p3

    .line 49
    .line 50
    if-lez p3, :cond_0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move p3, p1

    .line 56
    move p2, v0

    .line 57
    .line 58
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredLanguageIndex:I

    .line 59
    .line 60
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredLanguageScore:I

    .line 61
    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 63
    .line 64
    iget p2, p2, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 65
    .line 66
    iget p3, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 67
    .line 68
    .line 69
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/trackselection/m;->v(II)I

    .line 70
    move-result p2

    .line 71
    .line 72
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredRoleFlagsScore:I

    .line 73
    .line 74
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 75
    .line 76
    iget p3, p2, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 77
    const/4 v1, 0x1

    .line 78
    .line 79
    if-eqz p3, :cond_3

    .line 80
    and-int/2addr p3, v1

    .line 81
    .line 82
    if-eqz p3, :cond_2

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move p3, p1

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    :goto_2
    move p3, v1

    .line 87
    .line 88
    :goto_3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->hasMainOrNoRoleFlag:Z

    .line 89
    .line 90
    iget p3, p2, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 91
    and-int/2addr p3, v1

    .line 92
    .line 93
    if-eqz p3, :cond_4

    .line 94
    move p3, v1

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    move p3, p1

    .line 97
    .line 98
    :goto_4
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isDefaultSelectionFlag:Z

    .line 99
    .line 100
    iget p3, p2, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 101
    .line 102
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->channelCount:I

    .line 103
    .line 104
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 105
    .line 106
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->sampleRate:I

    .line 107
    .line 108
    iget v2, p2, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 109
    .line 110
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->bitrate:I

    .line 111
    const/4 v3, -0x1

    .line 112
    .line 113
    if-eq v2, v3, :cond_5

    .line 114
    .line 115
    iget v4, p4, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 116
    .line 117
    if-gt v2, v4, :cond_7

    .line 118
    .line 119
    :cond_5
    if-eq p3, v3, :cond_6

    .line 120
    .line 121
    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 122
    .line 123
    if-gt p3, v2, :cond_7

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-interface {p7, p2}, Lcom/google/common/base/p;->apply(Ljava/lang/Object;)Z

    .line 127
    move-result p2

    .line 128
    .line 129
    if-eqz p2, :cond_7

    .line 130
    move p2, v1

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    move p2, p1

    .line 133
    .line 134
    :goto_5
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinConstraints:Z

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->c0()[Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    move p3, p1

    .line 140
    :goto_6
    array-length p7, p2

    .line 141
    .line 142
    if-ge p3, p7, :cond_9

    .line 143
    .line 144
    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 145
    .line 146
    aget-object v2, p2, p3

    .line 147
    .line 148
    .line 149
    invoke-static {p7, v2, p1}, Lcom/google/android/exoplayer2/trackselection/m;->D(Lcom/google/android/exoplayer2/a2;Ljava/lang/String;Z)I

    .line 150
    move-result p7

    .line 151
    .line 152
    if-lez p7, :cond_8

    .line 153
    goto :goto_7

    .line 154
    .line 155
    :cond_8
    add-int/lit8 p3, p3, 0x1

    .line 156
    goto :goto_6

    .line 157
    :cond_9
    move p7, p1

    .line 158
    move p3, v0

    .line 159
    .line 160
    :goto_7
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->localeLanguageMatchIndex:I

    .line 161
    .line 162
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->localeLanguageScore:I

    .line 163
    move p2, p1

    .line 164
    .line 165
    :goto_8
    iget-object p3, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    .line 169
    move-result p3

    .line 170
    .line 171
    if-ge p2, p3, :cond_b

    .line 172
    .line 173
    iget-object p3, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 174
    .line 175
    iget-object p3, p3, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 176
    .line 177
    if-eqz p3, :cond_a

    .line 178
    .line 179
    iget-object p7, p4, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 180
    .line 181
    .line 182
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object p7

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result p3

    .line 188
    .line 189
    if-eqz p3, :cond_a

    .line 190
    move v0, p2

    .line 191
    goto :goto_9

    .line 192
    .line 193
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 194
    goto :goto_8

    .line 195
    .line 196
    :cond_b
    :goto_9
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredMimeTypeMatchIndex:I

    .line 197
    .line 198
    .line 199
    invoke-static {p5}, Lcom/google/android/exoplayer2/n3;->e(I)I

    .line 200
    move-result p2

    .line 201
    .line 202
    const/16 p3, 0x80

    .line 203
    .line 204
    if-ne p2, p3, :cond_c

    .line 205
    move p2, v1

    .line 206
    goto :goto_a

    .line 207
    :cond_c
    move p2, p1

    .line 208
    .line 209
    :goto_a
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->usesPrimaryDecoder:Z

    .line 210
    .line 211
    .line 212
    invoke-static {p5}, Lcom/google/android/exoplayer2/n3;->g(I)I

    .line 213
    move-result p2

    .line 214
    .line 215
    const/16 p3, 0x40

    .line 216
    .line 217
    if-ne p2, p3, :cond_d

    .line 218
    move p1, v1

    .line 219
    .line 220
    :cond_d
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->usesHardwareAcceleration:Z

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/trackselection/m$b;->f(IZ)I

    .line 224
    move-result p1

    .line 225
    .line 226
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->selectionEligibility:I

    .line 227
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/m$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/m$b;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Lcom/google/android/exoplayer2/trackselection/m$b;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$b;->d(Lcom/google/android/exoplayer2/trackselection/m$b;)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static e(ILcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/trackselection/m$d;[IZLcom/google/common/base/p;)Lcom/google/common/collect/a0;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/f1;",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            "[IZ",
            "Lcom/google/common/base/p<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;)",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/trackselection/m$b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v10, p1

    .line 7
    .line 8
    :goto_0
    iget v2, v10, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/m$b;

    .line 13
    .line 14
    aget v7, p3, v1

    .line 15
    move-object v2, v11

    .line 16
    move v3, p0

    .line 17
    move-object v4, p1

    .line 18
    move v5, v1

    .line 19
    move-object v6, p2

    .line 20
    .line 21
    move/from16 v8, p4

    .line 22
    .line 23
    move-object/from16 v9, p5

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/trackselection/m$b;-><init>(ILcom/google/android/exoplayer2/source/f1;ILcom/google/android/exoplayer2/trackselection/m$d;IZLcom/google/common/base/p;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v11}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method private f(IZ)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinConstraints:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinConstraints:Z

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 36
    .line 37
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 38
    const/4 v0, -0x1

    .line 39
    .line 40
    if-eq p1, v0, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 43
    .line 44
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    if-nez p2, :cond_3

    .line 57
    :cond_2
    const/4 p1, 0x2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 p1, 0x1

    .line 60
    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->selectionEligibility:I

    return v0
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/trackselection/m$h;)Z
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$b;->h(Lcom/google/android/exoplayer2/trackselection/m$b;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$b;->d(Lcom/google/android/exoplayer2/trackselection/m$b;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/trackselection/m$b;)I
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinConstraints:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinRendererCapabilities:Z

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
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinRendererCapabilities:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinRendererCapabilities:Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredLanguageIndex:I

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredLanguageIndex:I

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/common/collect/t0;->c()Lcom/google/common/collect/t0;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredLanguageScore:I

    .line 60
    .line 61
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredLanguageScore:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->d(II)Lcom/google/common/collect/p;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredRoleFlagsScore:I

    .line 68
    .line 69
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredRoleFlagsScore:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->d(II)Lcom/google/common/collect/p;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isDefaultSelectionFlag:Z

    .line 76
    .line 77
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->isDefaultSelectionFlag:Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->hasMainOrNoRoleFlag:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->hasMainOrNoRoleFlag:Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->localeLanguageMatchIndex:I

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->localeLanguageMatchIndex:I

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/google/common/collect/t0;->c()Lcom/google/common/collect/t0;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->localeLanguageScore:I

    .line 116
    .line 117
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->localeLanguageScore:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->d(II)Lcom/google/common/collect/p;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinConstraints:Z

    .line 124
    .line 125
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->isWithinConstraints:Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredMimeTypeMatchIndex:I

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->preferredMimeTypeMatchIndex:I

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/google/common/collect/t0;->c()Lcom/google/common/collect/t0;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->bitrate:I

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->bitrate:I

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 168
    .line 169
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 170
    .line 171
    if-eqz v4, :cond_1

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->x()Lcom/google/common/collect/t0;

    .line 175
    move-result-object v4

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/google/common/collect/t0;->f()Lcom/google/common/collect/t0;

    .line 179
    move-result-object v4

    .line 180
    goto :goto_1

    .line 181
    .line 182
    .line 183
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->y()Lcom/google/common/collect/t0;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    .line 187
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->usesPrimaryDecoder:Z

    .line 191
    .line 192
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->usesPrimaryDecoder:Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->usesHardwareAcceleration:Z

    .line 199
    .line 200
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->usesHardwareAcceleration:Z

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/p;->g(ZZ)Lcom/google/common/collect/p;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->channelCount:I

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->channelCount:I

    .line 213
    .line 214
    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->sampleRate:I

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->sampleRate:I

    .line 229
    .line 230
    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object v3

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->bitrate:I

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v2

    .line 243
    .line 244
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->bitrate:I

    .line 245
    .line 246
    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v3

    .line 249
    .line 250
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->language:Ljava/lang/String;

    .line 251
    .line 252
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->language:Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    move-result p1

    .line 257
    .line 258
    if-eqz p1, :cond_2

    .line 259
    goto :goto_2

    .line 260
    .line 261
    .line 262
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/m;->y()Lcom/google/common/collect/t0;

    .line 263
    move-result-object v0

    .line 264
    .line 265
    .line 266
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/p;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/google/common/collect/p;->i()I

    .line 271
    move-result p1

    .line 272
    return p1
.end method

.method public h(Lcom/google/android/exoplayer2/trackselection/m$b;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 10
    .line 11
    iget v1, v1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 12
    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 16
    .line 17
    iget v3, v3, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 18
    .line 19
    if-ne v1, v3, :cond_3

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 42
    .line 43
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 48
    .line 49
    iget v1, v1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 50
    .line 51
    if-eq v1, v2, :cond_3

    .line 52
    .line 53
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 54
    .line 55
    iget v2, v2, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 56
    .line 57
    if-ne v1, v2, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->usesPrimaryDecoder:Z

    .line 64
    .line 65
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->usesPrimaryDecoder:Z

    .line 66
    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$b;->usesHardwareAcceleration:Z

    .line 70
    .line 71
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/m$b;->usesHardwareAcceleration:Z

    .line 72
    .line 73
    if-ne v0, p1, :cond_3

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 p1, 0x0

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 78
    :goto_1
    return p1
.end method
