.class abstract Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, -0x1

    .line 29
    .line 30
    if-eq p3, v0, :cond_0

    .line 31
    .line 32
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->needFixCachedDuration()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->needFixCachedDuration:Z

    .line 39
    .line 40
    iput-boolean p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    .line 41
    .line 42
    iput p3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->resetMetaDuration()V

    .line 52
    .line 53
    iput-object p4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

    .line 54
    .line 55
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 56
    .line 57
    const-string p2, "mime"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 68
    .line 69
    const-wide/high16 p1, -0x8000000000000000L

    .line 70
    .line 71
    iput-wide p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    .line 72
    return-void

    .line 73
    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p2, "no track specified"

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1
.end method

.method private isInCacheDurationBlackList()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "lge"

    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return v2

    .line 19
    .line 20
    :cond_1
    const-string v3, "LG"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    return v1

    .line 28
    .line 29
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string/jumbo v3, "sm-j"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    return v1

    .line 43
    :cond_3
    return v2
.end method

.method private needFixCachedDuration()Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isInCacheDurationBlackList()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    move v0, v1

    .line 15
    move-wide v4, v2

    .line 16
    .line 17
    :goto_0
    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackCount()I

    .line 21
    move-result v6

    .line 22
    .line 23
    if-ge v0, v6, :cond_2

    .line 24
    .line 25
    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 29
    move-result-object v6

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    const-string v7, "bitrate"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 37
    move-result v8

    .line 38
    .line 39
    if-nez v8, :cond_0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 44
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    int-to-long v6, v6

    .line 46
    add-long/2addr v4, v6

    .line 47
    .line 48
    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    cmp-long v0, v4, v2

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    const/4 v0, 0x1

    .line 55
    return v0

    .line 56
    :cond_3
    return v1
.end method

.method private resetMetaDuration()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "durationUs"

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    :try_start_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    iput-wide v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :catch_0
    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 6
    return-void
.end method

.method public final decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dequeueDecodedFrame()Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->queueSampleToCodec(Z)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_2
    if-nez p2, :cond_0

    .line 22
    return-object v1

    .line 23
    .line 24
    :cond_3
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "EOS NULL"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-object v1
.end method

.method public final dequeueDecodedFrame()Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 9
    .line 10
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 23
    .line 24
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 25
    .line 26
    and-int/lit8 v4, v4, 0x4

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    move v4, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v4, v3

    .line 32
    .line 33
    :goto_0
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanging:Z

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    .line 43
    .line 44
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 45
    .line 46
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanging:Z

    .line 47
    .line 48
    iput-boolean v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    if-ltz v0, :cond_6

    .line 53
    .line 54
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    aget-object v1, v1, v0

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 61
    .line 62
    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 63
    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 72
    .line 73
    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 74
    .line 75
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 76
    add-int/2addr v5, v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    :cond_3
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    .line 82
    .line 83
    .line 84
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    check-cast v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 88
    .line 89
    iput v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    .line 90
    .line 91
    iput-object v1, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->data:Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 94
    .line 95
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 96
    .line 97
    iput-wide v0, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 98
    .line 99
    iget-boolean v5, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 100
    .line 101
    iput-boolean v5, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    .line 102
    .line 103
    iget-boolean v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    .line 104
    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    .line 108
    .line 109
    iput-boolean v2, v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->representationChanged:Z

    .line 110
    .line 111
    :cond_4
    if-eqz v5, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    const-string v1, "EOS output"

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_5
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    .line 122
    :goto_1
    return-object v4

    .line 123
    :cond_6
    const/4 v2, -0x3

    .line 124
    .line 125
    if-ne v0, v2, :cond_7

    .line 126
    .line 127
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 136
    .line 137
    const-string v2, "output buffers have changed."

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    const/4 v2, -0x2

    .line 143
    .line 144
    if-ne v0, v2, :cond_8

    .line 145
    .line 146
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    const-string v4, "output format has changed to "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 176
    :cond_8
    :goto_2
    return-object v1
.end method

.method public dismissFrame()V
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCurrentFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    :cond_0
    return-void
.end method

.method public dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method public getCachedDuration()J
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->needFixCachedDuration:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    return-wide v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getCachedDuration()J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getCurrentDecodingPTS()J
    .locals 2

    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    return-wide v0
.end method

.method protected final getFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getMetaDuration()J
    .locals 2

    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->metaDuration:J

    return-wide v0
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->hasCacheReachedEndOfStream()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final isInputEos()Z
    .locals 1

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    return v0
.end method

.method protected final isOutputEos()Z
    .locals 1

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    return v0
.end method

.method protected final isPassive()Z
    .locals 1

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    return v0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public final queueSampleToCodec(Z)Z
    .locals 13

    .line 1
    .line 2
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->shouldDecodeAnotherFrame()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTrackIndex()I

    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTrackIndex()I

    .line 28
    move-result v0

    .line 29
    .line 30
    iget v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    .line 31
    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_1
    return v1

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 50
    move-result v5

    .line 51
    .line 52
    if-ltz v5, :cond_8

    .line 53
    .line 54
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    aget-object p1, p1, v5

    .line 57
    .line 58
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->hasTrackFormatChanged()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    const-wide/16 v11, -0x1

    .line 65
    const/4 v4, 0x1

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanging:Z

    .line 70
    .line 71
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    .line 75
    const-wide/16 v8, 0x0

    .line 76
    const/4 v10, 0x4

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCachedDuration()J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    cmp-long p1, v2, v11

    .line 86
    .line 87
    if-lez p1, :cond_8

    .line 88
    .line 89
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

    .line 90
    .line 91
    if-eqz p1, :cond_8

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;->onBuffering(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCachedDuration()J

    .line 99
    move-result-wide v6

    .line 100
    .line 101
    cmp-long v0, v6, v11

    .line 102
    .line 103
    if-lez v0, :cond_4

    .line 104
    .line 105
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOnDecoderEventListener:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;->onBuffering(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V

    .line 111
    .line 112
    :cond_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1, v1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 116
    move-result p1

    .line 117
    .line 118
    if-gez p1, :cond_5

    .line 119
    .line 120
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string v0, "EOS input"

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    iput-boolean v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 128
    move p1, v1

    .line 129
    move v7, p1

    .line 130
    move-wide v8, v2

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    .line 137
    move-result-wide v2

    .line 138
    move v7, p1

    .line 139
    move-wide v8, v2

    .line 140
    move p1, v4

    .line 141
    .line 142
    :goto_0
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 143
    const/4 v6, 0x0

    .line 144
    .line 145
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    const/4 v1, 0x4

    .line 149
    :cond_6
    move v10, v1

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 153
    .line 154
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    .line 162
    :cond_7
    move v1, p1

    .line 163
    :cond_8
    :goto_1
    return v1
.end method

.method protected final reinitCodec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 7
    .line 8
    iget v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->resetMetaDuration()V

    .line 18
    .line 19
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 23
    .line 24
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 25
    .line 26
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 30
    .line 31
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 35
    .line 36
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 56
    .line 57
    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    iput-boolean v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 61
    .line 62
    iput-boolean v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 63
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    iput-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    .line 70
    .line 71
    :goto_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 72
    array-length v3, v3

    .line 73
    .line 74
    if-ge v2, v3, :cond_0

    .line 75
    .line 76
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    .line 77
    .line 78
    new-instance v4, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 79
    .line 80
    .line 81
    invoke-direct {v4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :cond_0
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v4, "reinitCodec "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 107
    move-result-wide v4

    .line 108
    sub-long/2addr v4, v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "ms"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 125
    .line 126
    :goto_1
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 130
    .line 131
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string v2, "reinitCodec: illegal state"

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    throw v0

    .line 138
    .line 139
    :goto_2
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 143
    .line 144
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 145
    .line 146
    const-string v2, "reinitCodec: invalid surface or format"

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    throw v0
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 6
    .line 7
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 11
    .line 12
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "decoder released"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    iget v1, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 12
    return-void
.end method

.method protected final releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->clear()V

    .line 4
    .line 5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mEmptyFrameInfos:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public renderFrame()V
    .locals 3

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCurrentFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    :cond_0
    return-void
.end method

.method public renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 0

    .line 1
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

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 2
    invoke-virtual {p5}, Landroid/media/MediaCodec;->flush()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seeking to:                 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 4
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

    .line 5
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->getBaseSeekMode()I

    move-result p1

    invoke-virtual {p4, p2, p3, p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 6
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

    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mOutputEos:Z

    .line 7
    invoke-virtual {p5}, Landroid/media/MediaCodec;->flush()V

    .line 8
    invoke-virtual {p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->hasTrackFormatChanged()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    iput-boolean p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mRepresentationChanged:Z

    .line 10
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

    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mDecodingPTS:J

    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    iget-object v7, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mCodec:Landroid/media/MediaCodec;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 1
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mPassive:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTrackIndex()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mTrackIndex:I

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mInputEos:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->mExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public suspectEOS()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getMetaDuration()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-lez v4, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCurrentDecodingPTS()J

    .line 14
    move-result-wide v4

    .line 15
    sub-long/2addr v0, v4

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    .line 22
    const-wide/32 v2, 0x30d40

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-gez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method
