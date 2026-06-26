.class abstract Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;,
        Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    }
.end annotation


# static fields
.field public static final INDEX_NONE:I = -0x1

.field public static final PTS_EOS:J = 0x7fffffffffffffffL

.field public static final PTS_NONE:J = -0x8000000000000000L

.field private static final TIMEOUT_US:J


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodec:Landroid/media/MediaCodec;

.field private mCodecInputBuffers:[Ljava/nio/ByteBuffer;

.field private mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCurrentFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

.field private mDecodingPTS:J

.field private mEmptyFrameInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

.field private mFormat:Landroid/media/MediaFormat;

.field private mInputEos:Z

.field private mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

.field private mOutputEos:Z

.field private mPassive:Z

.field private mRepresentationChanged:Z

.field private mRepresentationChanging:Z

.field private mTrackIndex:I

.field private metaDuration:J

.field private needFixCachedDuration:Z


# direct methods
.method public constructor <init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 136
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 138
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->needFixCachedDuration()Z

    move-result v0

    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->needFixCachedDuration:Z

    .line 140
    iput-boolean p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    .line 141
    iput p3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    .line 142
    iget p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    invoke-virtual {p1, p2}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 144
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->resetMetaDuration()V

    .line 146
    iput-object p4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

    .line 148
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    const-wide/high16 p1, -0x8000000000000000L

    .line 150
    iput-wide p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no track specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isInCacheDurationBlackList()Z
    .locals 4

    .line 467
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "lge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 471
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v3, "LG"

    .line 476
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 481
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sm-j"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private needFixCachedDuration()Z
    .locals 9

    .line 444
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isInCacheDurationBlackList()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v0, 0x0

    .line 446
    :goto_0
    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v6}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 447
    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v6, v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "bitrate"

    .line 448
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 452
    :cond_0
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v6, v6

    add-long/2addr v4, v6

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private resetMetaDuration()V
    .locals 5

    const-string v0, "durationUs"

    const-wide/16 v1, -0x1

    .line 155
    :try_start_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    goto :goto_0

    .line 158
    :cond_0
    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    :goto_0
    return-void
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    :cond_0
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 605
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dequeueDecodedFrame()Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    .line 608
    :goto_0
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->queueSampleToCodec(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez p2, :cond_0

    return-object v1

    .line 622
    :cond_3
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string p2, "EOS NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final dequeueDecodedFrame()Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 378
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    .line 379
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 381
    iget-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanging:Z

    if-eqz v4, :cond_2

    .line 387
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    .line 389
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 390
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanging:Z

    .line 391
    iput-boolean v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    goto/16 :goto_2

    :cond_2
    if-ltz v0, :cond_6

    .line 397
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 398
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_3

    .line 399
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 400
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 404
    :cond_3
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 405
    iput v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    .line 406
    iput-object v1, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->data:Ljava/nio/ByteBuffer;

    .line 407
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 408
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    iput-boolean v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    .line 410
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    if-eqz v0, :cond_4

    .line 411
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    .line 412
    iput-boolean v2, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->representationChanged:Z

    .line 414
    :cond_4
    iget-boolean v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    if-eqz v0, :cond_5

    .line 415
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v1, "EOS output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    :cond_5
    iget-wide v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    :goto_1
    return-object v4

    :cond_6
    const/4 v2, -0x3

    if-ne v0, v2, :cond_7

    .line 424
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 425
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v2, "output buffers have changed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/4 v2, -0x2

    if-ne v0, v2, :cond_8

    .line 428
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 429
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output format has changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_8
    :goto_2
    return-object v1
.end method

.method public dismissFrame()V
    .locals 1

    .line 556
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCurrentFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    :cond_0
    return-void
.end method

.method public dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 0

    .line 548
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method public getCachedDuration()J
    .locals 2

    .line 504
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->needFixCachedDuration:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 507
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getCachedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 174
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getCurrentDecodingPTS()J
    .locals 2

    .line 494
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    return-wide v0
.end method

.method protected final getFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 170
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getMetaDuration()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    return-wide v0
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->hasCacheReachedEndOfStream()Z

    move-result v0

    return v0
.end method

.method protected final isOutputEos()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    return v0
.end method

.method protected final isPassive()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    return v0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public final queueSampleToCodec(Z)Z
    .locals 13

    .line 304
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->shouldDecodeAnotherFrame()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 309
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    iget v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    if-eq v0, v2, :cond_2

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 315
    :cond_2
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_7

    .line 317
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, p1, v5

    .line 319
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->hasTrackFormatChanged()Z

    move-result v0

    const-wide/16 v11, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 324
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanging:Z

    .line 325
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 328
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCachedDuration()J

    move-result-wide v2

    cmp-long p1, v2, v11

    if-lez p1, :cond_7

    .line 329
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

    if-eqz p1, :cond_7

    .line 330
    invoke-interface {p1, p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;->onBuffering(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V

    goto :goto_2

    .line 335
    :cond_3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCachedDuration()J

    move-result-wide v6

    cmp-long v0, v6, v11

    if-lez v0, :cond_4

    .line 336
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

    if-eqz v0, :cond_4

    .line 337
    invoke-interface {v0, p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;->onBuffering(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V

    .line 340
    :cond_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0, p1, v1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_5

    .line 344
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v0, "EOS input"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    move-wide v8, v2

    const/4 p1, 0x0

    const/4 v7, 0x0

    goto :goto_0

    .line 348
    :cond_5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    move v7, p1

    move-wide v8, v2

    const/4 p1, 0x1

    .line 352
    :goto_0
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    const/4 v10, 0x4

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 361
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    if-nez v0, :cond_8

    .line 362
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x0

    :cond_8
    :goto_3
    return p1

    :cond_9
    :goto_4
    return v1
.end method

.method protected final reinitCodec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 219
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 222
    :goto_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    iget v5, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    invoke-virtual {v3, v5}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 224
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->resetMetaDuration()V

    .line 226
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 230
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 233
    :cond_1
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 234
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 235
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 236
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 237
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 238
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 239
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    .line 243
    :goto_1
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    if-ge v4, v2, :cond_2

    .line 244
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    new-instance v3, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    invoke-direct {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 247
    :cond_2
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reinitCodec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 253
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 254
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v2, "reinitCodec: illegal state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    throw v0

    :catch_1
    move-exception v0

    .line 249
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 250
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v2, "reinitCodec: invalid surface or format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public release()V
    .locals 2

    .line 683
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 684
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 685
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v1, "decoder released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 3

    .line 568
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    iget v1, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 569
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method protected final releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 1

    .line 579
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->clear()V

    .line 580
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public renderFrame()V
    .locals 3

    .line 539
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCurrentFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    :cond_0
    return-void
.end method

.method public renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method protected seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 652
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 653
    invoke-virtual {p5}, Landroid/media/MediaCodec;->flush()V

    const/4 p1, 0x0

    return-object p1

    .line 657
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seeking to:                 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractor current position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->getBaseSeekMode()I

    move-result p1

    invoke-virtual {p4, p2, p3, p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    .line 662
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extractor new position:     "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 668
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 669
    invoke-virtual {p5}, Landroid/media/MediaCodec;->flush()V

    .line 671
    invoke-virtual {p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->hasTrackFormatChanged()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 672
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    .line 673
    iput-boolean p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    .line 676
    :cond_1
    invoke-virtual {p0, p2, p2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object p1

    return-object p1
.end method

.method public final seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    .line 636
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    .line 637
    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    iget-object v7, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object p1

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCurrentFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    return-void
.end method

.method protected shouldDecodeAnotherFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final skipToNextSample()V
    .locals 2

    .line 274
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public suspectEOS()Z
    .locals 6

    .line 68
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getMetaDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 70
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCurrentDecodingPTS()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x30d40

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
