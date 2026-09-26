.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field private static final MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingAlwaysEnabled:Z

.field private constantBitrateSeekingEnabled:Z

.field private flacFlags:I

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I

.field private tsSubtitleFormats:Lcom/google/common/collect/a0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private tsTimestampSearchBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 12
    .line 13
    new-instance v1, Landroidx/media3/extractor/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/media3/extractor/b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    .line 20
    .line 21
    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 22
    .line 23
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 24
    .line 25
    new-instance v1, Landroidx/media3/extractor/c;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Landroidx/media3/extractor/c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    .line 32
    .line 33
    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 7
    .line 8
    .line 9
    const v0, 0x1b8a0

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    .line 12
    return-void
.end method

.method public static synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private d(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    :pswitch_0
    goto/16 :goto_3

    .line 8
    .line 9
    :pswitch_1
    new-instance p1, Landroidx/media3/extractor/avi/AviExtractor;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/media3/extractor/avi/AviExtractor;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :pswitch_2
    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 20
    .line 21
    new-array v0, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->a([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :pswitch_3
    new-instance p1, Landroidx/media3/extractor/jpeg/JpegExtractor;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :pswitch_4
    new-instance p1, Landroidx/media3/extractor/wav/WavExtractor;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :pswitch_5
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/a0;

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/a0;

    .line 63
    .line 64
    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/TsExtractor;

    .line 65
    .line 66
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 67
    .line 68
    new-instance v1, Landroidx/media3/common/util/TimestampAdjuster;

    .line 69
    .line 70
    const-wide/16 v2, 0x0

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 74
    .line 75
    new-instance v2, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    .line 76
    .line 77
    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsFlags:I

    .line 78
    .line 79
    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/a0;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 83
    .line 84
    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :pswitch_6
    new-instance p1, Landroidx/media3/extractor/ts/PsExtractor;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :pswitch_7
    new-instance p1, Landroidx/media3/extractor/ogg/OggExtractor;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :pswitch_8
    new-instance p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 115
    .line 116
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    new-instance p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 125
    .line 126
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :pswitch_9
    new-instance p1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 137
    .line 138
    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 139
    .line 140
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    .line 141
    or-int/2addr v2, v3

    .line 142
    .line 143
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    .line 144
    .line 145
    if-eqz v3, :cond_1

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    move v0, v1

    .line 148
    :goto_0
    or-int/2addr v0, v2

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :pswitch_a
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 159
    .line 160
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :pswitch_b
    new-instance p1, Landroidx/media3/extractor/flv/FlvExtractor;

    .line 171
    .line 172
    .line 173
    invoke-direct {p1}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    goto :goto_3

    .line 178
    .line 179
    :pswitch_c
    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 180
    const/4 v0, 0x1

    .line 181
    .line 182
    new-array v0, v0, [Ljava/lang/Object;

    .line 183
    .line 184
    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    .line 185
    .line 186
    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    aput-object v2, v0, v1

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->a([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    if-eqz p1, :cond_2

    .line 197
    .line 198
    .line 199
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    goto :goto_3

    .line 201
    .line 202
    :cond_2
    new-instance p1, Landroidx/media3/extractor/flac/FlacExtractor;

    .line 203
    .line 204
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    .line 205
    .line 206
    .line 207
    invoke-direct {p1, v0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    goto :goto_3

    .line 212
    .line 213
    :pswitch_d
    new-instance p1, Landroidx/media3/extractor/amr/AmrExtractor;

    .line 214
    .line 215
    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 216
    .line 217
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    .line 218
    or-int/2addr v2, v3

    .line 219
    .line 220
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    .line 221
    .line 222
    if-eqz v3, :cond_3

    .line 223
    goto :goto_1

    .line 224
    :cond_3
    move v0, v1

    .line 225
    :goto_1
    or-int/2addr v0, v2

    .line 226
    .line 227
    .line 228
    invoke-direct {p1, v0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    goto :goto_3

    .line 233
    .line 234
    :pswitch_e
    new-instance p1, Landroidx/media3/extractor/ts/AdtsExtractor;

    .line 235
    .line 236
    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 237
    .line 238
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    .line 239
    or-int/2addr v2, v3

    .line 240
    .line 241
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    .line 242
    .line 243
    if-eqz v3, :cond_4

    .line 244
    goto :goto_2

    .line 245
    :cond_4
    move v0, v1

    .line 246
    :goto_2
    or-int/2addr v0, v2

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    goto :goto_3

    .line 254
    .line 255
    :pswitch_f
    new-instance p1, Landroidx/media3/extractor/ts/Ac4Extractor;

    .line 256
    .line 257
    .line 258
    invoke-direct {p1}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    goto :goto_3

    .line 263
    .line 264
    :pswitch_10
    new-instance p1, Landroidx/media3/extractor/ts/Ac3Extractor;

    .line 265
    .line 266
    .line 267
    invoke-direct {p1}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_5
    :goto_3
    return-void

    .line 272
    nop

    .line 273
    .line 274
    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static e()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    .line 4
    const-string v1, "androidx.media3.decoder.flac.FlacLibrary"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    .line 13
    const-string v4, "isAvailable"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-class v1, Landroidx/media3/extractor/Extractor;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    new-array v1, v1, [Ljava/lang/Class;

    .line 46
    .line 47
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    aput-object v3, v1, v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_0
    return-object v4
.end method

.method private static f()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Landroidx/media3/extractor/Extractor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-object v1, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 6
    array-length v2, v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroidx/media3/common/FileTypes;->b(Ljava/util/Map;)I

    .line 13
    move-result p2

    .line 14
    const/4 v2, -0x1

    .line 15
    .line 16
    if-eq p2, v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->d(ILjava/util/List;)V

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->c(Landroid/net/Uri;)I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eq p1, v2, :cond_1

    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->d(ILjava/util/List;)V

    .line 34
    :cond_1
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    :goto_1
    if-ge v3, v2, :cond_3

    .line 38
    .line 39
    aget v4, v1, v3

    .line 40
    .line 41
    if-eq v4, p2, :cond_2

    .line 42
    .line 43
    if-eq v4, p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v4, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->d(ILjava/util/List;)V

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    move-result p1

    .line 54
    .line 55
    new-array p1, p1, [Landroidx/media3/extractor/Extractor;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, [Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return-object p1

    .line 64
    :goto_2
    monitor-exit p0

    .line 65
    throw p1
.end method

.method public declared-synchronized createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 4
    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->a(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method
