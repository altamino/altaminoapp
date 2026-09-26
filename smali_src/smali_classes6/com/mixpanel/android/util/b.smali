.class public Lcom/mixpanel/android/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/util/g;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.Message"

.field private static final MAX_UNAVAILABLE_HTTP_RESPONSE_CODE:I = 0x257

.field private static final MIN_UNAVAILABLE_HTTP_RESPONSE_CODE:I = 0x1f4

.field private static sIsMixpanelBlocked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mixpanel/android/util/b;->sIsMixpanelBlocked:Z

    return v0
.end method

.method static synthetic e(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/mixpanel/android/util/b;->sIsMixpanelBlocked:Z

    return p0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "https://api.mixpanel.com"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    return p0
.end method

.method private g(Lcom/mixpanel/android/util/e;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/mixpanel/android/util/e;->a()Z

    .line 7
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    .line 14
    const-string v1, "MixpanelAPI.Message"

    .line 15
    .line 16
    const-string v2, "Client State should not throw exception, will assume is not on offline mode"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_0
    :goto_0
    return v0
.end method

.method private static h(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x2000

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    .line 17
    if-eq v4, v5, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mixpanel/android/util/f;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/util/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/g$a;,
            Ljava/io/IOException;
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
    const-string v1, "Attempting request to "

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
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "MixpanelAPI.Message"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    move-object v4, v0

    .line 26
    move v3, v2

    .line 27
    :cond_0
    :goto_0
    const/4 v5, 0x3

    .line 28
    .line 29
    if-ge v2, v5, :cond_e

    .line 30
    .line 31
    if-nez v3, :cond_e

    .line 32
    .line 33
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    check-cast v5, Ljava/net/URLConnection;

    .line 47
    .line 48
    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 49
    .line 50
    if-eqz p4, :cond_1

    .line 51
    .line 52
    :try_start_1
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    .line 54
    if-eqz v6, :cond_1

    .line 55
    move-object v6, v5

    .line 56
    .line 57
    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, p4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 61
    goto :goto_6

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    move-object v7, v0

    .line 64
    :goto_1
    move-object v8, v7

    .line 65
    .line 66
    goto/16 :goto_d

    .line 67
    :catch_0
    move-exception p1

    .line 68
    move-object v7, v0

    .line 69
    move-object v8, v7

    .line 70
    :goto_2
    move-object v9, v8

    .line 71
    :goto_3
    move-object v0, v5

    .line 72
    .line 73
    goto/16 :goto_b

    .line 74
    :catch_1
    move-object v7, v0

    .line 75
    :goto_4
    move-object v8, v7

    .line 76
    :goto_5
    move-object v9, v8

    .line 77
    .line 78
    goto/16 :goto_c

    .line 79
    .line 80
    :cond_1
    :goto_6
    if-eqz p2, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/mixpanel/android/util/b;->f(Ljava/lang/String;)Z

    .line 84
    move-result v6

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-interface {p2}, Lcom/mixpanel/android/util/f;->b()Ljava/util/Map;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    move-result-object v6

    .line 97
    .line 98
    .line 99
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    .line 103
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v7

    .line 105
    .line 106
    if-eqz v7, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v7

    .line 111
    .line 112
    check-cast v7, Ljava/util/Map$Entry;

    .line 113
    .line 114
    .line 115
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    check-cast v8, Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    move-result-object v7

    .line 123
    .line 124
    check-cast v7, Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    goto :goto_7

    .line 129
    .line 130
    :cond_2
    const/16 v6, 0x7d0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 134
    .line 135
    const/16 v6, 0x7530

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 139
    const/4 v6, 0x1

    .line 140
    .line 141
    if-eqz p3, :cond_4

    .line 142
    .line 143
    new-instance v7, Landroid/net/Uri$Builder;

    .line 144
    .line 145
    .line 146
    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 150
    move-result-object v8

    .line 151
    .line 152
    .line 153
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object v8

    .line 155
    .line 156
    .line 157
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v9

    .line 159
    .line 160
    if-eqz v9, :cond_3

    .line 161
    .line 162
    .line 163
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v9

    .line 165
    .line 166
    check-cast v9, Ljava/util/Map$Entry;

    .line 167
    .line 168
    .line 169
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 170
    move-result-object v10

    .line 171
    .line 172
    check-cast v10, Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    move-result-object v9

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    move-result-object v9

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v10, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    goto :goto_8

    .line 185
    .line 186
    .line 187
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 188
    move-result-object v7

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 192
    move-result-object v7

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 196
    move-result-object v8

    .line 197
    array-length v8, v8

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 204
    .line 205
    const-string v8, "POST"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 212
    move-result-object v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .line 214
    :try_start_2
    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 215
    .line 216
    .line 217
    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    .line 219
    :try_start_3
    const-string v10, "UTF-8"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 223
    move-result-object v7

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v7}, Ljava/io/OutputStream;->write([B)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 233
    .line 234
    .line 235
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    goto :goto_a

    .line 237
    :catchall_1
    move-exception p1

    .line 238
    move-object v7, v0

    .line 239
    .line 240
    goto/16 :goto_d

    .line 241
    :catch_2
    move-exception p1

    .line 242
    move-object v7, v0

    .line 243
    move-object v9, v7

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    :catch_3
    move-object v7, v0

    .line 247
    move-object v9, v7

    .line 248
    .line 249
    goto/16 :goto_c

    .line 250
    :catchall_2
    move-exception p1

    .line 251
    move-object v7, v0

    .line 252
    :goto_9
    move-object v0, v9

    .line 253
    .line 254
    goto/16 :goto_d

    .line 255
    :catch_4
    move-exception p1

    .line 256
    move-object v7, v0

    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    :catch_5
    move-object v7, v0

    .line 260
    .line 261
    goto/16 :goto_c

    .line 262
    .line 263
    :cond_4
    :goto_a
    if-eqz p2, :cond_5

    .line 264
    .line 265
    .line 266
    :try_start_5
    invoke-static {p1}, Lcom/mixpanel/android/util/b;->f(Ljava/lang/String;)Z

    .line 267
    move-result v7

    .line 268
    .line 269
    if-eqz v7, :cond_5

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 273
    move-result v7

    .line 274
    .line 275
    .line 276
    invoke-interface {p2, p1, v7}, Lcom/mixpanel/android/util/f;->a(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    :cond_5
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 280
    move-result-object v7
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 281
    .line 282
    .line 283
    :try_start_6
    invoke-static {v7}, Lcom/mixpanel/android/util/b;->h(Ljava/io/InputStream;)[B

    .line 284
    move-result-object v4

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 291
    move v3, v6

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    :catchall_3
    move-exception p1

    .line 295
    move-object v8, v0

    .line 296
    .line 297
    goto/16 :goto_d

    .line 298
    :catch_6
    move-exception p1

    .line 299
    move-object v8, v0

    .line 300
    .line 301
    goto/16 :goto_2

    .line 302
    :catch_7
    move-object v8, v0

    .line 303
    .line 304
    goto/16 :goto_5

    .line 305
    :catchall_4
    move-exception p1

    .line 306
    move-object v5, v0

    .line 307
    move-object v7, v5

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    :catch_8
    move-exception p1

    .line 311
    move-object v7, v0

    .line 312
    move-object v8, v7

    .line 313
    move-object v9, v8

    .line 314
    goto :goto_b

    .line 315
    :catch_9
    move-object v5, v0

    .line 316
    move-object v7, v5

    .line 317
    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :goto_b
    if-eqz v0, :cond_6

    .line 321
    .line 322
    .line 323
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 324
    move-result p2

    .line 325
    .line 326
    const/16 p3, 0x1f4

    .line 327
    .line 328
    if-lt p2, p3, :cond_6

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 332
    move-result p2

    .line 333
    .line 334
    const/16 p3, 0x257

    .line 335
    .line 336
    if-gt p2, p3, :cond_6

    .line 337
    .line 338
    new-instance p1, Lcom/mixpanel/android/util/g$a;

    .line 339
    .line 340
    const-string p2, "Service Unavailable"

    .line 341
    .line 342
    const-string p3, "Retry-After"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, p3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object p3

    .line 347
    .line 348
    .line 349
    invoke-direct {p1, p2, p3}, Lcom/mixpanel/android/util/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    throw p1

    .line 351
    :catchall_5
    move-exception p1

    .line 352
    move-object v5, v0

    .line 353
    goto :goto_9

    .line 354
    :cond_6
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 355
    .line 356
    :goto_c
    :try_start_8
    const-string v6, "Failure to connect, likely caused by a known issue with Android lib. Retrying."

    .line 357
    .line 358
    .line 359
    invoke-static {v1, v6}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 360
    .line 361
    add-int/lit8 v2, v2, 0x1

    .line 362
    .line 363
    if-eqz v9, :cond_7

    .line 364
    .line 365
    .line 366
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 367
    .line 368
    :catch_a
    :cond_7
    if-eqz v8, :cond_8

    .line 369
    .line 370
    .line 371
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 372
    .line 373
    :catch_b
    :cond_8
    if-eqz v7, :cond_9

    .line 374
    .line 375
    .line 376
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 377
    .line 378
    :catch_c
    :cond_9
    if-eqz v5, :cond_0

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    :catchall_6
    move-exception p1

    .line 385
    .line 386
    goto/16 :goto_9

    .line 387
    .line 388
    :goto_d
    if-eqz v0, :cond_a

    .line 389
    .line 390
    .line 391
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 392
    .line 393
    :catch_d
    :cond_a
    if-eqz v8, :cond_b

    .line 394
    .line 395
    .line 396
    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    .line 397
    .line 398
    :catch_e
    :cond_b
    if-eqz v7, :cond_c

    .line 399
    .line 400
    .line 401
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 402
    .line 403
    :catch_f
    :cond_c
    if-eqz v5, :cond_d

    .line 404
    .line 405
    .line 406
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 407
    :cond_d
    throw p1

    .line 408
    .line 409
    :cond_e
    if-lt v2, v5, :cond_f

    .line 410
    .line 411
    const-string p1, "Could not connect to Mixpanel service after three retries."

    .line 412
    .line 413
    .line 414
    invoke-static {v1, p1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_f
    return-object v4
.end method

.method public b(Landroid/content/Context;Lcom/mixpanel/android/util/e;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "MixpanelAPI.Message"

    .line 3
    .line 4
    sget-boolean v1, Lcom/mixpanel/android/util/b;->sIsMixpanelBlocked:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    return v2

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p2}, Lcom/mixpanel/android/util/b;->g(Lcom/mixpanel/android/util/e;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    return v2

    .line 16
    :cond_1
    const/4 p2, 0x1

    .line 17
    .line 18
    :try_start_0
    const-string v1, "connectivity"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    const-string p1, "A default network has not been set so we cannot be certain whether we are offline"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v2, "ConnectivityManager says we "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    const-string v2, "are"

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_3
    const-string v2, "are not"

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, " online"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    move p2, p1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :catch_0
    const-string p1, "Don\'t have permission to check connectivity, will assume we are online"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_1
    return p2
.end method

.method public c()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Thread;

    .line 3
    .line 4
    new-instance v1, Lcom/mixpanel/android/util/b$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mixpanel/android/util/b$a;-><init>(Lcom/mixpanel/android/util/b;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method
