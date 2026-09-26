.class public final Lcom/google/android/exoplayer2/extractor/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/i$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/i$a;

.field private static final MIDI_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/i$a;


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
    sput-object v0, Lcom/google/android/exoplayer2/extractor/i;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/extractor/i$a;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/extractor/g;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/g;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/i$a;-><init>(Lcom/google/android/exoplayer2/extractor/i$a$a;)V

    .line 20
    .line 21
    sput-object v0, Lcom/google/android/exoplayer2/extractor/i;->FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/i$a;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/exoplayer2/extractor/i$a;

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/i$a;-><init>(Lcom/google/android/exoplayer2/extractor/i$a$a;)V

    .line 32
    .line 33
    sput-object v0, Lcom/google/android/exoplayer2/extractor/i;->MIDI_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/i$a;

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
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/i;->tsMode:I

    .line 7
    .line 8
    .line 9
    const v0, 0x1b8a0

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/i;->tsTimestampSearchBytes:I

    .line 12
    return-void
.end method

.method public static synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/i;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/i;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private d(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/l;",
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
    new-instance p1, Lcom/google/android/exoplayer2/extractor/avi/b;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/avi/b;-><init>()V

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
    sget-object p1, Lcom/google/android/exoplayer2/extractor/i;->MIDI_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/i$a;

    .line 20
    .line 21
    new-array v0, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/i$a;->a([Ljava/lang/Object;)Lcom/google/android/exoplayer2/extractor/l;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_4

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
    new-instance p1, Lcom/google/android/exoplayer2/extractor/jpeg/a;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;-><init>()V

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
    new-instance p1, Lq2/b;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Lq2/b;-><init>()V

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
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 55
    .line 56
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/i;->tsMode:I

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/i;->tsFlags:I

    .line 59
    .line 60
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/i;->tsTimestampSearchBytes:I

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/h0;-><init>(III)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :pswitch_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/a0;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/a0;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :pswitch_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/d;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/d;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :pswitch_8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/g;

    .line 91
    .line 92
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/i;->fragmentedMp4Flags:I

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 101
    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/i;->mp4Flags:I

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :pswitch_9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/f;

    .line 113
    .line 114
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/i;->mp3Flags:I

    .line 115
    .line 116
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/i;->constantBitrateSeekingEnabled:Z

    .line 117
    or-int/2addr v2, v3

    .line 118
    .line 119
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/i;->constantBitrateSeekingAlwaysEnabled:Z

    .line 120
    .line 121
    if-eqz v3, :cond_0

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move v0, v1

    .line 124
    :goto_0
    or-int/2addr v0, v2

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :pswitch_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 135
    .line 136
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/i;->matroskaFlags:I

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/e;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :pswitch_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/c;

    .line 147
    .line 148
    .line 149
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/flv/c;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_3

    .line 154
    .line 155
    :pswitch_c
    sget-object p1, Lcom/google/android/exoplayer2/extractor/i;->FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/i$a;

    .line 156
    const/4 v0, 0x1

    .line 157
    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    .line 160
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/i;->flacFlags:I

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    aput-object v2, v0, v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/i$a;->a([Ljava/lang/Object;)Lcom/google/android/exoplayer2/extractor/l;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    if-eqz p1, :cond_1

    .line 173
    .line 174
    .line 175
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    goto :goto_3

    .line 177
    .line 178
    :cond_1
    new-instance p1, Lp2/d;

    .line 179
    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/i;->flacFlags:I

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, v0}, Lp2/d;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_3

    .line 188
    .line 189
    :pswitch_d
    new-instance p1, Lo2/b;

    .line 190
    .line 191
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/i;->amrFlags:I

    .line 192
    .line 193
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/i;->constantBitrateSeekingEnabled:Z

    .line 194
    or-int/2addr v2, v3

    .line 195
    .line 196
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/i;->constantBitrateSeekingAlwaysEnabled:Z

    .line 197
    .line 198
    if-eqz v3, :cond_2

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    move v0, v1

    .line 201
    :goto_1
    or-int/2addr v0, v2

    .line 202
    .line 203
    .line 204
    invoke-direct {p1, v0}, Lo2/b;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    goto :goto_3

    .line 209
    .line 210
    :pswitch_e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/h;

    .line 211
    .line 212
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/i;->adtsFlags:I

    .line 213
    .line 214
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/i;->constantBitrateSeekingEnabled:Z

    .line 215
    or-int/2addr v2, v3

    .line 216
    .line 217
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/i;->constantBitrateSeekingAlwaysEnabled:Z

    .line 218
    .line 219
    if-eqz v3, :cond_3

    .line 220
    goto :goto_2

    .line 221
    :cond_3
    move v0, v1

    .line 222
    :goto_2
    or-int/2addr v0, v2

    .line 223
    .line 224
    .line 225
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/h;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    goto :goto_3

    .line 230
    .line 231
    :pswitch_f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/e;

    .line 232
    .line 233
    .line 234
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/e;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    goto :goto_3

    .line 239
    .line 240
    :pswitch_10
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/b;

    .line 241
    .line 242
    .line 243
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/b;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    :goto_3
    return-void

    .line 248
    nop

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
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
            "Lcom/google/android/exoplayer2/extractor/l;",
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
    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

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
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-class v1, Lcom/google/android/exoplayer2/extractor/l;

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
            "Lcom/google/android/exoplayer2/extractor/l;",
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
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/google/android/exoplayer2/extractor/l;

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
.method public declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/l;
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
            "Lcom/google/android/exoplayer2/extractor/l;"
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
    sget-object v1, Lcom/google/android/exoplayer2/extractor/i;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 6
    array-length v2, v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/l;->b(Ljava/util/Map;)I

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
    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/extractor/i;->d(ILjava/util/List;)V

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
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l;->c(Landroid/net/Uri;)I

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->d(ILjava/util/List;)V

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
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/extractor/i;->d(ILjava/util/List;)V

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
    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/l;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, [Lcom/google/android/exoplayer2/extractor/l;
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

.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/l;
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
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/i;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/l;

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
