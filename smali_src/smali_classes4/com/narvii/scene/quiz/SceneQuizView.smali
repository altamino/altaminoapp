.class public Lcom/narvii/scene/quiz/SceneQuizView;
.super Lcom/narvii/scene/ScenePlayBaseView;
.source "SourceFile"


# static fields
.field public static final ANIM_ANSWER_DELAY_TIME:I = 0x3e8

.field public static final AREA_QUIZ:Ljava/lang/String; = "Quiz"

.field public static final DEFAULT_REMAINING_TIME:I = 0x2710

.field public static final DISMISS_DELAY_TIME:I = 0x3e8

.field public static final FAIL_VIBRATION_TIME:I = 0x12c

.field public static final SHOW_ANSWER_DELAY:I = 0x320

.field public static final SHOW_ANSWER_INTERVAL:I = 0x7d

.field public static final scaleArray:[F

.field static shaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final timeArray:[I


# instance fields
.field alarmRunnable:Ljava/lang/Runnable;

.field alarmTV:Landroid/widget/TextView;

.field alarmTVAnim:Landroid/widget/TextView;

.field answerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field answerSelected:Z

.field answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field countDownLayout:Landroid/view/View;

.field countDownTimer:Landroid/os/CountDownTimer;

.field dismissRunnable:Ljava/lang/Runnable;

.field dismissWrongAnswerRunnable:Ljava/lang/Runnable;

.field fakeRadiusArray:[F

.field handler:Landroid/os/Handler;

.field maxTime:I

.field progressBar:Lcom/narvii/widget/CircleProgressBar;

.field quizQuestion:Lcom/narvii/model/QuizQuestion;

.field private radius:I

.field redAlert:Lcom/narvii/widget/GradientView;

.field remainingSeconds:I

.field remainingTime:I

.field sceneId:Ljava/lang/String;

.field scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

.field private sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

.field showRightAnswerRunnable:Ljava/lang/Runnable;

.field showingTime:I

.field skipCountDownRunnable:Ljava/lang/Runnable;

.field skipText:Landroid/widget/TextView;

.field timeout:Z

.field title:Landroid/widget/TextView;

.field private toThree:Z

.field waitingNext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->scaleArray:[F

    const/16 v0, 0x318

    const/16 v1, 0x48f

    const/4 v2, 0x0

    const/16 v3, 0x72

    const/16 v4, 0x247

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->timeArray:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f91eb85    # 1.14f
        0x3f7ae148    # 0.98f
        0x3f8147ae    # 1.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/quiz/SceneQuizView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/ScenePlayBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    const/16 p1, 0x2710

    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->maxTime:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 6
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmRunnable:Ljava/lang/Runnable;

    .line 7
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$3;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$3;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissRunnable:Ljava/lang/Runnable;

    .line 8
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$4;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$4;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    .line 9
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$5;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$5;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswerRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->scene_quiz:I

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->scene_quiz_answer_parent:I

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    sget p2, Lcom/narvii/mediaeditor/R$id;->question:I

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    sget p2, Lcom/narvii/mediaeditor/R$id;->count_down_layout:I

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius_fake:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    const/16 v1, 0x8

    new-array v1, v1, [F

    int-to-float p2, p2

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v4, 0x2

    aput p2, v1, v4

    aput p2, v1, p1

    int-to-float p1, v0

    const/4 p2, 0x4

    aput p1, v1, p2

    const/4 p1, 0x5

    int-to-float v4, v0

    aput v4, v1, p1

    const/4 p1, 0x6

    int-to-float v4, v0

    aput v4, v1, p1

    const/4 p1, 0x7

    int-to-float v0, v0

    aput v0, v1, p1

    iput-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    .line 16
    new-instance p1, Lcom/narvii/scene/quiz/SceneQuizView$6;

    invoke-direct {p1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$6;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_1:I

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_2:I

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_3:I

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_4:I

    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/narvii/mediaeditor/R$id;->progress:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CircleProgressBar;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    const v1, -0xc8004f

    const v4, -0xff4044

    .line 22
    invoke-virtual {v0, v3, v3, v1, v4}, Lcom/narvii/widget/CircleProgressBar;->setSwipeGradientColor(ZZII)V

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->maxTime:I

    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/widget/CircleProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    sget v0, Lcom/narvii/mediaeditor/R$id;->alarm:I

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    int-to-float v1, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/narvii/mediaeditor/R$id;->alarm_anim:I

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/quiz/SceneQuizView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->toThree:Z

    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->stopCountDownAnimation()V

    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/narvii/scene/quiz/SceneQuizView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->toThree:Z

    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/scene/quiz/SceneQuizView;)Lcom/narvii/scene/ScenePlayListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/scene/quiz/SceneQuizView;)Lcom/narvii/scene/ScenePlayListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showAnswer()V

    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/scene/quiz/SceneQuizView;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showPlayedWrongAnswer()V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/narvii/scene/quiz/SceneQuizView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->startCountDownAnim(I)V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->failVibrate()V

    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->sendAnswerLog()V

    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->setAnswerUnClickable()V

    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->startBounceAnimation(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->next()V

    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->isViewRightAnswer(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$900(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswer()V

    .line 4
    return-void
.end method

.method private fadeInCountDown()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget v1, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-wide/16 v1, 0x12c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    return-void
.end method

.method private failVibrate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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

.method private generatePlayRecord()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/scene/ScenePlayRecord;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/scene/ScenePlayRecord;-><init>(I)V

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Lcom/narvii/scene/quiz/QuizQuestionResult;-><init>()V

    .line 16
    .line 17
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->quizQuestionId:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 26
    .line 27
    iget v4, p0, Lcom/narvii/scene/quiz/SceneQuizView;->maxTime:I

    .line 28
    .line 29
    iget v5, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 30
    sub-int/2addr v4, v5

    .line 31
    int-to-float v4, v4

    .line 32
    .line 33
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 34
    div-float/2addr v4, v5

    .line 35
    .line 36
    iput v4, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->timeSpent:F

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    iget-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Lcom/narvii/model/QuizQuestion;->isOptionIdCorrect(Ljava/lang/String;)Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    iput-boolean v1, v0, Lcom/narvii/scene/ScenePlayRecord;->isAnswerRight:Z

    .line 64
    .line 65
    :cond_0
    iput-object v2, v0, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneId:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v2, v0}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V

    .line 73
    :cond_1
    return-void
.end method

.method public static getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 7
    .line 8
    instance-of v1, p0, Lcom/narvii/paging/PageView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast p0, Lcom/narvii/paging/PageView;

    .line 13
    return-object p0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    instance-of v1, v1, Landroid/view/View;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    check-cast p0, Landroid/view/View;

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move-object p0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    return-object v0
.end method

.method private hasImage(Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    instance-of v1, p1, Lcom/narvii/model/QuizOption;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method private isAttached()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private isPlayed()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

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

.method private next()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->waitingNext:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayEnd(Ljava/lang/String;)V

    .line 25
    :cond_2
    return-void
.end method

.method private sendAnswerLog()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->generatePlayRecord()V

    .line 4
    return-void
.end method

.method private setAnswerUnClickable()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroid/view/View;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 25
    .line 26
    sget v3, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private showAnswer()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 19
    .line 20
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_1:I

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 30
    .line 31
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_2:I

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 41
    .line 42
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_3:I

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 52
    .line 53
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_4:I

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    :cond_1
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x0

    .line 77
    move v2, v1

    .line 78
    .line 79
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 80
    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 83
    move-result v3

    .line 84
    .line 85
    if-ge v2, v3, :cond_d

    .line 86
    .line 87
    if-ge v2, v0, :cond_c

    .line 88
    .line 89
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 100
    .line 101
    if-eqz v3, :cond_c

    .line 102
    .line 103
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 104
    .line 105
    .line 106
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    check-cast v4, Landroid/view/View;

    .line 110
    .line 111
    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 121
    move-result-object v6

    .line 122
    .line 123
    if-eqz v6, :cond_2

    .line 124
    const/4 v7, 0x1

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    move v7, v1

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 130
    .line 131
    const/16 v8, 0x8

    .line 132
    .line 133
    if-nez v7, :cond_3

    .line 134
    move v9, v8

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move v9, v1

    .line 137
    .line 138
    .line 139
    :goto_2
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    sget v9, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v9

    .line 146
    .line 147
    check-cast v9, Landroid/widget/TextView;

    .line 148
    .line 149
    if-nez v6, :cond_4

    .line 150
    const/4 v6, 0x6

    .line 151
    goto :goto_3

    .line 152
    :cond_4
    const/4 v6, 0x3

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 156
    .line 157
    iget-object v6, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    sget v6, Lcom/narvii/mediaeditor/R$id;->shader:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object v6

    .line 167
    .line 168
    check-cast v6, Lcom/narvii/widget/NVImageView;

    .line 169
    .line 170
    sget-object v9, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 171
    .line 172
    .line 173
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 174
    move-result v9

    .line 175
    .line 176
    if-ge v2, v9, :cond_5

    .line 177
    .line 178
    sget-object v9, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 179
    .line 180
    .line 181
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v9

    .line 183
    .line 184
    check-cast v9, Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 188
    move-result v9

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 192
    .line 193
    :cond_5
    if-nez v7, :cond_6

    .line 194
    move v8, v1

    .line 195
    .line 196
    .line 197
    :cond_6
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 204
    move-result v3

    .line 205
    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 213
    .line 214
    :cond_7
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 215
    .line 216
    .line 217
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v3

    .line 219
    .line 220
    check-cast v3, Landroid/view/View;

    .line 221
    .line 222
    sget v5, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    move-result-object v3

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 230
    move-result-object v3

    .line 231
    .line 232
    instance-of v5, v3, Landroid/graphics/drawable/GradientDrawable;

    .line 233
    .line 234
    if-eqz v5, :cond_9

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 238
    .line 239
    if-eqz v7, :cond_8

    .line 240
    .line 241
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 242
    .line 243
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 247
    goto :goto_4

    .line 248
    .line 249
    :cond_8
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 250
    .line 251
    iget v5, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    .line 252
    int-to-float v5, v5

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 256
    .line 257
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 258
    .line 259
    new-instance v5, Lcom/narvii/scene/quiz/SceneQuizView$10;

    .line 260
    .line 261
    .line 262
    invoke-direct {v5, p0, v4, v2}, Lcom/narvii/scene/quiz/SceneQuizView$10;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;I)V

    .line 263
    .line 264
    .line 265
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 266
    move-result v4

    .line 267
    .line 268
    if-eqz v4, :cond_a

    .line 269
    .line 270
    const-wide/16 v6, 0x0

    .line 271
    goto :goto_6

    .line 272
    .line 273
    :cond_a
    iget-boolean v4, p0, Lcom/narvii/scene/ScenePlayBaseView;->isPreview:Z

    .line 274
    .line 275
    if-eqz v4, :cond_b

    .line 276
    move v4, v1

    .line 277
    goto :goto_5

    .line 278
    .line 279
    :cond_b
    const/16 v4, 0x320

    .line 280
    .line 281
    :goto_5
    mul-int/lit8 v6, v2, 0x7d

    .line 282
    add-int/2addr v4, v6

    .line 283
    int-to-long v6, v4

    .line 284
    .line 285
    .line 286
    :goto_6
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    .line 288
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    :cond_d
    return-void
.end method

.method private showPlayedWrongAnswer()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lcom/narvii/model/QuizQuestion;->isOptionIdCorrect(Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Landroid/view/View;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    instance-of v5, v4, Lcom/narvii/model/QuizOption;

    .line 68
    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    check-cast v4, Lcom/narvii/model/QuizOption;

    .line 72
    .line 73
    iget-object v5, v4, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 78
    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    sget v0, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    if-eqz v2, :cond_1

    .line 92
    const/4 v2, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move v2, v1

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerWrongDrawable(Z)Landroid/graphics/drawable/Drawable;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .line 103
    sget v0, Lcom/narvii/mediaeditor/R$id;->shader:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 110
    .line 111
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_right:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    const/4 v1, -0x1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_2
    return-void
.end method

.method private showQuestion()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sget v1, Lcom/narvii/mediaeditor/R$animator;->fade_in:I

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    const-wide/16 v1, 0x12c

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/scene/quiz/SceneQuizView$9;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$9;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 63
    return-void
.end method

.method private showRightAnswer()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->isViewRightAnswer(Landroid/view/View;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    sget v2, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->hasImage(Landroid/view/View;)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerRightDrawable(Z)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    sget v2, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Landroid/widget/TextView;

    .line 50
    const/4 v3, -0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    sget v2, Lcom/narvii/mediaeditor/R$id;->shader:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_right:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method private startBounceAnimation(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/mediaeditor/R$anim;->bounce1:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/scene/quiz/SceneQuizView$11;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView$11;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    return-void
.end method

.method private startCountDownAnim(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->showingTime:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->showingTime:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    sget v0, Lcom/narvii/mediaeditor/R$anim;->scene_quiz_count_down_in:I

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 44
    move-result-object p1

    .line 45
    const/4 v0, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/scene/quiz/SceneQuizView$2;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/narvii/scene/quiz/SceneQuizView$2;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method private stopCountDownAnimation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

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


# virtual methods
.method public getAnswerRightDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sget v2, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_start:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    sget v3, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_end:I

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    .line 36
    int-to-float p1, p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius(F)V

    .line 40
    :goto_0
    return-object v0
.end method

.method public getAnswerWrongDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sget v2, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_wrong_gradient_start:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    sget v3, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_wrong_gradient_end:I

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    .line 36
    int-to-float p1, p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius(F)V

    .line 40
    :goto_0
    return-object v0
.end method

.method public logEnd()V
    .locals 4

    iget-wide v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide v2, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    return-void
.end method

.method public logStart()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/scene/ScenePlayBaseView;->logStart()V

    .line 4
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/scene/ScenePlayBaseView;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->waitingNext:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/scene/quiz/SceneQuizView$12;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/scene/quiz/SceneQuizView$12;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 19
    .line 20
    const-wide/16 v1, 0xc8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 26
    return-void
.end method

.method public playQuizQuestion(Ljava/lang/String;Lcom/narvii/model/QuizQuestion;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneId:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    .line 7
    .line 8
    if-eqz p2, :cond_4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->logStart()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->setQuizAnswerParentForceCenter()V

    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 26
    move-result p3

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    move p3, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move p3, v1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 43
    move-result p3

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v0, v1

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showQuestion()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->fadeInCountDown()V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    .line 66
    move-result p2

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    sget p2, Lcom/narvii/mediaeditor/R$id;->skip_hint:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    check-cast p2, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    .line 84
    .line 85
    new-instance p3, Lcom/narvii/scene/quiz/SceneQuizView$7;

    .line 86
    .line 87
    .line 88
    invoke-direct {p3, p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView$7;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    new-instance p1, Lcom/narvii/scene/quiz/SceneQuizView$8;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$8;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 97
    .line 98
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 102
    :cond_4
    return-void
.end method

.method public setQuizAnswerParentForceCenter()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->setForceCenter(Z)V

    .line 9
    :cond_0
    return-void
.end method
