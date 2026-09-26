.class public final Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$outputFile:Ljava/io/File;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v2, v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outputPath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$outputFile:Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 27
    :cond_0
    return-void
.end method
