.class public final Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/IVideoServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lg7/d;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "newTask"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
