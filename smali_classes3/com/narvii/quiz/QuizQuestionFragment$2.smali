.class Lcom/narvii/quiz/QuizQuestionFragment$2;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;


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

    .line 314
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$800(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 318
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/narvii/quiz/QuizQuestionFragment$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizQuestionFragment$2$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
