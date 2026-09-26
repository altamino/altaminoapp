.class Lcom/narvii/quiz/QuizWelcomeFragment$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizWelcomeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizWelcomeFragment;JJ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->r(Lcom/narvii/quiz/QuizWelcomeFragment;)V

    .line 6
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 3
    long-to-int p1, p1

    .line 4
    .line 5
    iput p1, v0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 6
    int-to-float p1, p1

    .line 7
    .line 8
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 9
    div-float/2addr p1, p2

    .line 10
    float-to-double p1, p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 14
    move-result-wide p1

    .line 15
    double-to-int p1, p1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/quiz/QuizWelcomeFragment;->p(Lcom/narvii/quiz/QuizWelcomeFragment;)I

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eq p2, p1, :cond_0

    .line 24
    .line 25
    if-lez p1, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->q(Lcom/narvii/quiz/QuizWelcomeFragment;I)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->o(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->p(Lcom/narvii/quiz/QuizWelcomeFragment;)I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, ""

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    const p2, 0x7f010050

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/narvii/quiz/QuizWelcomeFragment;->o(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    .line 90
    new-instance p2, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;-><init>(Lcom/narvii/quiz/QuizWelcomeFragment$1;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    :cond_0
    return-void
.end method
