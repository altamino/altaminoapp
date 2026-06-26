.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;
.super Ljava/lang/Object;
.source "SceneQuizPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizPostFragment;->doSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

.field final synthetic val$finalMessageId:I


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;I)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    iput p2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->val$finalMessageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->val$finalMessageId:I

    sget v0, Lcom/narvii/mediaeditor/R$string;->input_quiz_title:I

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    new-instance p1, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
