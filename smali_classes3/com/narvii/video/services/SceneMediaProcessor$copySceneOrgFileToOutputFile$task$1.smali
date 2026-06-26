.class final Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $outputPathList:Ljava/util/ArrayList;

.field final synthetic $sceneInfoList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$sceneInfoList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$outputPathList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 565
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 566
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sceneInfoList[index]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 567
    invoke-static {v2}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object v3

    .line 568
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$outputPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 570
    invoke-static/range {v3 .. v8}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_1
    new-instance v0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
