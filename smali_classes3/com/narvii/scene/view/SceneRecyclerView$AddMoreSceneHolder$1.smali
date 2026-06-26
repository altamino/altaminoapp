.class Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;
.super Ljava/lang/Object;
.source "SceneRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

.field final synthetic val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 529
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$700(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$700(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->createEmptyScene()Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$800(Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 536
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$900(Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 538
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$1000(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$1000(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;->onSizeChanged(Ljava/util/List;I)V

    :cond_1
    return-void
.end method
