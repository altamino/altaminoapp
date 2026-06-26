.class Lnet/protyposis/android/mediaplayer/Decoders;
.super Ljava/lang/Object;
.source "Decoders.java"


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
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDecoder(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    instance-of v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    if-eqz v0, :cond_1

    .line 46
    check-cast p1, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mAudioDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

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

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 80
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 81
    :goto_2
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dequeueDecodedFrame()Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 83
    iget-object v7, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    if-ne v5, v7, :cond_2

    move-object v3, v6

    goto :goto_3

    :cond_2
    const-wide/16 v7, 0x0

    .line 87
    invoke-virtual {v5, v6, v7, v8}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    goto :goto_2

    .line 91
    :cond_3
    :goto_3
    invoke-virtual {v5, v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->queueSampleToCodec(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isOutputEos()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    if-nez p1, :cond_7

    return-object v2

    .line 110
    :cond_7
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 113
    :cond_8
    sget-object p1, Lnet/protyposis/android/mediaplayer/Decoders;->TAG:Ljava/lang/String;

    const-string v0, "EOS NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public dismissFrames()V
    .locals 2

    .line 154
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 155
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCachedDuration()J
    .locals 7

    .line 194
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 195
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCachedDuration()J

    move-result-wide v5

    .line 196
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    return-wide v3
.end method

.method public getCurrentDecodingPTS()J
    .locals 8

    .line 161
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 162
    instance-of v4, v3, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    if-eqz v4, :cond_1

    .line 163
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->suspectEOS()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCurrentDecodingPTS()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

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

    .line 51
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    return-object v0
.end method

.method public getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mVideoDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    return-object v0
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 213
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->hasCacheReachedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isEOS()Z
    .locals 4

    .line 178
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 179
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isOutputEos()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public release()V
    .locals 4

    .line 121
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 125
    :try_start_0
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 127
    sget-object v2, Lnet/protyposis/android/mediaplayer/Decoders;->TAG:Ljava/lang/String;

    const-string v3, "release failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public renderFrames()V
    .locals 2

    .line 140
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 141
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->renderFrame()V

    goto :goto_0

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

    .line 134
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;

    .line 135
    invoke-virtual {v1, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public suspectAudioEOS()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/Decoders;->mAudioDecoder:Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->suspectEOS()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
