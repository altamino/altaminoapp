.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 10
    return-void
.end method
