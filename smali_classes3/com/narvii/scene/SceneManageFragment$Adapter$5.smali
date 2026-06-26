.class Lcom/narvii/scene/SceneManageFragment$Adapter$5;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->deleteCurrentScene(Lcom/narvii/scene/SceneWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 441
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 442
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    .line 443
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 445
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 447
    :cond_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v0, v0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v1}, Lcom/narvii/scene/SceneManageFragment;->access$1000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->removeScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method
