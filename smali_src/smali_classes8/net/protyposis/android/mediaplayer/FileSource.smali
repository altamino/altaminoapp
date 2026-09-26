.class public Lnet/protyposis/android/mediaplayer/FileSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaSource;


# instance fields
.field private mAudioFile:Ljava/io/File;

.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mFile:Ljava/io/File;

    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mAudioFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getAudioExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mAudioFile:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;-><init>()V

    .line 10
    .line 11
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mAudioFile:Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getAudioFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mAudioFile:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getVideoExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/FileSource;->mFile:Ljava/io/File;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 15
    return-object v0
.end method
