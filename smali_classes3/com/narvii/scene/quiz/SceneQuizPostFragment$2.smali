.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;
.super Ljava/lang/Object;
.source "SceneQuizPostFragment.java"

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

    .line 264
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 277
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->access$000(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)Lcom/narvii/model/QuizQuestion;

    .line 278
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

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
