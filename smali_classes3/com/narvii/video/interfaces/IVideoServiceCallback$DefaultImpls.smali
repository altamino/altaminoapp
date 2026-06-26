.class public final Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "IVideoServiceCallback.kt"


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

    return-void
.end method

.method public static onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public static onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 0

    return-void
.end method

.method public static onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V
    .locals 0

    const-string p0, "newTask"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V
    .locals 0

    return-void
.end method

.method public static onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V
    .locals 0

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
