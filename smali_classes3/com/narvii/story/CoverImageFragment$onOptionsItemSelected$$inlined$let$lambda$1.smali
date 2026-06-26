.class public final Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CoverImageFragment.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CoverImageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $file$inlined:Ljava/io/File;

.field final synthetic this$0:Lcom/narvii/story/CoverImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/CoverImageFragment;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    iput-object p2, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->$file$inlined:Ljava/io/File;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 1

    .line 163
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 164
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {v0}, Lcom/narvii/story/CoverImageFragment;->access$getDialog$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 0

    .line 158
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getDialog$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 147
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 147
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 1

    .line 149
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    .line 150
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 151
    iget-object p2, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p2}, Lcom/narvii/story/CoverImageFragment;->access$getCoverImageInfo$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/scene/model/SceneCoverImageInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "coverImageInfo"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object p2, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getDialog$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 154
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 147
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    return-void
.end method
