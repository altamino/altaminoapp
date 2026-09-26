.class Lcom/narvii/quiz/QuizQuestionFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizQuestionFragment;

.field final synthetic val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

.field final synthetic val$mediaView:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SpinningView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaView:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaView:Lcom/narvii/widget/NVImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->y(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const v1, 0x7f01004f

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->v(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    const-wide/16 v1, 0x258

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/quiz/QuizQuestionFragment$3$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$3$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$3;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaView:Lcom/narvii/widget/NVImageView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    return-void
.end method
