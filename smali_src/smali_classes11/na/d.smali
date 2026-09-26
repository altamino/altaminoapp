.class public final Lna/d;
.super Lorg/schabi/newpipe/extractor/linkhandler/b;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lna/d;

.field private static final SUBPATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    const-string v0, "^([a-zA-Z0-9_-]{11})"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lna/d;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    new-instance v0, Lna/d;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lna/d;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lna/d;->INSTANCE:Lna/d;

    .line 16
    .line 17
    const-string v1, "embed/"

    .line 18
    .line 19
    const-string v2, "live/"

    .line 20
    .line 21
    const-string v3, "shorts/"

    .line 22
    .line 23
    const-string v4, "watch/"

    .line 24
    .line 25
    const-string v5, "v/"

    .line 26
    .line 27
    const-string v6, "w/"

    .line 28
    .line 29
    .line 30
    invoke-static/range {v1 .. v6}, Lna/c;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Lna/d;->SUBPATHS:Ljava/util/List;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/b;-><init>()V

    .line 4
    return-void
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lna/d;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    new-instance p0, Laa/h;

    .line 10
    .line 11
    const-string v0, "The given string is not a YouTube video ID"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lna/d;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lna/d;->SUBPATHS:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public static l()Lna/d;
    .locals 1

    .line 1
    sget-object v0, Lna/d;->INSTANCE:Lna/d;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    const-string v3, "vnd.youtube"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v3, "vnd.youtube.launch"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "//"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lna/d;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    return-object v2

    .line 52
    .line 53
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "https:"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-static {v1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object p1

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {p1}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 78
    move-result-object v1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 90
    move-result v4

    .line 91
    const/4 v5, 0x1

    .line 92
    .line 93
    if-nez v4, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {v1}, Lqa/y;->l(Ljava/net/URL;)Z

    .line 101
    move-result v4

    .line 102
    .line 103
    if-eqz v4, :cond_32

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->e0(Ljava/net/URL;)Z

    .line 107
    move-result v4

    .line 108
    .line 109
    if-nez v4, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->d0(Ljava/net/URL;)Z

    .line 113
    move-result v4

    .line 114
    .line 115
    if-nez v4, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->U(Ljava/net/URL;)Z

    .line 119
    move-result v4

    .line 120
    .line 121
    if-nez v4, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->V(Ljava/net/URL;)Z

    .line 125
    move-result v4

    .line 126
    .line 127
    if-nez v4, :cond_5

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->X(Ljava/net/URL;)Z

    .line 131
    move-result v4

    .line 132
    .line 133
    if-nez v4, :cond_5

    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    .line 138
    :cond_5
    invoke-static {}, Lna/b;->n()Lna/b;

    .line 139
    move-result-object v4

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, p1}, Lorg/schabi/newpipe/extractor/linkhandler/b;->a(Ljava/lang/String;)Z

    .line 143
    move-result v4

    .line 144
    .line 145
    const-string v6, "Error: no suitable URL: "

    .line 146
    .line 147
    if-nez v4, :cond_31

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 158
    move-result v4

    .line 159
    const/4 v7, 0x6

    .line 160
    const/4 v8, -0x1

    .line 161
    .line 162
    .line 163
    sparse-switch v4, :sswitch_data_0

    .line 164
    :goto_1
    move v0, v8

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :sswitch_0
    const-string v0, "YOUTUBE.COM"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v0

    .line 173
    .line 174
    if-nez v0, :cond_6

    .line 175
    goto :goto_1

    .line 176
    .line 177
    :cond_6
    const/16 v0, 0x23

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :sswitch_1
    const-string v0, "INVIDIOUS.SITE"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v0

    .line 186
    .line 187
    if-nez v0, :cond_7

    .line 188
    goto :goto_1

    .line 189
    .line 190
    :cond_7
    const/16 v0, 0x22

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :sswitch_2
    const-string v0, "WWW.INVIDIO.US"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v0

    .line 199
    .line 200
    if-nez v0, :cond_8

    .line 201
    goto :goto_1

    .line 202
    .line 203
    :cond_8
    const/16 v0, 0x21

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :sswitch_3
    const-string v0, "WWW.YOUTUBE-NOCOOKIE.COM"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v0

    .line 212
    .line 213
    if-nez v0, :cond_9

    .line 214
    goto :goto_1

    .line 215
    .line 216
    :cond_9
    const/16 v0, 0x20

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :sswitch_4
    const-string v0, "INVIDIOUS.SILKKY.CLOUD"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v0

    .line 225
    .line 226
    if-nez v0, :cond_a

    .line 227
    goto :goto_1

    .line 228
    .line 229
    :cond_a
    const/16 v0, 0x1f

    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :sswitch_5
    const-string v0, "INVIDIOUS.BLAMEFRAN.NET"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result v0

    .line 238
    .line 239
    if-nez v0, :cond_b

    .line 240
    goto :goto_1

    .line 241
    .line 242
    :cond_b
    const/16 v0, 0x1e

    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :sswitch_6
    const-string v0, "INVIDIOUS.048596.XYZ"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v0

    .line 251
    .line 252
    if-nez v0, :cond_c

    .line 253
    goto :goto_1

    .line 254
    .line 255
    :cond_c
    const/16 v0, 0x1d

    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :sswitch_7
    const-string v0, "YTPRIVATE.COM"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v0

    .line 264
    .line 265
    if-nez v0, :cond_d

    .line 266
    goto :goto_1

    .line 267
    .line 268
    :cond_d
    const/16 v0, 0x1c

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :sswitch_8
    const-string v0, "REDIRECT.INVIDIOUS.IO"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v0

    .line 277
    .line 278
    if-nez v0, :cond_e

    .line 279
    goto :goto_1

    .line 280
    .line 281
    :cond_e
    const/16 v0, 0x1b

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :sswitch_9
    const-string v0, "INVIDIOUS.SNOPYTA.ORG"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v0

    .line 290
    .line 291
    if-nez v0, :cond_f

    .line 292
    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :cond_f
    const/16 v0, 0x1a

    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :sswitch_a
    const-string v0, "INVIDIOUS.FDN.FR"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v0

    .line 304
    .line 305
    if-nez v0, :cond_10

    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_10
    const/16 v0, 0x19

    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :sswitch_b
    const-string v0, "INVIDIO.US"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v0

    .line 318
    .line 319
    if-nez v0, :cond_11

    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :cond_11
    const/16 v0, 0x18

    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :sswitch_c
    const-string v0, "TUBE.CONNECT.CAFE"

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v0

    .line 332
    .line 333
    if-nez v0, :cond_12

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_12
    const/16 v0, 0x17

    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :sswitch_d
    const-string v0, "WWW.YOUTUBE.COM"

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result v0

    .line 346
    .line 347
    if-nez v0, :cond_13

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_13
    const/16 v0, 0x16

    .line 352
    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :sswitch_e
    const-string v0, "INVIDIOUS.EXONIP.DE"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    move-result v0

    .line 360
    .line 361
    if-nez v0, :cond_14

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_14
    const/16 v0, 0x15

    .line 366
    .line 367
    goto/16 :goto_2

    .line 368
    .line 369
    :sswitch_f
    const-string v0, "Y.COM.CM"

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v0

    .line 374
    .line 375
    if-nez v0, :cond_15

    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_15
    const/16 v0, 0x14

    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :sswitch_10
    const-string v0, "INVIDIOUS.MOOMOO.ME"

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    move-result v0

    .line 388
    .line 389
    if-nez v0, :cond_16

    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :cond_16
    const/16 v0, 0x13

    .line 394
    .line 395
    goto/16 :goto_2

    .line 396
    .line 397
    :sswitch_11
    const-string v0, "HOOKTUBE.COM"

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    move-result v0

    .line 402
    .line 403
    if-nez v0, :cond_17

    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_17
    const/16 v0, 0x12

    .line 408
    .line 409
    goto/16 :goto_2

    .line 410
    .line 411
    :sswitch_12
    const-string v0, "YOUTU.BE"

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v0

    .line 416
    .line 417
    if-nez v0, :cond_18

    .line 418
    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :cond_18
    const/16 v0, 0x11

    .line 422
    .line 423
    goto/16 :goto_2

    .line 424
    .line 425
    :sswitch_13
    const-string v0, "INVIDIOUS-US.KAVIN.ROCKS"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v0

    .line 430
    .line 431
    if-nez v0, :cond_19

    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :cond_19
    const/16 v0, 0x10

    .line 436
    .line 437
    goto/16 :goto_2

    .line 438
    .line 439
    :sswitch_14
    const-string v0, "INVIDIOUS.KAVIN.ROCKS"

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    move-result v0

    .line 444
    .line 445
    if-nez v0, :cond_1a

    .line 446
    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :cond_1a
    const/16 v0, 0xf

    .line 450
    .line 451
    goto/16 :goto_2

    .line 452
    .line 453
    :sswitch_15
    const-string v0, "MUSIC.YOUTUBE.COM"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    move-result v0

    .line 458
    .line 459
    if-nez v0, :cond_1b

    .line 460
    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :cond_1b
    const/16 v0, 0xe

    .line 464
    .line 465
    goto/16 :goto_2

    .line 466
    .line 467
    :sswitch_16
    const-string v0, "YEWTU.BE"

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v0

    .line 472
    .line 473
    if-nez v0, :cond_1c

    .line 474
    .line 475
    goto/16 :goto_1

    .line 476
    .line 477
    :cond_1c
    const/16 v0, 0xd

    .line 478
    .line 479
    goto/16 :goto_2

    .line 480
    .line 481
    :sswitch_17
    const-string v0, "INVIDIOU.SITE"

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    move-result v0

    .line 486
    .line 487
    if-nez v0, :cond_1d

    .line 488
    .line 489
    goto/16 :goto_1

    .line 490
    .line 491
    :cond_1d
    const/16 v0, 0xc

    .line 492
    .line 493
    goto/16 :goto_2

    .line 494
    .line 495
    :sswitch_18
    const-string v0, "INV.RIVERSIDE.ROCKS"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    move-result v0

    .line 500
    .line 501
    if-nez v0, :cond_1e

    .line 502
    .line 503
    goto/16 :goto_1

    .line 504
    .line 505
    :cond_1e
    const/16 v0, 0xb

    .line 506
    .line 507
    goto/16 :goto_2

    .line 508
    .line 509
    :sswitch_19
    const-string v0, "DEV.INVIDIO.US"

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    move-result v0

    .line 514
    .line 515
    if-nez v0, :cond_1f

    .line 516
    .line 517
    goto/16 :goto_1

    .line 518
    .line 519
    :cond_1f
    const/16 v0, 0xa

    .line 520
    .line 521
    goto/16 :goto_2

    .line 522
    .line 523
    :sswitch_1a
    const-string v0, "INVIDIOUS.NAMAZSO.EU"

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v0

    .line 528
    .line 529
    if-nez v0, :cond_20

    .line 530
    .line 531
    goto/16 :goto_1

    .line 532
    .line 533
    :cond_20
    const/16 v0, 0x9

    .line 534
    .line 535
    goto/16 :goto_2

    .line 536
    .line 537
    :sswitch_1b
    const-string v0, "PIPED.KAVIN.ROCKS"

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    move-result v0

    .line 542
    .line 543
    if-nez v0, :cond_21

    .line 544
    .line 545
    goto/16 :goto_1

    .line 546
    .line 547
    :cond_21
    const/16 v0, 0x8

    .line 548
    .line 549
    goto/16 :goto_2

    .line 550
    .line 551
    :sswitch_1c
    const-string v0, "VID.PUFFYAN.US"

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    move-result v0

    .line 556
    .line 557
    if-nez v0, :cond_22

    .line 558
    .line 559
    goto/16 :goto_1

    .line 560
    :cond_22
    const/4 v0, 0x7

    .line 561
    goto :goto_2

    .line 562
    .line 563
    :sswitch_1d
    const-string v0, "YTB.TROM.TF"

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    move-result v0

    .line 568
    .line 569
    if-nez v0, :cond_23

    .line 570
    .line 571
    goto/16 :goto_1

    .line 572
    :cond_23
    move v0, v7

    .line 573
    goto :goto_2

    .line 574
    .line 575
    :sswitch_1e
    const-string v0, "VID.MINT.LGBT"

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    move-result v0

    .line 580
    .line 581
    if-nez v0, :cond_24

    .line 582
    .line 583
    goto/16 :goto_1

    .line 584
    :cond_24
    const/4 v0, 0x5

    .line 585
    goto :goto_2

    .line 586
    .line 587
    :sswitch_1f
    const-string v0, "YT.CYBERHOST.UK"

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    move-result v0

    .line 592
    .line 593
    if-nez v0, :cond_25

    .line 594
    .line 595
    goto/16 :goto_1

    .line 596
    :cond_25
    const/4 v0, 0x4

    .line 597
    goto :goto_2

    .line 598
    .line 599
    :sswitch_20
    const-string v0, "M.YOUTUBE.COM"

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    move-result v0

    .line 604
    .line 605
    if-nez v0, :cond_26

    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    :cond_26
    const/4 v0, 0x3

    .line 609
    goto :goto_2

    .line 610
    .line 611
    :sswitch_21
    const-string v4, "Y2U.BE"

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    move-result v2

    .line 616
    .line 617
    if-nez v2, :cond_29

    .line 618
    .line 619
    goto/16 :goto_1

    .line 620
    .line 621
    :sswitch_22
    const-string v0, "TUBUS.EDUVID.ORG"

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    move-result v0

    .line 626
    .line 627
    if-nez v0, :cond_27

    .line 628
    .line 629
    goto/16 :goto_1

    .line 630
    :cond_27
    move v0, v5

    .line 631
    goto :goto_2

    .line 632
    .line 633
    :sswitch_23
    const-string v0, "INVIDIOUS.ZEE.LI"

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    move-result v0

    .line 638
    .line 639
    if-nez v0, :cond_28

    .line 640
    .line 641
    goto/16 :goto_1

    .line 642
    :cond_28
    const/4 v0, 0x0

    .line 643
    .line 644
    :cond_29
    :goto_2
    const-string v2, "v"

    .line 645
    .line 646
    .line 647
    packed-switch v0, :pswitch_data_0

    .line 648
    goto :goto_3

    .line 649
    .line 650
    :pswitch_0
    const-string v0, "embed/"

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 654
    move-result v0

    .line 655
    .line 656
    if-eqz v0, :cond_2a

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 660
    move-result-object p1

    .line 661
    .line 662
    .line 663
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    move-result-object p1

    .line 665
    return-object p1

    .line 666
    .line 667
    :cond_2a
    :goto_3
    new-instance v0, Laa/h;

    .line 668
    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    move-result-object p1

    .line 683
    .line 684
    .line 685
    invoke-direct {v0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 686
    throw v0

    .line 687
    .line 688
    :pswitch_1
    const-string v0, "attribution_link"

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    move-result v0

    .line 693
    .line 694
    if-eqz v0, :cond_2b

    .line 695
    .line 696
    const-string v0, "u"

    .line 697
    .line 698
    .line 699
    invoke-static {v1, v0}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    move-result-object v0

    .line 701
    .line 702
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .line 707
    const-string v3, "https://www.youtube.com"

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    move-result-object v0

    .line 718
    .line 719
    .line 720
    invoke-static {v0}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 721
    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 722
    .line 723
    .line 724
    invoke-static {p1, v2}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    move-result-object p1

    .line 726
    .line 727
    .line 728
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 729
    move-result-object p1

    .line 730
    return-object p1

    .line 731
    .line 732
    :catch_1
    new-instance v0, Laa/h;

    .line 733
    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    move-result-object p1

    .line 748
    .line 749
    .line 750
    invoke-direct {v0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 751
    throw v0

    .line 752
    .line 753
    .line 754
    :cond_2b
    invoke-direct {p0, v3}, Lna/d;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 755
    move-result-object p1

    .line 756
    .line 757
    if-eqz p1, :cond_2c

    .line 758
    return-object p1

    .line 759
    .line 760
    .line 761
    :cond_2c
    invoke-static {v1, v2}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 762
    move-result-object p1

    .line 763
    .line 764
    .line 765
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 766
    move-result-object p1

    .line 767
    return-object p1

    .line 768
    .line 769
    .line 770
    :pswitch_2
    invoke-static {v1, v2}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    move-result-object p1

    .line 772
    .line 773
    if-eqz p1, :cond_2d

    .line 774
    .line 775
    .line 776
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 777
    move-result-object p1

    .line 778
    return-object p1

    .line 779
    .line 780
    .line 781
    :cond_2d
    invoke-static {v3}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 782
    move-result-object p1

    .line 783
    return-object p1

    .line 784
    .line 785
    :pswitch_3
    const-string p1, "watch"

    .line 786
    .line 787
    .line 788
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    move-result p1

    .line 790
    .line 791
    if-eqz p1, :cond_2e

    .line 792
    .line 793
    .line 794
    invoke-static {v1, v2}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 795
    move-result-object p1

    .line 796
    .line 797
    if-eqz p1, :cond_2e

    .line 798
    .line 799
    .line 800
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 801
    move-result-object p1

    .line 802
    return-object p1

    .line 803
    .line 804
    .line 805
    :cond_2e
    invoke-direct {p0, v3}, Lna/d;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 806
    move-result-object p1

    .line 807
    .line 808
    if-eqz p1, :cond_2f

    .line 809
    return-object p1

    .line 810
    .line 811
    .line 812
    :cond_2f
    invoke-static {v1, v2}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    move-result-object p1

    .line 814
    .line 815
    if-eqz p1, :cond_30

    .line 816
    .line 817
    .line 818
    invoke-static {p1}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 819
    move-result-object p1

    .line 820
    return-object p1

    .line 821
    .line 822
    .line 823
    :cond_30
    invoke-static {v3}, Lna/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 824
    move-result-object p1

    .line 825
    return-object p1

    .line 826
    .line 827
    :cond_31
    new-instance v0, Laa/h;

    .line 828
    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    move-result-object p1

    .line 843
    .line 844
    .line 845
    invoke-direct {v0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 846
    throw v0

    .line 847
    .line 848
    :cond_32
    :goto_4
    const-string v0, "googleads.g.doubleclick.net"

    .line 849
    .line 850
    .line 851
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 852
    move-result v0

    .line 853
    .line 854
    if-eqz v0, :cond_33

    .line 855
    .line 856
    new-instance v0, Laa/e;

    .line 857
    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .line 863
    const-string v2, "Error: found ad: "

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    move-result-object p1

    .line 874
    .line 875
    .line 876
    invoke-direct {v0, p1}, Laa/e;-><init>(Ljava/lang/String;)V

    .line 877
    throw v0

    .line 878
    .line 879
    :cond_33
    new-instance p1, Laa/h;

    .line 880
    .line 881
    const-string v0, "The URL is not a YouTube URL"

    .line 882
    .line 883
    .line 884
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 885
    throw p1

    .line 886
    .line 887
    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 888
    .line 889
    const-string v0, "The given URL is not valid"

    .line 890
    .line 891
    .line 892
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 893
    throw p1

    .line 894
    nop

    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    :sswitch_data_0
    .sparse-switch
        -0x7e0457d1 -> :sswitch_23
        -0x7c6e2400 -> :sswitch_22
        -0x6538c10b -> :sswitch_21
        -0x64efe82b -> :sswitch_20
        -0x5f9cd1ca -> :sswitch_1f
        -0x546db0a4 -> :sswitch_1e
        -0x445441a3 -> :sswitch_1d
        -0x440f3cd8 -> :sswitch_1c
        -0x4119c053 -> :sswitch_1b
        -0x314fe193 -> :sswitch_1a
        -0x17b6192d -> :sswitch_19
        -0x17aaa2fa -> :sswitch_18
        -0xe92e56e -> :sswitch_17
        -0x76cc11b -> :sswitch_16
        -0x325c673 -> :sswitch_15
        0x4620d47 -> :sswitch_14
        0x6257072 -> :sswitch_13
        0x627de31 -> :sswitch_12
        0xa169d1a -> :sswitch_11
        0x11fd15e8 -> :sswitch_10
        0x1578e74c -> :sswitch_f
        0x1824f098 -> :sswitch_e
        0x381ef9ff -> :sswitch_d
        0x3f4c7f6b -> :sswitch_c
        0x4949eb3a -> :sswitch_b
        0x5fd0bae8 -> :sswitch_a
        0x6249e462 -> :sswitch_9
        0x669117b6 -> :sswitch_8
        0x67acbc5b -> :sswitch_7
        0x6c60ce27 -> :sswitch_6
        0x6fdc1199 -> :sswitch_5
        0x7731d328 -> :sswitch_4
        0x7893fdf9 -> :sswitch_3
        0x78a7f811 -> :sswitch_2
        0x79548585 -> :sswitch_1
        0x7bbb6bf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "https://www.youtube.com/watch?v="

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
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/e;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lna/d;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Laa/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :catch_1
    move-exception p1

    .line 9
    throw p1
.end method
