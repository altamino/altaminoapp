.class public interface abstract Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;
.super Ljava/lang/Object;
.source "AudioDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/AudioDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioDownloaderCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V
.end method

.method public abstract onPostExecute(Ljava/io/File;Lcom/narvii/media/online/audio/model/Sound;)V
.end method

.method public abstract onProgressUpdate(Lcom/narvii/media/online/audio/model/Sound;II)V
.end method
