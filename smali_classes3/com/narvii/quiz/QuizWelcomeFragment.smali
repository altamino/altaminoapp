.class public Lcom/narvii/quiz/QuizWelcomeFragment;
.super Lcom/narvii/quiz/theme/QuizBaseFragment;
.source "QuizWelcomeFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# static fields
.field public static final DEFAULT_REMAINING_TIME:I = 0xbb8

.field private static SHOW_ADS:Z


# instance fields
.field private countDown:Landroid/widget/TextView;

.field private countDownAnim:Landroid/widget/TextView;

.field countDownTimer:Landroid/os/CountDownTimer;

.field remainingTime:I

.field private showremainingTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;-><init>()V

    const/16 v0, 0xbb8

    .line 41
    iput v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/quiz/QuizWelcomeFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->showremainingTime:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/quiz/QuizWelcomeFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->showremainingTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownAnim:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/quiz/QuizWelcomeFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/quiz/QuizWelcomeFragment;->gotoFirstQuestion()V

    return-void
.end method

.method private gotoFirstQuestion()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    const-class v0, Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quiz"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hellMode"

    .line 90
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "currentQuestion"

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f01002a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 95
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private shuffleQuiz(Lcom/narvii/model/Blog;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 70
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizQuestion;

    if-nez v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected allowQuit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-direct {p0, v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->shuffleQuiz(Lcom/narvii/model/Blog;)V

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    if-eqz p1, :cond_0

    const-string v0, "remainingTime"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02d0

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 122
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 126
    :cond_0
    new-instance v0, Lcom/narvii/quiz/QuizWelcomeFragment$1;

    iget v1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    int-to-long v3, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v1

    const-wide/16 v5, 0xa

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/quiz/QuizWelcomeFragment$1;-><init>(Lcom/narvii/quiz/QuizWelcomeFragment;JJ)V

    iput-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 168
    new-instance v0, Lcom/narvii/quiz/QuizWelcomeFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizWelcomeFragment$2;-><init>(Lcom/narvii/quiz/QuizWelcomeFragment;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 188
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    iget v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    const-string v1, "remainingTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 107
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0902ed

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDown:Landroid/widget/TextView;

    const p2, 0x7f0902ee

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownAnim:Landroid/widget/TextView;

    .line 110
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDown:Landroid/widget/TextView;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownAnim:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
