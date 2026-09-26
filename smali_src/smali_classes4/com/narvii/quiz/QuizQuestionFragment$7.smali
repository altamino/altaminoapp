.class Lcom/narvii/quiz/QuizQuestionFragment$7;
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


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

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
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v3}, Lcom/narvii/quiz/QuizQuestionFragment;->L(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    const/4 v4, 0x4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    const v5, 0x7f010038

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->v(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->z(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$7;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->t(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    const-wide/16 v2, 0x3e8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_3
    return-void
.end method
