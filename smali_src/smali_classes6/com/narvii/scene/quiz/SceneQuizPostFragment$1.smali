.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->val$finalMessageId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->val$finalMessageId:I

    .line 3
    .line 4
    sget v0, Lcom/narvii/mediaeditor/R$string;->input_quiz_title:I

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;)V

    .line 19
    .line 20
    const-wide/16 v0, 0x32

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 24
    :cond_0
    return-void
.end method
