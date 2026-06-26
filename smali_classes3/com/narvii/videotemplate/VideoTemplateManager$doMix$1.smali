.class public final Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;
.super Ljava/lang/Object;
.source "VideoTemplateManager.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateManager;->doMix()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 341
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 360
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_AV_MIX:I

    invoke-virtual {p1, v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->onError(I)V

    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 341
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 341
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 341
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 341
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 356
    :cond_3
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onFinish()V

    :cond_4
    return-void
.end method
