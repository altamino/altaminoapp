.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;->onDownloadError(Ljava/lang/String;Ljava/lang/Exception;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getPhoto()Lcom/narvii/photos/PhotoManager;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setMedia(Lcom/narvii/model/Media;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;->onDownloadSuccess(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 42
    .line 43
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v0, "Download Media Success >>> oldUrl : "

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "   newUrl : "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$media:Lcom/narvii/model/Media;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-string v0, "SceneTemplateHelper"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;->$entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;->onDownloadProgress(IILcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 14
    :cond_0
    return-void
.end method
