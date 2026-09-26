.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->val$sceneId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onEditQuiz(Lcom/narvii/scene/SceneWrapper;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    .line 37
    if-ne p2, p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->this$2:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;->val$sceneId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;->onDeleteQuiz(Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    return-void
.end method
