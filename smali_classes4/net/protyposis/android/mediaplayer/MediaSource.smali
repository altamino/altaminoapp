.class public interface abstract Lnet/protyposis/android/mediaplayer/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# virtual methods
.method public abstract getAudioExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getVideoExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
