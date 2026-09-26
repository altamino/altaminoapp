.class Lcom/narvii/scene/SceneManageFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/scene/SceneManageFragment$5;->val$position:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/scene/SceneManageFragment;->access$500(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/post/DraftManager;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/model/SceneDraft;->copyScene(Lcom/narvii/post/DraftManager;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$5$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/narvii/scene/SceneManageFragment$5$1;-><init>(Lcom/narvii/scene/SceneManageFragment$5;Lcom/narvii/scene/SceneWrapper;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_0
    return-void
.end method
