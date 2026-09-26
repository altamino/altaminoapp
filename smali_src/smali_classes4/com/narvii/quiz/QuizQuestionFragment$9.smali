.class Lcom/narvii/quiz/QuizQuestionFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment;->showAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizQuestionFragment;

.field final synthetic val$answerItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->val$answerItem:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->w(Lcom/narvii/quiz/QuizQuestionFragment;)Lcom/narvii/widget/EqualGridLayout;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->val$answerItem:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->v(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->val$answerItem:Landroid/view/View;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v2, 0x7f010037

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    :cond_1
    return-void
.end method
