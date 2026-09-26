.class public Lcom/narvii/quiz/QuizQuestionFragment;
.super Lcom/narvii/quiz/theme/QuizBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# static fields
.field public static final ANIM_ANSWER_DELAY_TIME:I = 0x3e8

.field public static final DEFAULT_REMAINING_TIME:I = 0x2710

.field public static final DISMISS_DELAY_TIME:I = 0x3e8

.field public static final FAIL_VIBRATION_TIME:I = 0x12c

.field public static final HELL_MODE_REMAINING_TIME:I = 0x1388

.field public static final SHOW_ANSWER_DELAY:I = 0x320

.field public static final SHOW_ANSWER_INTERVAL:I = 0x7d

.field public static final handler:Landroid/os/Handler;


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alarmBG:Landroid/view/View;

.field private alarmRunnable:Ljava/lang/Runnable;

.field alarmTV:Landroid/widget/TextView;

.field answerClickListener:Landroid/view/View$OnClickListener;

.field answerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private answerRight:Z

.field answerViews:[Lcom/narvii/widget/PushButton;

.field private breathAnimation:Landroid/view/animation/AlphaAnimation;

.field private checkWindowChangeView:Lcom/narvii/widget/CheckWindowChangeView;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private dismissRunnable:Ljava/lang/Runnable;

.field private dismissWrongAnswerRunnable:Ljava/lang/Runnable;

.field protected firstMedia:Lcom/narvii/model/Media;

.field private flagMode:Z

.field private flagReportOptionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

.field private gridLayout:Lcom/narvii/widget/EqualGridLayout;

.field private hellMode:Z

.field protected liveLayerTarget:Ljava/lang/String;

.field maxTime:I

.field private mediaAimationEnd:Z

.field private mediaLoaded:Z

.field public final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private preview:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private questionShown:Z

.field questionTV:Landroid/widget/TextView;

.field remainingTime:I

.field private showRightAnswerRunnable:Ljava/lang/Runnable;

.field private startDealy:I

.field private toThree:Z

.field private waitingShowMilestone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    new-array v0, v0, [Lcom/narvii/widget/PushButton;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 9
    .line 10
    const/16 v0, 0x2710

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->actions:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->params:Ljava/util/HashMap;

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/quiz/QuizQuestionFragment$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizQuestionFragment$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerClickListener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    const/16 v0, 0x1f4

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    .line 47
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionShown:Z

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->toThree:Z

    return p0
.end method

.method static bridge synthetic E(Lcom/narvii/quiz/QuizQuestionFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerRight:Z

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->breathAnimation:Landroid/view/animation/AlphaAnimation;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/quiz/QuizQuestionFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaAimationEnd:Z

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/quiz/QuizQuestionFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaLoaded:Z

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/quiz/QuizQuestionFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->toThree:Z

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->failVibrate()V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->isViewRightAnswer(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic M(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->setAnswerUnClickable()V

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showAnswer()V

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showQuestion()V

    return-void
.end method

.method static bridge synthetic P(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showQuizMileStone()V

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswer()V

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->stopCountDownAnimation()V

    return-void
.end method

.method private failVibrate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "vibrator"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/os/Vibrator;

    .line 14
    .line 15
    const-wide/16 v1, 0x12c

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    return-void
.end method

.method private isViewRightAnswer(Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/QuizOption;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showQuizMileStone()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Z)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->waitingShowMilestone:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/quiz/b;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/quiz/b;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 14
    .line 15
    const-wide/16 v1, 0xc8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/quiz/QuizQuestionFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->lambda$onViewCreated$1(Z)V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmBG:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerRight:Z

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->breathAnimation:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
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

.method private setAnswerUnClickable()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private showAnswer()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 22
    array-length v4, v3

    .line 23
    .line 24
    if-ge v2, v4, :cond_7

    .line 25
    .line 26
    if-ge v2, v0, :cond_6

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 39
    .line 40
    if-eqz v3, :cond_6

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    iget-object v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    .line 55
    const v5, 0x7f0d067d

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_1
    const v5, 0x7f0d067c

    .line 60
    .line 61
    :goto_1
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    const v5, 0x7f0a0e9e

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    check-cast v5, Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 77
    .line 78
    .line 79
    const v7, 0x7f0a0ba7

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v7

    .line 84
    .line 85
    check-cast v7, Lcom/narvii/widget/PushButton;

    .line 86
    .line 87
    aput-object v7, v6, v2

    .line 88
    .line 89
    iget-boolean v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    .line 90
    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    const/high16 v6, -0x40800000    # -1.0f

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    .line 97
    const/4 v6, -0x1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 103
    .line 104
    aget-object v6, v6, v2

    .line 105
    .line 106
    const/high16 v7, -0x1000000

    .line 107
    .line 108
    .line 109
    const v8, -0xcfcfd0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v7, v8}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 113
    .line 114
    :cond_2
    iget-object v6, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    iget-boolean v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 120
    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    iget-object v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 124
    .line 125
    aget-object v5, v5, v2

    .line 126
    .line 127
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerClickListener:Landroid/view/View$OnClickListener;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :cond_3
    iget-object v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 134
    .line 135
    aget-object v5, v5, v2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v1}, Landroid/view/View;->setClickable(Z)V

    .line 139
    .line 140
    :goto_2
    iget-object v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 141
    .line 142
    aget-object v5, v5, v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .line 147
    sget-object v3, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 148
    .line 149
    new-instance v5, Lcom/narvii/quiz/QuizQuestionFragment$9;

    .line 150
    .line 151
    .line 152
    invoke-direct {v5, p0, v4}, Lcom/narvii/quiz/QuizQuestionFragment$9;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)V

    .line 153
    .line 154
    iget-boolean v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 155
    .line 156
    if-eqz v4, :cond_4

    .line 157
    .line 158
    const-wide/16 v6, 0x0

    .line 159
    goto :goto_4

    .line 160
    .line 161
    :cond_4
    iget-boolean v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    .line 162
    .line 163
    if-eqz v4, :cond_5

    .line 164
    move v4, v1

    .line 165
    goto :goto_3

    .line 166
    .line 167
    :cond_5
    const/16 v4, 0x320

    .line 168
    .line 169
    :goto_3
    mul-int/lit8 v6, v2, 0x7d

    .line 170
    add-int/2addr v4, v6

    .line 171
    int-to-long v6, v4

    .line 172
    .line 173
    .line 174
    :goto_4
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    .line 176
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    .line 181
    .line 182
    if-nez v0, :cond_8

    .line 183
    .line 184
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 185
    .line 186
    if-nez v0, :cond_8

    .line 187
    .line 188
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmRunnable:Ljava/lang/Runnable;

    .line 191
    array-length v2, v3

    .line 192
    .line 193
    add-int/lit8 v2, v2, -0x1

    .line 194
    .line 195
    mul-int/lit8 v2, v2, 0x7d

    .line 196
    .line 197
    add-int/lit16 v2, v2, 0x4b0

    .line 198
    int-to-long v2, v2

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    .line 203
    :cond_8
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    move-result v0

    .line 210
    .line 211
    if-nez v0, :cond_9

    .line 212
    .line 213
    .line 214
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->setAnswerUnClickable()V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->stopCountDownAnimation()V

    .line 218
    .line 219
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswerRunnable:Ljava/lang/Runnable;

    .line 222
    .line 223
    const-wide/16 v2, 0x3e8

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_9
    return-void
.end method

.method private showFlagDialog()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;-><init>()V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->media:Lcom/narvii/model/Media;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v2, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->title:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->subTitle:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->flagPreview(Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->showBlockUser(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagReportOptionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 56
    const/4 v1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setFullScreen(Z)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagReportOptionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 65
    :cond_0
    return-void
.end method

.method private showQuestion()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionShown:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const v1, 0x7f010037

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    const-wide/16 v1, 0x12c

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    .line 57
    new-instance v1, Lcom/narvii/quiz/QuizQuestionFragment$10;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$10;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    return-void
.end method

.method private showQuizMileStone()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->waitingShowMilestone:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->checkWindowChangeView:Lcom/narvii/widget/CheckWindowChangeView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    const-class v0, Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "quiz"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "hellMode"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v1, "currentQuestion"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    const-string v1, "answerRight"

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerRight:Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 63
    .line 64
    const-string v1, "resultList"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    const-class v3, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    :cond_2
    new-instance v3, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 84
    .line 85
    .line 86
    invoke-direct {v3}, Lcom/narvii/scene/quiz/QuizQuestionResult;-><init>()V

    .line 87
    .line 88
    iget-object v4, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v4, v3, Lcom/narvii/scene/quiz/QuizQuestionResult;->quizQuestionId:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 95
    .line 96
    iput-object v4, v3, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 97
    .line 98
    iget v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    .line 99
    .line 100
    iget v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 101
    sub-int/2addr v4, v5

    .line 102
    int-to-float v4, v4

    .line 103
    .line 104
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 105
    div-float/2addr v4, v5

    .line 106
    .line 107
    iput v4, v3, Lcom/narvii/scene/quiz/QuizQuestionResult;->timeSpent:F

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-static {p0, v0}, Lcom/narvii/quiz/QuizQuestionFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    const v1, 0x7f01004d

    .line 128
    .line 129
    .line 130
    const v2, 0x7f01004e

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    return-void
.end method

.method private showRightAnswer()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v3}, Lcom/narvii/quiz/QuizQuestionFragment;->isViewRightAnswer(Landroid/view/View;)Z

    .line 15
    move-result v4

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    const v5, 0x7f0603fd

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 28
    move-result v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    const v6, 0x7f0603fe

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 39
    move-result v5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v5}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 43
    .line 44
    .line 45
    const v4, 0x7f0a0e9e

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Landroid/widget/TextView;

    .line 52
    const/4 v4, -0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method private stopCountDownAnimation()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 15
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/quiz/QuizQuestionFragment;)Lcom/narvii/widget/EqualGridLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaAimationEnd:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaLoaded:Z

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    return p0
.end method


# virtual methods
.method protected allowQuit()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->allowQuit()Z

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string v0, "preview"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    .line 16
    .line 17
    const-string v0, "flagMode"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 24
    .line 25
    const-string v0, "hellMode"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/16 v0, 0x1388

    .line 36
    .line 37
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 38
    .line 39
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/model/Media;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 65
    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const-string v0, "currentQuestion"

    .line 75
    const/4 v1, -0x1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 79
    move-result v0

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    const-string v0, "liveLayer"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "/"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    iput-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->liveLayerTarget:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->actions:Ljava/util/List;

    .line 134
    .line 135
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_PLAYING:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->params:Ljava/util/HashMap;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 143
    .line 144
    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    const-string v3, "blogType"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->actions:Ljava/util/List;

    .line 156
    .line 157
    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->liveLayerTarget:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->params:Ljava/util/HashMap;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 163
    .line 164
    :cond_2
    if-eqz p1, :cond_3

    .line 165
    .line 166
    const-string v0, "remainingTime"

    .line 167
    .line 168
    const/16 v1, 0x2710

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 172
    move-result v0

    .line 173
    .line 174
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 175
    .line 176
    const-string v0, "answerList"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 183
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    const/4 p2, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    const v1, 0x7f120781

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
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
    iget-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p3, p3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    .line 12
    const p3, 0x7f0d0301

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    const p3, 0x7f0d02ff

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 17
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120781

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showFlagDialog()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
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
    iget v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "answerList"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    const p2, 0x7f0a02df

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/CheckWindowChangeView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->checkWindowChangeView:Lcom/narvii/widget/CheckWindowChangeView;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/quiz/a;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/quiz/a;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lcom/narvii/widget/CheckWindowChangeView;->setOnWindowFocusChangedListener(Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const p2, 0x7f0a0ba9

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a011f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Lcom/narvii/widget/EqualGridLayout;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 47
    .line 48
    .line 49
    const p2, 0x7f0a0929

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 58
    const/4 v1, 0x0

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iput v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    .line 63
    .line 64
    :cond_1
    const/16 v0, 0x8

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    .line 69
    const v2, 0x7f0a0934

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    check-cast v2, Lcom/narvii/widget/SpinningView;

    .line 76
    .line 77
    .line 78
    const v3, 0x7f0a092f

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const v5, 0x7f120d79

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v5, "\n"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const v5, 0x7f120d7a

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    const v5, 0x7f0a0e51

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    check-cast v5, Landroid/widget/TextView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    new-instance v4, Lcom/narvii/quiz/QuizQuestionFragment$2;

    .line 140
    .line 141
    .line 142
    invoke-direct {v4, p0, v2, v3, p2}, Lcom/narvii/quiz/QuizQuestionFragment$2;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/SpinningView;Landroid/view/View;Lcom/narvii/widget/NVImageView;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v4}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 146
    .line 147
    iget-object v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 151
    .line 152
    sget-object v3, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance v4, Lcom/narvii/quiz/QuizQuestionFragment$3;

    .line 155
    .line 156
    .line 157
    invoke-direct {v4, p0, p2, v2}, Lcom/narvii/quiz/QuizQuestionFragment$3;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SpinningView;)V

    .line 158
    .line 159
    iget p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    .line 160
    int-to-long v5, p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    goto :goto_0

    .line 165
    .line 166
    :cond_2
    sget-object p2, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 167
    .line 168
    new-instance v2, Lcom/narvii/quiz/QuizQuestionFragment$4;

    .line 169
    .line 170
    .line 171
    invoke-direct {v2, p0}, Lcom/narvii/quiz/QuizQuestionFragment$4;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 172
    .line 173
    iget v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    .line 174
    int-to-long v3, v3

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    .line 179
    .line 180
    :goto_0
    const p2, 0x7f0a00ec

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object p2

    .line 185
    .line 186
    check-cast p2, Landroid/widget/TextView;

    .line 187
    .line 188
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 189
    .line 190
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    .line 191
    .line 192
    if-eqz p2, :cond_4

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 196
    move-result p2

    .line 197
    .line 198
    .line 199
    const v2, 0x7f080593

    .line 200
    .line 201
    if-eqz p2, :cond_3

    .line 202
    .line 203
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 207
    goto :goto_1

    .line 208
    .line 209
    :cond_3
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 213
    .line 214
    .line 215
    :cond_4
    :goto_1
    const p2, 0x7f0a00ee

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    move-result-object p2

    .line 220
    .line 221
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmBG:Landroid/view/View;

    .line 222
    .line 223
    .line 224
    const p2, 0x7f0a0b8d

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    check-cast p1, Landroid/widget/ProgressBar;

    .line 231
    .line 232
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 233
    .line 234
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 235
    .line 236
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 237
    .line 238
    if-eqz p2, :cond_5

    .line 239
    move p2, v0

    .line 240
    goto :goto_2

    .line 241
    :cond_5
    move p2, v1

    .line 242
    .line 243
    .line 244
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmBG:Landroid/view/View;

    .line 247
    .line 248
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 249
    .line 250
    if-eqz p2, :cond_6

    .line 251
    move p2, v0

    .line 252
    goto :goto_3

    .line 253
    :cond_6
    move p2, v1

    .line 254
    .line 255
    .line 256
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 259
    .line 260
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    .line 261
    .line 262
    if-eqz p2, :cond_7

    .line 263
    move v1, v0

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 269
    .line 270
    iget p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 274
    .line 275
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 279
    move-result p2

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 283
    .line 284
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 285
    .line 286
    iget p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 287
    int-to-float p2, p2

    .line 288
    .line 289
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 290
    div-float/2addr p2, v0

    .line 291
    float-to-double v0, p2

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 295
    move-result-wide v0

    .line 296
    double-to-int p2, v0

    .line 297
    .line 298
    .line 299
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 300
    move-result-object p2

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 306
    .line 307
    .line 308
    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$5;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 309
    .line 310
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmRunnable:Ljava/lang/Runnable;

    .line 311
    .line 312
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$6;

    .line 313
    .line 314
    .line 315
    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$6;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 316
    .line 317
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissRunnable:Ljava/lang/Runnable;

    .line 318
    .line 319
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$7;

    .line 320
    .line 321
    .line 322
    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$7;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 323
    .line 324
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    .line 325
    .line 326
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$8;

    .line 327
    .line 328
    .line 329
    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$8;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 330
    .line 331
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswerRunnable:Ljava/lang/Runnable;

    .line 332
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 14
    :cond_0
    return-void
.end method
