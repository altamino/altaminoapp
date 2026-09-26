.class public Lnet/protyposis/android/mediaplayer/MediaExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIA_FORMAT_EXTENSION_KEY_DAR:Ljava/lang/String; = "mpx-dar"

.field public static final SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final SAMPLE_FLAG_SYNC:I = 0x1

.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private mApiExtractor:Landroid/media/MediaExtractor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->renewExtractor()V

    .line 7
    return-void
.end method


# virtual methods
.method public advance()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCachedDuration()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getCachedDuration()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSampleFlags()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSampleTime()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSampleTrackIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTrackCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "mime"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "video/"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "width"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v1, "height"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 45
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    div-float/2addr v0, v1

    .line 48
    .line 49
    const-string v1, "mpx-dar"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 53
    :cond_0
    return-object p1
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->hasCacheReachedEndOfStream()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasTrackFormatChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 6
    return-void
.end method

.method protected renewExtractor()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 15
    return-void
.end method

.method public seekTo(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 6
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 6
    return-void
.end method

.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public final setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public unselectTrack(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaExtractor;->mApiExtractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 6
    return-void
.end method
