.class Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/AgoraBufferedCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "x"

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 16
    :cond_0
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    .line 20
    move-result v2

    .line 21
    .line 22
    const/16 v3, 0x23

    .line 23
    .line 24
    if-ne v2, v3, :cond_6

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 28
    move-result-object v2

    .line 29
    array-length v2, v2

    .line 30
    const/4 v3, 0x3

    .line 31
    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    .line 42
    move-result v3

    .line 43
    .line 44
    if-ne v2, v3, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    .line 52
    move-result v3

    .line 53
    .line 54
    if-ne v2, v3, :cond_5

    .line 55
    .line 56
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-static {v1, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$200(Landroid/media/Image;[B)V

    .line 64
    .line 65
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)I

    .line 69
    move-result v7

    .line 70
    .line 71
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 72
    .line 73
    iget-object v0, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 82
    .line 83
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    .line 87
    move-result v0

    .line 88
    .line 89
    if-ne p1, v0, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 92
    .line 93
    iget-object v2, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    .line 97
    move-result-object v3

    .line 98
    .line 99
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget v4, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    .line 109
    move-result v5

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    .line 113
    move-result v6

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    move-result-wide v8

    .line 118
    .line 119
    .line 120
    invoke-interface/range {v2 .. v9}, Lio/agora/rtc/mediaio/IVideoFrameConsumer;->consumeByteArrayFrame([BIIIIJ)V

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    :catch_0
    move-exception p1

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 130
    .line 131
    iget-object v0, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 140
    .line 141
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    .line 145
    move-result v0

    .line 146
    .line 147
    if-ne p1, v0, :cond_4

    .line 148
    .line 149
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    .line 158
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    .line 168
    move-result-object v0

    .line 169
    .line 170
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 171
    .line 172
    .line 173
    invoke-static {v2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    .line 174
    move-result-object v2

    .line 175
    array-length v2, v2

    .line 176
    const/4 v3, 0x0

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 182
    .line 183
    iget-object v2, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 190
    .line 191
    .line 192
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    iget v4, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    .line 199
    move-result v5

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    .line 203
    move-result v6

    .line 204
    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    move-result-wide v8

    .line 208
    .line 209
    .line 210
    invoke-interface/range {v2 .. v9}, Lio/agora/rtc/mediaio/IVideoFrameConsumer;->consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .line 212
    .line 213
    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 214
    return-void

    .line 215
    .line 216
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    const-string v4, "ImageReader size "

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    .line 230
    move-result v4

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    .line 240
    move-result p1

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string p1, " did not match Image size: "

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    .line 252
    move-result p1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    .line 262
    move-result p1

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    throw v2

    .line 274
    .line 275
    .line 276
    :cond_6
    :goto_1
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    const-string v2, "Unexpected image format: "

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    .line 291
    move-result v2

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v2, "or #planes:"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 303
    move-result-object v2

    .line 304
    array-length v2, v2

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    .line 313
    .line 314
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 318
    return-void

    .line 319
    .line 320
    .line 321
    :catch_1
    :try_start_3
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    .line 322
    move-result-object p1

    .line 323
    .line 324
    const-string v0, "fetch image failed..."

    .line 325
    .line 326
    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    .line 329
    if-eqz v1, :cond_7

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 333
    :cond_7
    return-void

    .line 334
    .line 335
    .line 336
    :goto_2
    :try_start_4
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    const-string v2, "acquireLastest Image():"

    .line 340
    .line 341
    .line 342
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    .line 344
    if-eqz v1, :cond_8

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 348
    :cond_8
    return-void

    .line 349
    .line 350
    :goto_3
    if-eqz v1, :cond_9

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 354
    :cond_9
    throw p1
.end method
