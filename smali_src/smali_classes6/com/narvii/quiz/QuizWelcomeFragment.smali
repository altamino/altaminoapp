.class public Lcom/narvii/quiz/QuizWelcomeFragment;
.super Lcom/narvii/quiz/theme/QuizBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# static fields
.field public static final DEFAULT_REMAINING_TIME:I = 0xbb8


# instance fields
.field private countDown:Landroid/widget/TextView;

.field private countDownAnim:Landroid/widget/TextView;

.field countDownTimer:Landroid/os/CountDownTimer;

.field remainingTime:I

.field private showremainingTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xbb8

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 8
    return-void
.end method

.method private gotoFirstQuestion()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-class v0, Lcom/narvii/quiz/QuizQuestionFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "quiz"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "hellMode"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    const-string v1, "currentQuestion"

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    const v1, 0x7f010012

    .line 52
    .line 53
    .line 54
    const v2, 0x7f010038

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    :cond_0
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownAnim:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/quiz/QuizWelcomeFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->showremainingTime:I

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/quiz/QuizWelcomeFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->showremainingTime:I

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/quiz/QuizWelcomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizWelcomeFragment;->gotoFirstQuestion()V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shuffleQuiz(Lcom/narvii/model/Blog;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    new-instance v3, Ljava/util/Random;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 55
    .line 56
    new-instance v0, Ljava/util/Random;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    move-result-wide v1

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 67
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->shuffleQuiz(Lcom/narvii/model/Blog;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v0, "remainingTime"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 30
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0303

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/narvii/quiz/QuizWelcomeFragment$1;

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 15
    int-to-long v3, v1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    const-wide/16 v5, 0xa

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 25
    move-result-wide v5

    .line 26
    move-object v1, v0

    .line 27
    move-object v2, p0

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/narvii/quiz/QuizWelcomeFragment$1;-><init>(Lcom/narvii/quiz/QuizWelcomeFragment;JJ)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/quiz/QuizWelcomeFragment$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizWelcomeFragment$2;-><init>(Lcom/narvii/quiz/QuizWelcomeFragment;)V

    .line 38
    .line 39
    const-wide/16 v1, 0xc8

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 43
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "remainingTime"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->remainingTime:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a03be

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDown:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a03bf

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownAnim:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDown:Landroid/widget/TextView;

    .line 28
    const/4 p2, 0x1

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownAnim:Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    :cond_0
    return-void
.end method
