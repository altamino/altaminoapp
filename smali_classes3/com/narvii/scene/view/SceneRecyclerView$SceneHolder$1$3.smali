.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;
.super Ljava/lang/Object;
.source "SceneRecyclerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->val$sceneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 425
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p2, p2, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p2, p2, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-interface {p1, p2}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onEditQuiz(Lcom/narvii/scene/SceneWrapper;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 430
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->val$sceneId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onDeleteQuiz(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
