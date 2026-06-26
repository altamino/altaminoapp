.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;
.super Ljava/lang/Object;
.source "SceneRecyclerView.java"

# interfaces
.implements Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPoll(Landroid/view/View;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-interface {p1, v0}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onEditPoll(Lcom/narvii/scene/SceneWrapper;)V

    :cond_0
    return-void
.end method

.method public onNewQuiz(Landroid/view/View;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-interface {p1, v0}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onEditQuiz(Lcom/narvii/scene/SceneWrapper;)V

    :cond_0
    return-void
.end method
