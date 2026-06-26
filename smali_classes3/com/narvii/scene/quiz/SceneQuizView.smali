.class public Lcom/narvii/scene/quiz/SceneQuizView;
.super Lcom/narvii/scene/ScenePlayBaseView;
.source "SceneQuizView.java"

# interfaces
.implements Lcom/narvii/scene/ScenePlayView;
.implements Lcom/narvii/scene/SceneInteractLogView;


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
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 62
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/scene/quiz/SceneQuizView;->scaleArray:[F

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_1

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

    :array_1
    .array-data 4
        0x0
        0x72
        0x247
        0x318
        0x48f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/quiz/SceneQuizView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/ScenePlayBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    const/16 p1, 0x2710

    .line 69
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 70
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->maxTime:I

    const/4 p1, 0x3

    .line 80
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 93
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$3;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$3;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissRunnable:Ljava/lang/Runnable;

    .line 189
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$4;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$4;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    .line 205
    new-instance p2, Lcom/narvii/scene/quiz/SceneQuizView$5;

    invoke-direct {p2, p0}, Lcom/narvii/scene/quiz/SceneQuizView$5;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswerRunnable:Ljava/lang/Runnable;

    .line 221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->scene_quiz:I

    invoke-static {p2, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    sget p2, Lcom/narvii/mediaeditor/R$id;->scene_quiz_answer_parent:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    .line 223
    sget p2, Lcom/narvii/mediaeditor/R$id;->question:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    .line 224
    sget p2, Lcom/narvii/mediaeditor/R$id;->count_down_layout:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius_fake:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p2, p2

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v3, 0x2

    aput p2, v0, v3

    aput p2, v0, p1

    .line 228
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    int-to-float p2, p1

    const/4 v3, 0x4

    aput p2, v0, v3

    int-to-float p2, p1

    const/4 v4, 0x5

    aput p2, v0, v4

    int-to-float p2, p1

    const/4 v4, 0x6

    aput p2, v0, v4

    int-to-float p1, p1

    const/4 p2, 0x7

    aput p1, v0, p2

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    .line 230
    new-instance p1, Lcom/narvii/scene/quiz/SceneQuizView$6;

    invoke-direct {p1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$6;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 282
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_1:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_3:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_4:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget p2, Lcom/narvii/mediaeditor/R$id;->progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CircleProgressBar;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    .line 288
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    const v0, -0xc8004f

    const v4, -0xff4044

    invoke-virtual {p2, v2, v2, v0, v4}, Lcom/narvii/widget/CircleProgressBar;->setSwipeGradientColor(ZZII)V

    .line 289
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    iget v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->maxTime:I

    invoke-virtual {p2, v0}, Lcom/narvii/widget/CircleProgressBar;->setMax(I)V

    .line 290
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    iget v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    invoke-virtual {p2, v0}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 292
    sget p2, Lcom/narvii/mediaeditor/R$id;->alarm:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    .line 293
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    iget v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    sget p2, Lcom/narvii/mediaeditor/R$id;->alarm_anim:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    .line 297
    :goto_0
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_0

    .line 298
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/quiz/SceneQuizView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->toThree:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->stopCountDownAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/scene/quiz/SceneQuizView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->toThree:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/scene/quiz/SceneQuizView;)Lcom/narvii/scene/ScenePlayListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/scene/quiz/SceneQuizView;)Lcom/narvii/scene/ScenePlayListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showAnswer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/scene/quiz/SceneQuizView;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showPlayedWrongAnswer()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/scene/quiz/SceneQuizView;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->startCountDownAnim(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->failVibrate()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/scene/quiz/SceneQuizView;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->sendAnswerLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->setAnswerUnClickable()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->startBounceAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->next()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->isViewRightAnswer(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswer()V

    return-void
.end method

.method private fadeInCountDown()V
    .locals 3

    .line 374
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private failVibrate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 705
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    .line 706
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private generatePlayRecord()V
    .locals 5

    .line 732
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    if-eqz v0, :cond_1

    .line 733
    new-instance v0, Lcom/narvii/scene/ScenePlayRecord;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/narvii/scene/ScenePlayRecord;-><init>(I)V

    .line 734
    new-instance v2, Lcom/narvii/scene/quiz/QuizQuestionResult;

    invoke-direct {v2}, Lcom/narvii/scene/quiz/QuizQuestionResult;-><init>()V

    .line 735
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->quizQuestionId:Ljava/lang/String;

    .line 736
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    .line 737
    iget v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->maxTime:I

    iget v4, p0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->timeSpent:F

    .line 738
    iget-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 739
    iget-object v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 740
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v4, v3}, Lcom/narvii/model/QuizQuestion;->isOptionIdCorrect(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    iput-boolean v1, v0, Lcom/narvii/scene/ScenePlayRecord;->isAnswerRight:Z

    .line 744
    :cond_0
    iput-object v2, v0, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    .line 745
    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V

    :cond_1
    return-void
.end method

.method public static getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 646
    instance-of v1, p0, Lcom/narvii/paging/PageView;

    if-eqz v1, :cond_1

    .line 647
    check-cast p0, Lcom/narvii/paging/PageView;

    return-object p0

    .line 649
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private hasImage(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 674
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 675
    instance-of v1, p1, Lcom/narvii/model/QuizOption;

    if-eqz v1, :cond_1

    .line 676
    check-cast p1, Lcom/narvii/model/QuizOption;

    invoke-virtual {p1}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isAttached()Z
    .locals 1

    .line 384
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isPlayed()Z
    .locals 1

    .line 388
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

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 695
    instance-of v0, p1, Lcom/narvii/model/QuizOption;

    if-eqz v0, :cond_0

    .line 696
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 697
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private next()V
    .locals 2

    const/4 v0, 0x1

    .line 627
    iput-boolean v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->waitingNext:Z

    .line 628
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    if-nez v0, :cond_1

    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    if-eqz v0, :cond_2

    .line 635
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayEnd(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendAnswerLog(Ljava/lang/String;)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->getCorrectAnswer()Lcom/narvii/model/QuizOption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, v0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->answer:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "Quiz"

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v3, "questionShowId"

    .line 312
    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v2, v2, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    const-string v3, "questionId"

    .line 313
    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "correctAnswerId"

    .line 314
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "answerId"

    .line 315
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 318
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->generatePlayRecord()V

    return-void
.end method

.method private setAnswerUnClickable()V
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 609
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 610
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 611
    sget v3, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showAnswer()V
    .locals 10

    .line 455
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    .line 460
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_1
    sget-object v0, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 466
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 467
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    if-ge v2, v0, :cond_c

    .line 469
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    if-eqz v3, :cond_c

    .line 471
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 473
    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 474
    invoke-virtual {v3}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 476
    :goto_1
    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const/16 v8, 0x8

    if-nez v7, :cond_3

    const/16 v9, 0x8

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 477
    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    sget v9, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-nez v6, :cond_4

    const/4 v6, 0x6

    goto :goto_3

    :cond_4
    const/4 v6, 0x3

    .line 479
    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 480
    iget-object v6, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    sget v6, Lcom/narvii/mediaeditor/R$id;->shader:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/NVImageView;

    .line 482
    sget-object v9, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 483
    sget-object v9, Lcom/narvii/scene/quiz/SceneQuizView;->shaderList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    if-nez v7, :cond_6

    const/4 v8, 0x0

    .line 485
    :cond_6
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 487
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 488
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 489
    invoke-virtual {v5, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 492
    :cond_7
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v5, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 493
    instance-of v5, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_9

    .line 494
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    .line 496
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_4

    .line 498
    :cond_8
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 503
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/narvii/scene/quiz/SceneQuizView$10;

    invoke-direct {v5, p0, v4, v2}, Lcom/narvii/scene/quiz/SceneQuizView$10;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;I)V

    .line 556
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v6, 0x0

    goto :goto_6

    :cond_a
    iget-boolean v4, p0, Lcom/narvii/scene/ScenePlayBaseView;->isPreview:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    const/16 v4, 0x320

    :goto_5
    mul-int/lit8 v6, v2, 0x7d

    add-int/2addr v4, v6

    int-to-long v6, v4

    .line 503
    :goto_6
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private showPlayedWrongAnswer()V
    .locals 6

    .line 430
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/scene/quiz/QuizQuestionResult;

    if-eqz v1, :cond_2

    .line 431
    check-cast v0, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 432
    iget-object v1, v0, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    iget-object v0, v0, Lcom/narvii/scene/quiz/QuizQuestionResult;->optIdList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/narvii/model/QuizQuestion;->isOptionIdCorrect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 436
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 437
    instance-of v5, v4, Lcom/narvii/model/QuizOption;

    if-eqz v5, :cond_0

    .line 438
    check-cast v4, Lcom/narvii/model/QuizOption;

    .line 439
    iget-object v5, v4, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    sget v0, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerWrongDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    sget v0, Lcom/narvii/mediaeditor/R$id;->shader:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 442
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private showQuestion()V
    .locals 3

    .line 392
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$animator;->fade_in:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 399
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 400
    new-instance v1, Lcom/narvii/scene/quiz/SceneQuizView$9;

    invoke-direct {v1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$9;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private showRightAnswer()V
    .locals 4

    .line 682
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 683
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->isViewRightAnswer(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    sget v2, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->hasImage(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerRightDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    sget v2, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    sget v2, Lcom/narvii/mediaeditor/R$id;->shader:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 687
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_right:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    .line 688
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startBounceAnimation(Landroid/view/View;)V
    .locals 2

    .line 564
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$anim;->bounce1:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 565
    new-instance v1, Lcom/narvii/scene/quiz/SceneQuizView$11;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView$11;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 579
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startCountDownAnim(I)V
    .locals 2

    .line 150
    iget v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->showingTime:I

    if-eq v0, p1, :cond_0

    .line 151
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->showingTime:I

    .line 153
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$anim;->scene_quiz_count_down_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 157
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    new-instance v0, Lcom/narvii/scene/quiz/SceneQuizView$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/quiz/SceneQuizView$2;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method private stopCountDownAnimation()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 621
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnswerRightDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 712
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_start:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_end:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    if-eqz p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    goto :goto_0

    .line 716
    :cond_0
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius(F)V

    :goto_0
    return-object v0
.end method

.method public getAnswerWrongDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 722
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_wrong_gradient_start:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_wrong_gradient_end:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    if-eqz p1, :cond_0

    .line 724
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->fakeRadiusArray:[F

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    goto :goto_0

    .line 726
    :cond_0
    iget p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->radius:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius(F)V

    :goto_0
    return-object v0
.end method

.method public logEnd()V
    .locals 8

    .line 757
    iget-wide v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->quizEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Quiz"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v4, "questionShowId"

    .line 761
    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    const-string v4, "questionId"

    .line 762
    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    .line 763
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->timeout:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "skip"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "answer"

    :goto_1
    const-string v4, "endType"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "pq_duration"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 766
    iput-wide v2, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    return-void
.end method

.method public logStart()V
    .locals 3

    .line 751
    invoke-super {p0}, Lcom/narvii/scene/ScenePlayBaseView;->logStart()V

    .line 752
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->quizStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Quiz"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v2, "questionShowId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    const-string v2, "questionId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 584
    invoke-super {p0, p1}, Lcom/narvii/scene/ScenePlayBaseView;->onActiveChanged(Z)V

    .line 585
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->waitingNext:Z

    if-eqz p1, :cond_0

    .line 586
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/narvii/scene/quiz/SceneQuizView$12;

    invoke-direct {v0, p0}, Lcom/narvii/scene/quiz/SceneQuizView$12;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 595
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    if-eqz p1, :cond_1

    .line 596
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 597
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 601
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 665
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public playQuizQuestion(Ljava/lang/String;Lcom/narvii/model/QuizQuestion;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 2

    .line 328
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneId:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 330
    iput-object p3, p0, Lcom/narvii/scene/quiz/SceneQuizView;->scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    if-eqz p2, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->logStart()V

    .line 333
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->setQuizAnswerParentForceCenter()V

    .line 336
    :cond_0
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->showQuestion()V

    .line 339
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 340
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->fadeInCountDown()V

    .line 343
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizView;->isPlayed()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 344
    sget p2, Lcom/narvii/mediaeditor/R$id;->skip_hint:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    .line 345
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    new-instance p3, Lcom/narvii/scene/quiz/SceneQuizView$7;

    invoke-direct {p3, p0, p1}, Lcom/narvii/scene/quiz/SceneQuizView$7;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    new-instance p1, Lcom/narvii/scene/quiz/SceneQuizView$8;

    invoke-direct {p1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$8;-><init>(Lcom/narvii/scene/quiz/SceneQuizView;)V

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    .line 368
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView;->skipCountDownRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public setQuizAnswerParentForceCenter()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView;->sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->setForceCenter(Z)V

    :cond_0
    return-void
.end method
