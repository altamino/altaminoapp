.class Lcom/narvii/quiz/QuizMileStoneFragment$1;
.super Ljava/lang/Object;
.source "QuizMileStoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    iget v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    if-lez v1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$000(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const v3, 0x7f0f0c24

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    iget v2, v2, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    iget v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 216
    iget v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    if-ltz v1, :cond_1

    const-wide/16 v0, 0x3e8

    .line 217
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$000(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    :goto_0
    return-void
.end method
