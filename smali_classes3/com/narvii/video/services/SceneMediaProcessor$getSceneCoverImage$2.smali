.class public final Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

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

    .line 129
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$outputFile:Ljava/io/File;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "outputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
