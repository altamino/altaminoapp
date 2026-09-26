.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNewPoll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onEditPoll(Lcom/narvii/scene/SceneWrapper;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onNewQuiz(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onEditQuiz(Lcom/narvii/scene/SceneWrapper;)V

    .line 32
    :cond_0
    return-void
.end method
