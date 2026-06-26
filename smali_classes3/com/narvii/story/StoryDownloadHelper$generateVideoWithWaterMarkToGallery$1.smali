.class public final Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;->generateVideoWithWaterMarkToGallery(Lcom/narvii/model/User;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $outputPath:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iput-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->$outputPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    .line 264
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    if-eq p1, v0, :cond_0

    .line 265
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/narvii/story/StoryDownloadHelper;->showResult$default(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 267
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onFinish()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->$outputPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/narvii/story/StoryDownloadHelper;->access$showResult(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;)V

    .line 260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    const/16 v0, 0x14

    int-to-float v0, v0

    const/16 v1, 0x50

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 255
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/story/StoryDownloadHelper;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    return-void
.end method
