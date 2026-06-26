.class public Lcom/narvii/quiz/QuizQuestionFragment;
.super Lcom/narvii/quiz/theme/QuizBaseFragment;
.source "QuizQuestionFragment.java"

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

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/narvii/widget/PushButton;

    .line 67
    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    const/16 v0, 0x2710

    .line 77
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 78
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->actions:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->params:Ljava/util/HashMap;

    .line 87
    new-instance v0, Lcom/narvii/quiz/QuizQuestionFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizQuestionFragment$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0x1f4

    .line 169
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->setAnswerUnClickable()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->breathAnimation:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaLoaded:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaLoaded:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->breathAnimation:Landroid/view/animation/AlphaAnimation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaAimationEnd:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->mediaAimationEnd:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionShown:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showQuestion()V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->toThree:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->toThree:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmBG:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerRight:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerRight:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswer()V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/quiz/QuizQuestionFragment;)Lcom/narvii/widget/EqualGridLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showAnswer()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->isViewRightAnswer(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->failVibrate()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->stopCountDownAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/quiz/QuizQuestionFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->waitingShowMilestone:Z

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showQuizMileStone()V

    return-void
.end method

.method private failVibrate()V
    .locals 3

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private isViewRightAnswer(Landroid/view/View;)Z
    .locals 1

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 180
    instance-of v0, p1, Lcom/narvii/model/QuizOption;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 182
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setAnswerUnClickable()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    if-eqz v0, :cond_0

    .line 152
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 153
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showAnswer()V
    .locals 10

    .line 554
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 558
    :goto_0
    iget-object v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    array-length v4, v3

    const/16 v5, 0x320

    if-ge v2, v4, :cond_7

    if-ge v2, v0, :cond_6

    .line 560
    iget-object v3, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    if-eqz v3, :cond_6

    .line 562
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    if-eqz v6, :cond_1

    const v6, 0x7f0b05c6

    goto :goto_1

    :cond_1
    const v6, 0x7f0b05c5

    :goto_1
    iget-object v7, p0, Lcom/narvii/quiz/QuizQuestionFragment;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    invoke-virtual {v4, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f090b9a

    .line 563
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 564
    iget-object v7, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    const v8, 0x7f0908e8

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/PushButton;

    aput-object v8, v7, v2

    .line 565
    iget-boolean v7, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    if-eqz v7, :cond_2

    const/high16 v7, -0x40800000    # -1.0f

    .line 566
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setScaleY(F)V

    const/4 v7, -0x1

    .line 567
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    iget-object v7, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    aget-object v7, v7, v2

    const/high16 v8, -0x1000000

    const v9, -0xcfcfd0

    invoke-virtual {v7, v8, v9}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 570
    :cond_2
    iget-object v7, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-boolean v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-nez v6, :cond_3

    .line 572
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 574
    :cond_3
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    aget-object v6, v6, v2

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 576
    :goto_2
    iget-object v6, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 577
    sget-object v3, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/narvii/quiz/QuizQuestionFragment$10;

    invoke-direct {v6, p0, v4}, Lcom/narvii/quiz/QuizQuestionFragment$10;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)V

    iget-boolean v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    :cond_5
    mul-int/lit8 v4, v2, 0x7d

    add-int/2addr v5, v4

    int-to-long v4, v5

    :goto_3
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 592
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-nez v0, :cond_8

    .line 593
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmRunnable:Ljava/lang/Runnable;

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x7d

    add-int/2addr v2, v5

    add-int/lit16 v2, v2, 0x190

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    :cond_8
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 598
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->setAnswerUnClickable()V

    .line 599
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->stopCountDownAnimation()V

    .line 600
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method private showFlagDialog()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    invoke-direct {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->media:Lcom/narvii/model/Media;

    .line 282
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v2, v1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->title:Ljava/lang/String;

    .line 283
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->subTitle:Ljava/lang/String;

    .line 284
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {v1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->flagPreview(Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->showBlockUser(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagReportOptionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 285
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagReportOptionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setFullScreen(Z)V

    .line 286
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagReportOptionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_0
    return-void
.end method

.method private showQuestion()V
    .locals 3

    .line 605
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionShown:Z

    .line 609
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 613
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 614
    new-instance v1, Lcom/narvii/quiz/QuizQuestionFragment$11;

    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$11;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 633
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showQuizMileStone()V
    .locals 6

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->waitingShowMilestone:Z

    .line 191
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->checkWindowChangeView:Lcom/narvii/widget/CheckWindowChangeView;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 198
    :cond_1
    const-class v0, Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quiz"

    .line 199
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hellMode"

    .line 200
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "currentQuestion"

    .line 201
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerRight:Z

    const-string v2, "answerRight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    const-string v1, "resultList"

    .line 204
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/scene/quiz/QuizQuestionResult;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    :cond_2
    new-instance v3, Lcom/narvii/scene/quiz/QuizQuestionResult;

    invoke-direct {v3}, Lcom/narvii/scene/quiz/QuizQuestionResult;-><init>()V

    .line 209
    iget-object v4, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v4, v4, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/scene/quiz/QuizQuestionResult;->quizQuestionId:Ljava/lang/String;

    .line 210
    iget-object v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 211
    iget v4, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    iget v5, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/narvii/scene/quiz/QuizQuestionResult;->timeSpent:F

    .line 212
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01002f

    const v2, 0x7f010030

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showRightAnswer()V
    .locals 7

    .line 542
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 546
    invoke-direct {p0, v3}, Lcom/narvii/quiz/QuizQuestionFragment;->isViewRightAnswer(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060190

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060191

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/widget/PushButton;->setColor(II)V

    const v4, 0x7f090b9a

    .line 548
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private stopCountDownAnimation()V
    .locals 2

    .line 637
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected allowQuit()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    invoke-super {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->allowQuit()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 227
    invoke-super {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v0, "preview"

    .line 229
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    const-string v0, "flagMode"

    .line 230
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    const-string v0, "hellMode"

    .line 231
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    .line 233
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    .line 234
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 235
    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iput-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "currentQuestion"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "liveLayer"

    .line 243
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->liveLayerTarget:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->actions:Ljava/util/List;

    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_PLAYING:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->params:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blogType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x2710

    const-string v1, "remainingTime"

    .line 251
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    const-string v0, "answerList"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 255
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 260
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 261
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->preview:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    const v0, 0x7f0f06d5

    const/4 v1, 0x0

    .line 262
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 263
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 293
    iget-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz p3, :cond_0

    const p3, 0x7f0b02ce

    .line 294
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0b02cc

    .line 296
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 645
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 649
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f06d5

    if-ne v0, v1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;->showFlagDialog()V

    const/4 p1, 0x1

    return p1

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 302
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    iget v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    const-string v1, "remainingTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    const-string v1, "answerList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 309
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090225

    .line 312
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CheckWindowChangeView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->checkWindowChangeView:Lcom/narvii/widget/CheckWindowChangeView;

    .line 313
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->checkWindowChangeView:Lcom/narvii/widget/CheckWindowChangeView;

    if-eqz p2, :cond_0

    .line 314
    new-instance v0, Lcom/narvii/quiz/QuizQuestionFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizQuestionFragment$2;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/CheckWindowChangeView;->setOnWindowFocusChangedListener(Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;)V

    :cond_0
    const p2, 0x7f0908ea

    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->questionTV:Landroid/widget/TextView;

    const p2, 0x7f0900b4

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EqualGridLayout;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    const p2, 0x7f0906cc

    .line 332
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 334
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 335
    iput v1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    :cond_1
    const/16 v0, 0x8

    if-eqz p2, :cond_2

    const v2, 0x7f0906d5

    .line 339
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/SpinningView;

    const v3, 0x7f0906d1

    .line 340
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0c4c

    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f0c4d

    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090b5b

    .line 342
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    new-instance v4, Lcom/narvii/quiz/QuizQuestionFragment$3;

    invoke-direct {v4, p0, v2, v3, p2}, Lcom/narvii/quiz/QuizQuestionFragment$3;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/SpinningView;Landroid/view/View;Lcom/narvii/widget/NVImageView;)V

    invoke-virtual {p2, v4}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 370
    iget-object v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    invoke-virtual {p2, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 371
    sget-object v3, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/narvii/quiz/QuizQuestionFragment$4;

    invoke-direct {v4, p0, p2, v2}, Lcom/narvii/quiz/QuizQuestionFragment$4;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SpinningView;)V

    iget p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    int-to-long v5, p2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 404
    :cond_2
    sget-object p2, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/quiz/QuizQuestionFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/quiz/QuizQuestionFragment$5;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    iget v3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->startDealy:I

    int-to-long v3, v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const p2, 0x7f090085

    .line 412
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 413
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->hellMode:Z

    if-eqz p2, :cond_4

    .line 414
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    const v2, 0x7f08046b

    if-eqz p2, :cond_3

    .line 415
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    invoke-virtual {p2, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 417
    :cond_3
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    invoke-virtual {p2, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_4
    :goto_1
    const p2, 0x7f090087

    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmBG:Landroid/view/View;

    const p2, 0x7f0908cc

    .line 421
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 423
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-eqz p2, :cond_5

    const/16 p2, 0x8

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmBG:Landroid/view/View;

    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-eqz p2, :cond_6

    const/16 p2, 0x8

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    iget-boolean p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->flagMode:Z

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    iget p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->maxTime:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 428
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 430
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    iget p2, p0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$6;

    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$6;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmRunnable:Ljava/lang/Runnable;

    .line 506
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$7;

    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$7;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissRunnable:Ljava/lang/Runnable;

    .line 513
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$8;

    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$8;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    .line 531
    new-instance p1, Lcom/narvii/quiz/QuizQuestionFragment$9;

    invoke-direct {p1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$9;-><init>(Lcom/narvii/quiz/QuizQuestionFragment;)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->showRightAnswerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 662
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 663
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
