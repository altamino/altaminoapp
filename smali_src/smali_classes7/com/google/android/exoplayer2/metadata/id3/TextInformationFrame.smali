.class public final Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x5

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    const/4 v4, 0x7

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x4

    .line 16
    .line 17
    if-lt v1, v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    move-result p0

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-lt v1, v4, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    move-result p0

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 106
    move-result v1

    .line 107
    .line 108
    if-lt v1, v6, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    move-result p0

    .line 117
    .line 118
    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object p0

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_2
    :goto_0
    return-object v0

    .line 125
    .line 126
    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    return-object p0
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/n2$b;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, -0x1

    .line 16
    .line 17
    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :sswitch_0
    const-string v1, "TYER"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    const/16 v7, 0x15

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_1
    const-string v1, "TRCK"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    const/16 v7, 0x14

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :sswitch_2
    const-string v1, "TPE3"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_2
    const/16 v7, 0x13

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :sswitch_3
    const-string v1, "TPE2"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_3
    const/16 v7, 0x12

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :sswitch_4
    const-string v1, "TPE1"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_4
    const/16 v7, 0x11

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :sswitch_5
    const-string v1, "TIT2"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_5
    const/16 v7, 0x10

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :sswitch_6
    const-string v1, "TEXT"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_6
    const/16 v7, 0xf

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :sswitch_7
    const-string v1, "TDRL"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-nez v0, :cond_7

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_7
    const/16 v7, 0xe

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :sswitch_8
    const-string v1, "TDRC"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-nez v0, :cond_8

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_8
    const/16 v7, 0xd

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :sswitch_9
    const-string v1, "TDAT"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v0

    .line 153
    .line 154
    if-nez v0, :cond_9

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_9
    const/16 v7, 0xc

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :sswitch_a
    const-string v1, "TCOM"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v0

    .line 167
    .line 168
    if-nez v0, :cond_a

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_a
    const/16 v7, 0xb

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :sswitch_b
    const-string v1, "TALB"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v0

    .line 181
    .line 182
    if-nez v0, :cond_b

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_b
    const/16 v7, 0xa

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :sswitch_c
    const-string v1, "TYE"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v0

    .line 195
    .line 196
    if-nez v0, :cond_c

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_c
    const/16 v7, 0x9

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :sswitch_d
    const-string v1, "TXT"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v0

    .line 209
    .line 210
    if-nez v0, :cond_d

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_d
    const/16 v7, 0x8

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :sswitch_e
    const-string v1, "TT2"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v0

    .line 223
    .line 224
    if-nez v0, :cond_e

    .line 225
    goto :goto_0

    .line 226
    :cond_e
    const/4 v7, 0x7

    .line 227
    goto :goto_0

    .line 228
    .line 229
    :sswitch_f
    const-string v1, "TRK"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    move-result v0

    .line 234
    .line 235
    if-nez v0, :cond_f

    .line 236
    goto :goto_0

    .line 237
    :cond_f
    const/4 v7, 0x6

    .line 238
    goto :goto_0

    .line 239
    .line 240
    :sswitch_10
    const-string v1, "TP3"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    move-result v0

    .line 245
    .line 246
    if-nez v0, :cond_10

    .line 247
    goto :goto_0

    .line 248
    :cond_10
    const/4 v7, 0x5

    .line 249
    goto :goto_0

    .line 250
    .line 251
    :sswitch_11
    const-string v1, "TP2"

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v0

    .line 256
    .line 257
    if-nez v0, :cond_11

    .line 258
    goto :goto_0

    .line 259
    :cond_11
    move v7, v2

    .line 260
    goto :goto_0

    .line 261
    .line 262
    :sswitch_12
    const-string v1, "TP1"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v0

    .line 267
    .line 268
    if-nez v0, :cond_12

    .line 269
    goto :goto_0

    .line 270
    :cond_12
    move v7, v3

    .line 271
    goto :goto_0

    .line 272
    .line 273
    :sswitch_13
    const-string v1, "TDA"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v0

    .line 278
    .line 279
    if-nez v0, :cond_13

    .line 280
    goto :goto_0

    .line 281
    :cond_13
    move v7, v5

    .line 282
    goto :goto_0

    .line 283
    .line 284
    :sswitch_14
    const-string v1, "TCM"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v0

    .line 289
    .line 290
    if-nez v0, :cond_14

    .line 291
    goto :goto_0

    .line 292
    :cond_14
    move v7, v6

    .line 293
    goto :goto_0

    .line 294
    .line 295
    :sswitch_15
    const-string v1, "TAL"

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v0

    .line 300
    .line 301
    if-nez v0, :cond_15

    .line 302
    goto :goto_0

    .line 303
    :cond_15
    move v7, v4

    .line 304
    .line 305
    .line 306
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->a(Ljava/lang/String;)Ljava/util/List;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 318
    move-result v1

    .line 319
    .line 320
    if-eq v1, v6, :cond_18

    .line 321
    .line 322
    if-eq v1, v5, :cond_17

    .line 323
    .line 324
    if-eq v1, v3, :cond_16

    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    .line 329
    :cond_16
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    check-cast v1, Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/n2$b;->d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 336
    .line 337
    .line 338
    :cond_17
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    move-result-object v1

    .line 340
    .line 341
    check-cast v1, Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/n2$b;->e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 345
    .line 346
    .line 347
    :cond_18
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    move-result-object v0

    .line 349
    .line 350
    check-cast v0, Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->a(Ljava/lang/String;)Ljava/util/List;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    .line 364
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 365
    move-result v1

    .line 366
    .line 367
    if-eq v1, v6, :cond_1b

    .line 368
    .line 369
    if-eq v1, v5, :cond_1a

    .line 370
    .line 371
    if-eq v1, v3, :cond_19

    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    .line 376
    :cond_19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    move-result-object v1

    .line 378
    .line 379
    check-cast v1, Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/n2$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 383
    .line 384
    .line 385
    :cond_1a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 386
    move-result-object v1

    .line 387
    .line 388
    check-cast v1, Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/n2$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 392
    .line 393
    .line 394
    :cond_1b
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 395
    move-result-object v0

    .line 396
    .line 397
    check-cast v0, Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 408
    move-result v0

    .line 409
    .line 410
    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    move-result-object v0

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 423
    .line 424
    goto/16 :goto_2

    .line 425
    .line 426
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 430
    goto :goto_2

    .line 431
    .line 432
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 433
    .line 434
    const-string v1, "/"

    .line 435
    .line 436
    .line 437
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->H0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 438
    move-result-object v0

    .line 439
    .line 440
    :try_start_1
    aget-object v1, v0, v4

    .line 441
    .line 442
    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 444
    move-result v1

    .line 445
    array-length v2, v0

    .line 446
    .line 447
    if-le v2, v6, :cond_1c

    .line 448
    .line 449
    aget-object v0, v0, v6

    .line 450
    .line 451
    .line 452
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 453
    move-result v0

    .line 454
    .line 455
    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    move-result-object v0

    .line 458
    goto :goto_1

    .line 459
    :cond_1c
    const/4 v0, 0x0

    .line 460
    .line 461
    .line 462
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    move-result-object v1

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/n2$b;->l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 467
    move-result-object p1

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    goto :goto_2

    .line 472
    .line 473
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 477
    goto :goto_2

    .line 478
    .line 479
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 483
    goto :goto_2

    .line 484
    .line 485
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 489
    goto :goto_2

    .line 490
    .line 491
    :pswitch_9
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 495
    move-result-object v0

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 499
    move-result v0

    .line 500
    .line 501
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 505
    move-result-object v1

    .line 506
    .line 507
    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 509
    move-result v1

    .line 510
    .line 511
    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    move-result-object v0

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 517
    move-result-object p1

    .line 518
    .line 519
    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    move-result-object v0

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 525
    goto :goto_2

    .line 526
    .line 527
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 531
    goto :goto_2

    .line 532
    .line 533
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2$b;->L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 537
    :catch_0
    :goto_2
    return-void

    .line 538
    nop

    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    :sswitch_data_0
    .sparse-switch
        0x1437f -> :sswitch_15
        0x143be -> :sswitch_14
        0x143d1 -> :sswitch_13
        0x14535 -> :sswitch_12
        0x14536 -> :sswitch_11
        0x14537 -> :sswitch_10
        0x1458d -> :sswitch_f
        0x145b2 -> :sswitch_e
        0x14650 -> :sswitch_d
        0x14660 -> :sswitch_c
        0x272ca3 -> :sswitch_b
        0x27348d -> :sswitch_a
        0x2736a3 -> :sswitch_9
        0x2738a1 -> :sswitch_8
        0x2738aa -> :sswitch_7
        0x273d2d -> :sswitch_6
        0x274b93 -> :sswitch_5
        0x276408 -> :sswitch_4
        0x276409 -> :sswitch_3
        0x27640a -> :sswitch_2
        0x276b66 -> :sswitch_1
        0x2785f2 -> :sswitch_0
    .end sparse-switch

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 52
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x20f

    .line 9
    add-int/2addr v1, v0

    .line 10
    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    add-int/2addr v1, v0

    .line 24
    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v2

    .line 34
    :cond_1
    add-int/2addr v1, v2

    .line 35
    return v1
.end method

.method public toString()Ljava/lang/String;
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
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, ": description="

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ": value="

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    return-void
.end method
