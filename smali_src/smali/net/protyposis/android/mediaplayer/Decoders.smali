.class Lnet/protyposis/android/mediaplayer/Decoders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Decoders"


# instance fields
.field private mAudioDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

.field private mDecoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public addDecoder(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    instance-of v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 12
    .line 13
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    .line 21
    .line 22
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mAudioDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v4, v1

    .line 10
    move-object v3, v2

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v5

    .line 15
    .line 16
    if-eqz v5, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    check-cast v5, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dequeueDecodedFrame()Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    if-eqz v6, :cond_3

    .line 29
    .line 30
    iget-object v7, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 31
    .line 32
    if-ne v5, v7, :cond_2

    .line 33
    move-object v3, v6

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_2
    const-wide/16 v7, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6, v7, v8}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_2
    invoke-virtual {v5, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->queueSampleToCodec(Z)Z

    .line 44
    move-result v6

    .line 45
    .line 46
    if-eqz v6, :cond_4

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isOutputEos()Z

    .line 51
    move-result v5

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_5
    if-eqz v3, :cond_6

    .line 59
    return-object v3

    .line 60
    .line 61
    :cond_6
    if-nez p1, :cond_7

    .line 62
    return-object v2

    .line 63
    .line 64
    :cond_7
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    move-result v0

    .line 69
    .line 70
    if-ne v4, v0, :cond_0

    .line 71
    .line 72
    sget-object p1, Lnet/protyposis/android/mediaplayer/Decoders;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "EOS NULL"

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v2
.end method

.method public dismissFrames()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame()V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public getAudioDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mAudioDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    return-object v0
.end method

.method public getCachedDuration()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v1, 0x7fffffffffffffffL

    .line 12
    move-wide v3, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v5

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCachedDuration()J

    .line 28
    move-result-wide v5

    .line 29
    .line 30
    .line 31
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 32
    move-result-wide v3

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    cmp-long v0, v3, v1

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-wide/16 v0, -0x1

    .line 40
    return-wide v0

    .line 41
    :cond_1
    return-wide v3
.end method

.method public getCurrentDecodingPTS()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 24
    .line 25
    instance-of v4, v3, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->suspectEOS()Z

    .line 35
    move-result v4

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCurrentDecodingPTS()J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    const-wide/high16 v5, -0x8000000000000000L

    .line 45
    .line 46
    cmp-long v5, v3, v5

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    cmp-long v5, v1, v3

    .line 51
    .line 52
    if-lez v5, :cond_0

    .line 53
    move-wide v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-wide v1
.end method

.method public getDecoders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    return-object v0
.end method

.method public getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    return-object v0
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

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
    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->hasCacheReachedEndOfStream()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public isEOS()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isOutputEos()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    move-result v0

    .line 36
    .line 37
    if-ne v2, v0, :cond_2

    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1
.end method

.method public release()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .line 25
    sget-object v2, Lnet/protyposis/android/mediaplayer/Decoders;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "release failed"

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    return-void
.end method

.method public renderFrames()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->renderFrame()V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public suspectAudioEOS()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mAudioDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->suspectEOS()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
