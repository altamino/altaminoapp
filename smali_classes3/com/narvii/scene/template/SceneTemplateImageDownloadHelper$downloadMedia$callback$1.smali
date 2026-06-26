.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;
.super Ljava/lang/Object;
.source "SceneTemplateImageDownloadHelper.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

.field final synthetic $media:Lcom/narvii/model/Media;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;Lcom/narvii/model/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;",
            "Lcom/narvii/model/Media;",
            ")V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    iput-object p3, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;->onDownloadError(Ljava/lang/String;Ljava/lang/Exception;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getPhoto()Lcom/narvii/photos/PhotoManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    invoke-virtual {p1, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setMedia(Lcom/narvii/model/Media;)V

    .line 53
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-interface {p1, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;->onDownloadSuccess(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download Media Success >>> oldUrl : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   newUrl : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SceneTemplateHelper"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;->onDownloadProgress(IILcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    :cond_0
    return-void
.end method
