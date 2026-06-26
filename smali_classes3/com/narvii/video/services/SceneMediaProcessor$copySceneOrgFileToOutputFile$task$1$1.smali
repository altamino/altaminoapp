.class final Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1$1;->this$0:Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1$1;->this$0:Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;

    iget-object v1, v0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;->$outputPathList:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
