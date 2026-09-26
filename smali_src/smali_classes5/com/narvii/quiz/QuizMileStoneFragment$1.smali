.class Lcom/narvii/quiz/QuizMileStoneFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->n(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/widget/TextView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 18
    .line 19
    .line 20
    const v3, 0x7f120d51

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " ("

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 35
    .line 36
    iget v2, v2, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, ")"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$1;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 58
    .line 59
    iget v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    iput v1, v0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 64
    .line 65
    if-ltz v1, :cond_1

    .line 66
    .line 67
    const-wide/16 v0, 0x3e8

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->n(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/widget/TextView;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 79
    :goto_0
    return-void
.end method
