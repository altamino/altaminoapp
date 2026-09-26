.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Level;,
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;
    }
.end annotation


# instance fields
.field private volatile headersToRedact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .locals 1
    .param p1    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 3
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 4
    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method private final bodyHasUnknownEncoding(Lokhttp3/Headers;)Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "Content-Encoding"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "identity"

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "gzip"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    move v0, v2

    .line 28
    :cond_0
    return v0
.end method

.method private final logHeader(Lokhttp3/Headers;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo v0, "\u2588\u2588"

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p1, ": "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, p1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final -deprecated_level()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public final getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 20
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const-string v2, "chain"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_0
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 27
    .line 28
    if-ne v2, v4, :cond_1

    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    .line 33
    :goto_0
    if-nez v4, :cond_3

    .line 34
    .line 35
    sget-object v7, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 36
    .line 37
    if-ne v2, v7, :cond_2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 42
    .line 43
    .line 44
    :goto_2
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    .line 48
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    .line 49
    move-result-object v8

    .line 50
    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v10, "--> "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 63
    move-result-object v10

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const/16 v10, 0x20

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 75
    move-result-object v11

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v11, ""

    .line 81
    .line 82
    if-eqz v8, :cond_4

    .line 83
    .line 84
    new-instance v12, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v13, " "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-interface {v8}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    .line 96
    move-result-object v8

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v8

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    move-object v8, v11

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v8

    .line 113
    .line 114
    const-string v9, "-byte body)"

    .line 115
    .line 116
    const-string v12, " ("

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    if-eqz v7, :cond_5

    .line 121
    .line 122
    new-instance v13, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    .line 135
    move-result-wide v14

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v8

    .line 146
    .line 147
    :cond_5
    iget-object v13, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 148
    .line 149
    .line 150
    invoke-interface {v13, v8}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 151
    .line 152
    const-string v8, "-byte body omitted)"

    .line 153
    .line 154
    const-string v13, "UTF_8"

    .line 155
    .line 156
    if-eqz v2, :cond_10

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    if-eqz v7, :cond_7

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 166
    move-result-object v6

    .line 167
    .line 168
    if-eqz v6, :cond_6

    .line 169
    .line 170
    const-string v10, "Content-Type"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v10

    .line 175
    .line 176
    if-nez v10, :cond_6

    .line 177
    .line 178
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 179
    .line 180
    new-instance v14, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    const-string v15, "Content-Type: "

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v6

    .line 196
    .line 197
    .line 198
    invoke-interface {v10, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_6
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    .line 202
    move-result-wide v14

    .line 203
    .line 204
    const-wide/16 v17, -0x1

    .line 205
    .line 206
    cmp-long v6, v14, v17

    .line 207
    .line 208
    if-eqz v6, :cond_7

    .line 209
    .line 210
    const-string v6, "Content-Length"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v6

    .line 215
    .line 216
    if-nez v6, :cond_7

    .line 217
    .line 218
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 219
    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    const-string v14, "Content-Length: "

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    .line 232
    move-result-wide v14

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v10

    .line 240
    .line 241
    .line 242
    invoke-interface {v6, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_7
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 246
    move-result v6

    .line 247
    const/4 v10, 0x0

    .line 248
    .line 249
    :goto_4
    if-ge v10, v6, :cond_8

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v5, v10}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 253
    .line 254
    add-int/lit8 v10, v10, 0x1

    .line 255
    goto :goto_4

    .line 256
    .line 257
    :cond_8
    const-string v5, "--> END "

    .line 258
    .line 259
    if-eqz v4, :cond_f

    .line 260
    .line 261
    if-nez v7, :cond_9

    .line 262
    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    .line 266
    :cond_9
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 267
    move-result-object v6

    .line 268
    .line 269
    .line 270
    invoke-direct {v1, v6}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    .line 271
    move-result v6

    .line 272
    .line 273
    if-eqz v6, :cond_a

    .line 274
    .line 275
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 276
    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 287
    move-result-object v5

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v5, " (encoded body omitted)"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v5

    .line 300
    .line 301
    .line 302
    invoke-interface {v6, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 303
    .line 304
    goto/16 :goto_7

    .line 305
    .line 306
    .line 307
    :cond_a
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 308
    move-result v6

    .line 309
    .line 310
    if-eqz v6, :cond_b

    .line 311
    .line 312
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 313
    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 324
    move-result-object v5

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v5, " (duplex request body omitted)"

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v5

    .line 337
    .line 338
    .line 339
    invoke-interface {v6, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 340
    .line 341
    goto/16 :goto_7

    .line 342
    .line 343
    .line 344
    :cond_b
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isOneShot()Z

    .line 345
    move-result v6

    .line 346
    .line 347
    if-eqz v6, :cond_c

    .line 348
    .line 349
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 350
    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 361
    move-result-object v5

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v5, " (one-shot body omitted)"

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    move-result-object v5

    .line 374
    .line 375
    .line 376
    invoke-interface {v6, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 377
    .line 378
    goto/16 :goto_7

    .line 379
    .line 380
    :cond_c
    new-instance v6, Lokio/Buffer;

    .line 381
    .line 382
    .line 383
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v6}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 390
    move-result-object v10

    .line 391
    .line 392
    if-eqz v10, :cond_d

    .line 393
    .line 394
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v10, v14}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 398
    move-result-object v10

    .line 399
    .line 400
    if-eqz v10, :cond_d

    .line 401
    goto :goto_5

    .line 402
    .line 403
    :cond_d
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 404
    .line 405
    .line 406
    invoke-static {v10, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    :goto_5
    iget-object v14, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 409
    .line 410
    .line 411
    invoke-interface {v14, v11}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v6}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    .line 415
    move-result v14

    .line 416
    .line 417
    if-eqz v14, :cond_e

    .line 418
    .line 419
    iget-object v14, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v10}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 423
    move-result-object v6

    .line 424
    .line 425
    .line 426
    invoke-interface {v14, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 427
    .line 428
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 429
    .line 430
    new-instance v10, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 440
    move-result-object v5

    .line 441
    .line 442
    .line 443
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    .line 450
    move-result-wide v14

    .line 451
    .line 452
    .line 453
    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v5

    .line 461
    .line 462
    .line 463
    invoke-interface {v6, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 464
    goto :goto_7

    .line 465
    .line 466
    :cond_e
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 467
    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 478
    move-result-object v5

    .line 479
    .line 480
    .line 481
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v5, " (binary "

    .line 484
    .line 485
    .line 486
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    .line 490
    move-result-wide v14

    .line 491
    .line 492
    .line 493
    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    move-result-object v5

    .line 501
    .line 502
    .line 503
    invoke-interface {v6, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 504
    goto :goto_7

    .line 505
    .line 506
    :cond_f
    :goto_6
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 507
    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 518
    move-result-object v5

    .line 519
    .line 520
    .line 521
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v5

    .line 526
    .line 527
    .line 528
    invoke-interface {v6, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    :cond_10
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 532
    move-result-wide v5

    .line 533
    .line 534
    .line 535
    :try_start_0
    invoke-interface {v0, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 536
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .line 538
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 539
    .line 540
    .line 541
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 542
    move-result-wide v14

    .line 543
    sub-long/2addr v14, v5

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 547
    move-result-wide v5

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 551
    move-result-object v3

    .line 552
    .line 553
    .line 554
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    .line 558
    move-result-wide v14

    .line 559
    .line 560
    const-wide/16 v17, -0x1

    .line 561
    .line 562
    cmp-long v7, v14, v17

    .line 563
    .line 564
    if-eqz v7, :cond_11

    .line 565
    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string v10, "-byte"

    .line 575
    .line 576
    .line 577
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    move-result-object v7

    .line 582
    goto :goto_8

    .line 583
    .line 584
    :cond_11
    const-string v7, "unknown-length"

    .line 585
    .line 586
    :goto_8
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 587
    .line 588
    move-object/from16 v17, v9

    .line 589
    .line 590
    new-instance v9, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    move-wide/from16 v18, v14

    .line 596
    .line 597
    const-string v14, "<-- "

    .line 598
    .line 599
    .line 600
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 604
    move-result v14

    .line 605
    .line 606
    .line 607
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 611
    move-result-object v14

    .line 612
    .line 613
    .line 614
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 615
    move-result v14

    .line 616
    .line 617
    if-nez v14, :cond_12

    .line 618
    .line 619
    move-object/from16 v16, v8

    .line 620
    move-object v8, v11

    .line 621
    .line 622
    const/16 p1, 0x20

    .line 623
    goto :goto_9

    .line 624
    .line 625
    .line 626
    :cond_12
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 627
    move-result-object v14

    .line 628
    .line 629
    new-instance v15, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .line 634
    move-object/from16 v16, v8

    .line 635
    .line 636
    const/16 p1, 0x20

    .line 637
    .line 638
    .line 639
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 640
    move-result-object v8

    .line 641
    .line 642
    .line 643
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    move-result-object v8

    .line 651
    .line 652
    .line 653
    :goto_9
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    move/from16 v8, p1

    .line 656
    .line 657
    .line 658
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 662
    move-result-object v8

    .line 663
    .line 664
    .line 665
    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 666
    move-result-object v8

    .line 667
    .line 668
    .line 669
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    const-string v5, "ms"

    .line 678
    .line 679
    .line 680
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    if-nez v2, :cond_13

    .line 683
    .line 684
    new-instance v5, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    const-string v6, ", "

    .line 690
    .line 691
    .line 692
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    const-string v6, " body"

    .line 698
    .line 699
    .line 700
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 704
    move-result-object v5

    .line 705
    goto :goto_a

    .line 706
    :cond_13
    move-object v5, v11

    .line 707
    .line 708
    .line 709
    :goto_a
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    const/16 v5, 0x29

    .line 712
    .line 713
    .line 714
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    move-result-object v5

    .line 719
    .line 720
    .line 721
    invoke-interface {v10, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 722
    .line 723
    if-eqz v2, :cond_1d

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 727
    move-result-object v2

    .line 728
    .line 729
    .line 730
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    .line 731
    move-result v5

    .line 732
    const/4 v6, 0x0

    .line 733
    .line 734
    :goto_b
    if-ge v6, v5, :cond_14

    .line 735
    .line 736
    .line 737
    invoke-direct {v1, v2, v6}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 738
    .line 739
    add-int/lit8 v6, v6, 0x1

    .line 740
    goto :goto_b

    .line 741
    .line 742
    :cond_14
    if-eqz v4, :cond_1c

    .line 743
    .line 744
    .line 745
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 746
    move-result v4

    .line 747
    .line 748
    if-nez v4, :cond_15

    .line 749
    .line 750
    goto/16 :goto_e

    .line 751
    .line 752
    .line 753
    :cond_15
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 754
    move-result-object v4

    .line 755
    .line 756
    .line 757
    invoke-direct {v1, v4}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    .line 758
    move-result v4

    .line 759
    .line 760
    if-eqz v4, :cond_16

    .line 761
    .line 762
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 763
    .line 764
    const-string v3, "<-- END HTTP (encoded body omitted)"

    .line 765
    .line 766
    .line 767
    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 768
    .line 769
    goto/16 :goto_f

    .line 770
    .line 771
    .line 772
    :cond_16
    invoke-static {v3}, Lcom/safedk/android/internal/partials/OkHttpNetworkBridge;->retrofitExceptionCatchingRequestBody_source(Lokhttp3/ResponseBody;)Lokio/BufferedSource;

    .line 773
    move-result-object v4

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    const-wide v5, 0x7fffffffffffffffL

    .line 779
    .line 780
    .line 781
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->request(J)Z

    .line 782
    .line 783
    .line 784
    invoke-interface {v4}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 785
    move-result-object v4

    .line 786
    .line 787
    const-string v5, "Content-Encoding"

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 791
    move-result-object v2

    .line 792
    .line 793
    const-string v5, "gzip"

    .line 794
    const/4 v6, 0x1

    .line 795
    .line 796
    .line 797
    invoke-static {v5, v2, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 798
    move-result v2

    .line 799
    const/4 v5, 0x0

    .line 800
    .line 801
    if-eqz v2, :cond_17

    .line 802
    .line 803
    .line 804
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 805
    move-result-wide v6

    .line 806
    .line 807
    .line 808
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 809
    move-result-object v2

    .line 810
    .line 811
    new-instance v6, Lokio/GzipSource;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    .line 815
    move-result-object v4

    .line 816
    .line 817
    .line 818
    invoke-direct {v6, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 819
    .line 820
    :try_start_1
    new-instance v4, Lokio/Buffer;

    .line 821
    .line 822
    .line 823
    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    .line 828
    .line 829
    invoke-static {v6, v5}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 830
    move-object v5, v2

    .line 831
    goto :goto_c

    .line 832
    :catchall_0
    move-exception v0

    .line 833
    move-object v2, v0

    .line 834
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 835
    :catchall_1
    move-exception v0

    .line 836
    move-object v3, v0

    .line 837
    .line 838
    .line 839
    invoke-static {v6, v2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 840
    throw v3

    .line 841
    .line 842
    .line 843
    :cond_17
    :goto_c
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 844
    move-result-object v2

    .line 845
    .line 846
    if-eqz v2, :cond_18

    .line 847
    .line 848
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v2, v3}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 852
    move-result-object v2

    .line 853
    .line 854
    if-eqz v2, :cond_18

    .line 855
    goto :goto_d

    .line 856
    .line 857
    :cond_18
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 858
    .line 859
    .line 860
    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    :goto_d
    invoke-static {v4}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    .line 864
    move-result v3

    .line 865
    .line 866
    if-nez v3, :cond_19

    .line 867
    .line 868
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 869
    .line 870
    .line 871
    invoke-interface {v2, v11}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 872
    .line 873
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 874
    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .line 880
    const-string v5, "<-- END HTTP (binary "

    .line 881
    .line 882
    .line 883
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 887
    move-result-wide v4

    .line 888
    .line 889
    .line 890
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    move-object/from16 v4, v16

    .line 893
    .line 894
    .line 895
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    move-result-object v3

    .line 900
    .line 901
    .line 902
    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 903
    return-object v0

    .line 904
    .line 905
    :cond_19
    const-wide/16 v6, 0x0

    .line 906
    .line 907
    cmp-long v3, v18, v6

    .line 908
    .line 909
    if-eqz v3, :cond_1a

    .line 910
    .line 911
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 912
    .line 913
    .line 914
    invoke-interface {v3, v11}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 915
    .line 916
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    .line 920
    move-result-object v6

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v2}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 924
    move-result-object v2

    .line 925
    .line 926
    .line 927
    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 928
    .line 929
    :cond_1a
    const-string v2, "<-- END HTTP ("

    .line 930
    .line 931
    if-eqz v5, :cond_1b

    .line 932
    .line 933
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 934
    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 945
    move-result-wide v7

    .line 946
    .line 947
    .line 948
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    const-string v2, "-byte, "

    .line 951
    .line 952
    .line 953
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    const-string v2, "-gzipped-byte body)"

    .line 959
    .line 960
    .line 961
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    move-result-object v2

    .line 966
    .line 967
    .line 968
    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 969
    goto :goto_f

    .line 970
    .line 971
    :cond_1b
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 972
    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 983
    move-result-wide v6

    .line 984
    .line 985
    .line 986
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    move-object/from16 v2, v17

    .line 989
    .line 990
    .line 991
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 995
    move-result-object v2

    .line 996
    .line 997
    .line 998
    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 999
    goto :goto_f

    .line 1000
    .line 1001
    :cond_1c
    :goto_e
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 1002
    .line 1003
    const-string v3, "<-- END HTTP"

    .line 1004
    .line 1005
    .line 1006
    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 1007
    :cond_1d
    :goto_f
    return-object v0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    move-object v2, v0

    .line 1010
    .line 1011
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 1012
    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    .line 1018
    const-string v4, "<-- HTTP FAILED: "

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    move-result-object v3

    .line 1029
    .line 1030
    .line 1031
    invoke-interface {v0, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 1032
    throw v2
.end method

.method public final level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V
    .locals 1
    .param p1    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public final redactHeader(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/TreeSet;

    .line 8
    .line 9
    sget-object v1, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/text/k;->y(Lkotlin/jvm/internal/u0;)Ljava/util/Comparator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 27
    return-void
.end method

.method public final setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1
    .param p1    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method
