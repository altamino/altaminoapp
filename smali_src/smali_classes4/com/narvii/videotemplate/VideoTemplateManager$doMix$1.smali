.class public final Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 3
    .line 4
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_AV_MIX:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->onError(I)V

    .line 8
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    return-void
.end method

.method public onExecutingTaskChanged(Lg7/d;)V
    .locals 0
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lg7/d;)V

    .line 4
    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    .line 4
    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    .line 4
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    .line 4
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 69
    .line 70
    :cond_2
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 90
    .line 91
    :cond_3
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onFinish()V

    .line 101
    :cond_4
    return-void
.end method
