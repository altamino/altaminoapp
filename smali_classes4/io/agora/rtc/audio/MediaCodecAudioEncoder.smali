.class public Lio/agora/rtc/audio/MediaCodecAudioEncoder;
.super Ljava/lang/Object;
.source "MediaCodecAudioEncoder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAACEncodedBuffer:Ljava/nio/ByteBuffer;

.field private mAACEncoder:Landroid/media/MediaCodec;

.field private mAACFormat:Landroid/media/MediaFormat;

.field private mAACInputBuffers:[Ljava/nio/ByteBuffer;

.field private mAACOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCodecString:Ljava/lang/String;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mTrackFormat:Landroid/media/MediaFormat;

.field private outputFile:Ljava/io/File;

.field private outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 32
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    .line 33
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    .line 36
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    .line 45
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    .line 46
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/16 v0, 0x400

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncodedBuffer:Ljava/nio/ByteBuffer;

    const-string v0, "MediaCodec Audio Encoder"

    .line 53
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 283
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    .line 284
    aput-byte v1, p1, v0

    const/16 v0, 0x54

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 285
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    const/16 v1, 0x40

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    .line 286
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 287
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 288
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 289
    aput-byte v0, p1, p2

    return-void
.end method

.method private touch(Ljava/io/File;)V
    .locals 1

    .line 294
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createAACStreaming(III)Z
    .locals 5

    const-string v0, "audio/mp4a-latm"

    const/4 v1, 0x0

    .line 313
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding aac with fs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bitrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    .line 316
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput v3, v0, v4

    const/16 v3, 0x27

    aput v3, v0, v2

    .line 322
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v3, "aac-profile"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 323
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 324
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 325
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string p2, "bitrate"

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 327
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    iget-object p2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 329
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v4

    :catch_0
    move-exception p1

    .line 334
    iget-object p2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string p3, "Error when creating aac encode stream"

    invoke-static {p2, p3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public createStreaming(Ljava/lang/String;III)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "audio/mp4a-latm"

    const/4 v6, 0x0

    .line 60
    :try_start_0
    iget-object v7, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recording aac with fs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "3gp"

    .line 63
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x5

    const-string v12, "bitrate"

    const-string v13, "audio/amr-wb"

    const-string v14, "audio/3gpp"

    const/4 v15, 0x2

    const/4 v10, 0x1

    if-nez v9, :cond_4

    :try_start_1
    const-string v9, "amr"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "aac"

    .line 75
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_2

    if-eq v4, v10, :cond_1

    const v4, 0xc350

    goto :goto_0

    :cond_1
    const/16 v4, 0x61a8

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e80

    .line 89
    :goto_0
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 90
    invoke-static {v5, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    iput-object v7, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    new-array v7, v8, [I

    aput v15, v7, v6

    aput v11, v7, v10

    const/16 v9, 0x27

    aput v9, v7, v15

    .line 96
    iget-object v7, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v9, "aac-profile"

    invoke-virtual {v7, v9, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    iget-object v7, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v9, "sample-rate"

    invoke-virtual {v7, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 98
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v7, "channel-count"

    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v12, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    iput-object v5, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    goto :goto_2

    :cond_3
    return v6

    :cond_4
    :goto_1
    const/16 v4, 0x1f40

    if-ne v2, v4, :cond_5

    .line 65
    invoke-static {v14}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 66
    invoke-static {v14, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    .line 67
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x2fa8

    invoke-virtual {v2, v12, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    iput-object v14, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/16 v4, 0x3e80

    if-ne v2, v4, :cond_6

    .line 70
    invoke-static {v13}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 71
    invoke-static {v13, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    .line 72
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x5d2a

    invoke-virtual {v2, v12, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    iput-object v13, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    .line 105
    :cond_6
    :goto_2
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 107
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_7

    .line 108
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 111
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    .line 112
    iget-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    invoke-direct {v1, v0}, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->touch(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    .line 115
    iget-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "outputStream initialized"

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 117
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_3
    iget-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v3, 0x21

    const/16 v4, 0x23

    const/4 v5, 0x6

    if-ne v0, v14, :cond_8

    new-array v0, v5, [B

    aput-byte v4, v0, v6

    aput-byte v3, v0, v10

    aput-byte v2, v0, v15

    const/16 v2, 0x4d

    aput-byte v2, v0, v8

    const/4 v2, 0x4

    const/16 v3, 0x52

    aput-byte v3, v0, v2

    const/16 v2, 0xa

    aput-byte v2, v0, v11

    .line 123
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_4

    .line 124
    :cond_8
    iget-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    if-ne v0, v13, :cond_9

    const/16 v0, 0x9

    new-array v0, v0, [B

    aput-byte v4, v0, v6

    aput-byte v3, v0, v10

    aput-byte v2, v0, v15

    const/16 v2, 0x4d

    aput-byte v2, v0, v8

    const/4 v2, 0x4

    const/16 v3, 0x52

    aput-byte v3, v0, v2

    const/16 v2, 0x2d

    aput-byte v2, v0, v11

    const/16 v2, 0x57

    aput-byte v2, v0, v5

    const/4 v2, 0x7

    const/16 v3, 0x42

    aput-byte v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 126
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_9
    :goto_4
    return v10

    :catch_1
    move-exception v0

    .line 130
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Error when creating aac file encoder"

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method public encodeAACFrame([B)I
    .locals 11

    const/4 v0, 0x0

    .line 385
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v1, -0x1

    const/16 v2, 0x15

    if-eq v5, v1, :cond_1

    .line 388
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 389
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACInputBuffers:[Ljava/nio/ByteBuffer;

    .line 392
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v5

    .line 397
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 401
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    array-length v7, p1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 405
    :cond_1
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 406
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_4

    .line 409
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 411
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    .line 412
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    .line 414
    :cond_2
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 415
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    .line 420
    :goto_1
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    .line 423
    :cond_3
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    :goto_2
    :try_start_1
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 430
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncodedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncodedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 433
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v4

    goto :goto_4

    :catch_0
    move-exception p1

    move v0, v4

    goto :goto_3

    :catch_1
    move-exception p1

    .line 436
    :goto_3
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Error when encoding aac stream"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return v0
.end method

.method public encodeFrame([B)V
    .locals 10

    .line 189
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, -0x1

    const/16 v1, 0x15

    if-eq v4, v0, :cond_1

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 196
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    array-length v6, p1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 209
    :cond_1
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 210
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_6

    .line 213
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 215
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_2

    .line 216
    iget-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2

    .line 218
    :cond_2
    iget-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 219
    iget-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v0

    .line 222
    :goto_2
    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    const-string v7, "audio/mp4a-latm"

    const/4 v8, 0x0

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v4, 0x7

    .line 228
    new-array v7, v6, [B

    .line 229
    invoke-direct {p0, v7, v6}, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->addADTStoPacket([BI)V

    const/4 v6, 0x7

    .line 231
    invoke-virtual {v5, v7, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 232
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    array-length v5, v7

    invoke-virtual {v4, v7, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_3

    .line 234
    :cond_3
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    const-string v7, "audio/3gpp"

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    const-string v7, "audio/amr-wb"

    if-ne v6, v7, :cond_5

    .line 236
    :cond_4
    new-array v6, v4, [B

    .line 238
    invoke-virtual {v5, v6, v8, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 239
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    array-length v5, v6

    invoke-virtual {v4, v6, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 243
    :cond_5
    :goto_3
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 244
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 247
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when encoding aac file"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public releaseAACStreaming()V
    .locals 3

    .line 368
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 370
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 374
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Error when releasing aac encode stream"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public releaseStreaming()V
    .locals 3

    .line 167
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 169
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 170
    iput-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 173
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 176
    iput-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Error when releasing aac file encoder"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAACEncodeBitrate(I)Z
    .locals 3

    .line 346
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set hw aac bitrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 350
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 351
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 352
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 355
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting aac encode bitrate"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setChannelCount(I)V
    .locals 2

    .line 143
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting aac file encoder channel count"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting aac file encoder sample rate"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
