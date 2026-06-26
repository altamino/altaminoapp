.class public final Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,296:1\n10894#2,2:297\n10894#2,2:299\n*E\n*S KotlinDebug\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3\n*L\n165#1,2:297\n173#1,2:299\n*E\n"
.end annotation


# instance fields
.field final synthetic $concatFilePath:Ljava/lang/String;

.field final synthetic $results:[Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iput-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->$results:[Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->$concatFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 171
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object p1, p1, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lcom/narvii/story/StoryDownloadHelper;->showResult$default(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->$results:[Ljava/lang/String;

    .line 299
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 173
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->$concatFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 161
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 161
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 161
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->$results:[Ljava/lang/String;

    .line 297
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 165
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->$concatFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 167
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object v1, v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iget-object v2, v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$author:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$ndcId:I

    invoke-static {v1, v2, v0, p1}, Lcom/narvii/story/StoryDownloadHelper;->access$generateVideoWithWaterMarkToGallery(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/User;ILjava/lang/String;)V

    return-void
.end method
