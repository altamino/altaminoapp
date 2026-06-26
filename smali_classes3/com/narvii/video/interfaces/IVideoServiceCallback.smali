.class public interface abstract Lcom/narvii/video/interfaces/IVideoServiceCallback;
.super Ljava/lang/Object;
.source "IVideoServiceCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onActionCancelled()V
.end method

.method public abstract onActionFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onActionStarted()V
.end method

.method public abstract onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
.end method

.method public abstract onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract onFramePicturesLoaded(ILjava/io/File;)V
.end method

.method public abstract onProgress(FLjava/lang/String;)V
.end method

.method public abstract onVideoProcessed(Ljava/lang/String;)V
.end method
