.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 6
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 11
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
    const-string v0, "chain"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->getExchange$okhttp()Lokhttp3/internal/connection/Exchange;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/Exchange;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    const-string v4, "Expect"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v4}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    const-string v8, "100-continue"

    .line 53
    .line 54
    .line 55
    invoke-static {v8, v4, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 69
    move v8, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move v8, v6

    .line 72
    move-object v4, v7

    .line 73
    .line 74
    :goto_0
    if-nez v4, :cond_2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 78
    move-result v9

    .line 79
    .line 80
    if-eqz v9, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1, v6}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    .line 87
    move-result-object v9

    .line 88
    .line 89
    .line 90
    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 91
    move-result-object v9

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v0, p1, v5}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    .line 99
    move-result-object v9

    .line 100
    .line 101
    .line 102
    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 103
    move-result-object v9

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v9}, Lokio/Sink;->close()V

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 117
    move-result-object v9

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    .line 121
    move-result v9

    .line 122
    .line 123
    if-nez v9, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    .line 127
    goto :goto_1

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 131
    move v8, v6

    .line 132
    move-object v4, v7

    .line 133
    .line 134
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-nez v1, :cond_6

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->finishRequest()V

    .line 144
    .line 145
    :cond_6
    if-nez v4, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v5}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 153
    .line 154
    if-eqz v8, :cond_7

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 158
    move v8, v5

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {v4, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    .line 170
    move-result-object v4

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v4}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    move-result-wide v9

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v9, v10}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    .line 194
    move-result v4

    .line 195
    .line 196
    const/16 v9, 0x64

    .line 197
    .line 198
    if-ne v4, v9, :cond_9

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v5}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 206
    .line 207
    if-eqz v8, :cond_8

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 211
    .line 212
    .line 213
    :cond_8
    invoke-virtual {v1, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 226
    move-result-object p1

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 230
    move-result-object p1

    .line 231
    .line 232
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    move-result-wide v1

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v1, v2}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 242
    move-result-object v1

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    .line 246
    move-result v4

    .line 247
    .line 248
    .line 249
    :cond_9
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/Exchange;->responseHeadersEnd(Lokhttp3/Response;)V

    .line 250
    .line 251
    iget-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 252
    .line 253
    if-eqz p1, :cond_a

    .line 254
    .line 255
    const/16 p1, 0x65

    .line 256
    .line 257
    if-ne v4, p1, :cond_a

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    sget-object v1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 271
    move-result-object p1

    .line 272
    goto :goto_2

    .line 273
    .line 274
    .line 275
    :cond_a
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 276
    move-result-object p1

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 288
    move-result-object p1

    .line 289
    .line 290
    .line 291
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 292
    move-result-object v1

    .line 293
    .line 294
    const-string v2, "Connection"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    move-result-object v1

    .line 299
    .line 300
    const-string v3, "close"

    .line 301
    .line 302
    .line 303
    invoke-static {v3, v1, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 304
    move-result v1

    .line 305
    .line 306
    if-nez v1, :cond_b

    .line 307
    const/4 v1, 0x2

    .line 308
    .line 309
    .line 310
    invoke-static {p1, v2, v7, v1, v7}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    .line 314
    invoke-static {v3, v1, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 315
    move-result v1

    .line 316
    .line 317
    if-eqz v1, :cond_c

    .line 318
    .line 319
    .line 320
    :cond_b
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    .line 321
    .line 322
    :cond_c
    const/16 v0, 0xcc

    .line 323
    .line 324
    if-eq v4, v0, :cond_d

    .line 325
    .line 326
    const/16 v0, 0xcd

    .line 327
    .line 328
    if-ne v4, v0, :cond_10

    .line 329
    .line 330
    .line 331
    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    if-nez v0, :cond_e

    .line 335
    .line 336
    const-wide/16 v0, -0x1

    .line 337
    goto :goto_3

    .line 338
    .line 339
    .line 340
    :cond_e
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 341
    move-result-wide v0

    .line 342
    .line 343
    :goto_3
    const-wide/16 v2, 0x0

    .line 344
    .line 345
    cmp-long v0, v0, v2

    .line 346
    .line 347
    if-lez v0, :cond_10

    .line 348
    .line 349
    new-instance v0, Ljava/net/ProtocolException;

    .line 350
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    const-string v2, "HTTP "

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v2, " had non-zero Content-Length: "

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 371
    move-result-object p1

    .line 372
    .line 373
    if-nez p1, :cond_f

    .line 374
    goto :goto_4

    .line 375
    .line 376
    .line 377
    :cond_f
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 378
    move-result-wide v2

    .line 379
    .line 380
    .line 381
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 382
    move-result-object v7

    .line 383
    .line 384
    .line 385
    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object p1

    .line 390
    .line 391
    .line 392
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 393
    throw v0

    .line 394
    :cond_10
    return-object p1
.end method
