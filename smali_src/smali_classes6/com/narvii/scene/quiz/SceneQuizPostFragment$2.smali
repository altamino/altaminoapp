.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizPostFragment;->onViewStateRestored(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->access$000(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)Lcom/narvii/model/QuizQuestion;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 11
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
