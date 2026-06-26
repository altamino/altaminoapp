.class Lcom/narvii/quiz/QuizWelcomeFragment$1;
.super Landroid/os/CountDownTimer;
.source "QuizWelcomeFragment.java"


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

    .line 126
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$300(Lcom/narvii/quiz/QuizWelcomeFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    long-to-int p2, p1

    iput p2, v0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 132
    iget p1, v0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 133
    iget-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {p2}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$000(Lcom/narvii/quiz/QuizWelcomeFragment;)I

    move-result p2

    if-eq p2, p1, :cond_0

    if-lez p1, :cond_0

    .line 134
    iget-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {p2, p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$002(Lcom/narvii/quiz/QuizWelcomeFragment;I)I

    .line 136
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$100(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$000(Lcom/narvii/quiz/QuizWelcomeFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010032

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 p2, 0x1

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 139
    iget-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {p2}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$100(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    new-instance p2, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;-><init>(Lcom/narvii/quiz/QuizWelcomeFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method
