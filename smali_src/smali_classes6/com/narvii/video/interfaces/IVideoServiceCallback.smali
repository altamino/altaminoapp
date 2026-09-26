.class public interface abstract Lcom/narvii/video/interfaces/IVideoServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onActionStarted()V
.end method

.method public abstract onExecutingTaskChanged(Lg7/d;)V
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFramePicturesLoaded(ILjava/io/File;)V
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onProgress(FLjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onVideoProcessed(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
