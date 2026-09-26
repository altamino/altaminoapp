.class public interface abstract Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/media/online/audio/model/Sound;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPostExecute(Ljava/io/File;Lcom/narvii/media/online/audio/model/Sound;)V
.end method

.method public abstract onProgressUpdate(Lcom/narvii/media/online/audio/model/Sound;II)V
    .param p1    # Lcom/narvii/media/online/audio/model/Sound;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
