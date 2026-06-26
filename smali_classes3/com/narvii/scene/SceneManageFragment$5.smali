.class Lcom/narvii/scene/SceneManageFragment$5;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment;->copyScene(Lcom/narvii/scene/SceneWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneManageFragment;

.field final synthetic val$position:I

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iput p3, p0, Lcom/narvii/scene/SceneManageFragment$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v1}, Lcom/narvii/scene/SceneManageFragment;->access$500(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/post/DraftManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v2, v2, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/model/SceneDraft;->copyScene(Lcom/narvii/post/DraftManager;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$5$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/scene/SceneManageFragment$5$1;-><init>(Lcom/narvii/scene/SceneManageFragment$5;Lcom/narvii/scene/SceneWrapper;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
