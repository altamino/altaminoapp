.class public final Lcom/narvii/widgets/StoryProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private activeAlpha:F

.field private activeIndex:I

.field private activeScale:F

.field private activeTransferX:F

.field private indicatorPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private interActCircle:F

.field private interActSceneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPaused:Z

.field private lineHeight:F

.field private milestoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/story/StorySceneMilestone;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private milestoneSize:I

.field private normalCircle:F

.field private primaryColor:I

.field private primaryPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scaleAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private secondaryColor:I

.field private startScale:F

.field private storyId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private strokeWidth:F

.field private tAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transferAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widgets/StoryProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    const v1, -0x777778

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->startScale:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->lineHeight:F

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 10
    sget-object v1, Lcom/narvii/lib/R$styleable;->StoryProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->StoryProgressBar_primaryColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    const p2, -0x7f000001

    if-eqz p1, :cond_2

    .line 12
    sget v0, Lcom/narvii/lib/R$styleable;->StoryProgressBar_secondaryColor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    :cond_2
    iput p2, p0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/widgets/StoryProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex$lambda$1(Lcom/narvii/widgets/StoryProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 3
    return p0
.end method

.method public static final synthetic access$getScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isPaused$p(Lcom/narvii/widgets/StoryProgressBar;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$setActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 3
    return-void
.end method

.method public static final synthetic access$setActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 3
    return-void
.end method

.method public static final synthetic access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 3
    return-void
.end method

.method public static final synthetic access$setStartScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->startScale:F

    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/narvii/widgets/StoryProgressBar;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex$lambda$2(Lcom/narvii/widgets/StoryProgressBar;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final setCurSceneIndex$lambda$1(Lcom/narvii/widgets/StoryProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "animation"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    const v2, 0x410ccccd    # 8.8f

    .line 30
    mul-float/2addr v0, v2

    .line 31
    .line 32
    .line 33
    const v2, 0x3f99999a    # 1.2f

    .line 34
    add-float/2addr v0, v2

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 49
    move-result p1

    .line 50
    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    .line 52
    mul-float/2addr p1, v0

    .line 53
    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    sub-float/2addr v0, p1

    .line 56
    .line 57
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 58
    const/4 p1, 0x0

    .line 59
    .line 60
    cmpg-float v0, v0, p1

    .line 61
    .line 62
    if-gez v0, :cond_0

    .line 63
    .line 64
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    return-void
.end method

.method private static final setCurSceneIndex$lambda$2(Lcom/narvii/widgets/StoryProgressBar;ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "animation"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result p2

    .line 27
    .line 28
    iput p2, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, -0x1

    .line 33
    int-to-float v0, v0

    .line 34
    mul-float/2addr p2, v0

    .line 35
    .line 36
    :goto_0
    iput p2, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    const/4 p1, 0x0

    .line 40
    .line 41
    cmpg-float p1, p2, p1

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    .line 46
    const p1, -0x43dc28f6    # -0.01f

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    return-void
.end method


# virtual methods
.method public final getIndicatorPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getInteractionPlayeRecord(I)Lcom/narvii/scene/ScenePlayRecord;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    if-ltz p1, :cond_5

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    if-lt p1, v0, :cond_2

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/model/story/StorySceneMilestone;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/narvii/model/story/StorySceneMilestone;->milestoneId()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move-object p1, v1

    .line 38
    .line 39
    :goto_1
    if-nez p1, :cond_4

    .line 40
    return-object v1

    .line 41
    .line 42
    :cond_4
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/narvii/widgets/IStoryPollQuizPlayListener;->getPollQuizPlayRecord(Ljava/lang/String;)Lcom/narvii/scene/ScenePlayRecord;

    .line 48
    move-result-object v1

    .line 49
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final getStoryQuizPollPlayListener()Lcom/narvii/widgets/IStoryPollQuizPlayListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

    return-object v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    const-string v1, "canvas"

    .line 7
    .line 8
    .line 9
    invoke-static {v7, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 15
    const/4 v8, 0x1

    .line 16
    .line 17
    if-gt v1, v8, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v2

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result v3

    .line 46
    .line 47
    sub-int v9, v2, v3

    .line 48
    int-to-float v1, v1

    .line 49
    .line 50
    const/high16 v10, 0x3f800000    # 1.0f

    .line 51
    mul-float/2addr v1, v10

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    int-to-float v2, v2

    .line 55
    .line 56
    div-float v11, v1, v2

    .line 57
    .line 58
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 59
    .line 60
    rsub-int/lit8 v1, v1, 0xa

    .line 61
    int-to-float v1, v1

    .line 62
    mul-float/2addr v1, v11

    .line 63
    .line 64
    const/high16 v12, 0x40000000    # 2.0f

    .line 65
    div-float/2addr v1, v12

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 69
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    .line 72
    add-float v13, v1, v2

    .line 73
    .line 74
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 75
    const/4 v14, 0x0

    .line 76
    .line 77
    cmpl-float v1, v1, v14

    .line 78
    .line 79
    if-ltz v1, :cond_1

    .line 80
    .line 81
    move/from16 v16, v8

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    const/16 v16, 0x0

    .line 85
    .line 86
    :goto_0
    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 87
    const/4 v5, 0x0

    .line 88
    .line 89
    :goto_1
    if-ge v5, v6, :cond_2d

    .line 90
    int-to-float v1, v9

    .line 91
    .line 92
    div-float v4, v1, v12

    .line 93
    .line 94
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_2
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 110
    .line 111
    :goto_2
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 112
    .line 113
    add-int/lit8 v3, v5, 0x1

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v15

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 121
    move-result v2

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    .line 126
    goto :goto_3

    .line 127
    .line 128
    :cond_3
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 129
    .line 130
    :goto_3
    iget-object v15, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 131
    .line 132
    add-int/lit8 v14, v5, -0x1

    .line 133
    .line 134
    .line 135
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v10

    .line 137
    .line 138
    .line 139
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 140
    move-result v10

    .line 141
    .line 142
    if-eqz v10, :cond_4

    .line 143
    .line 144
    iget v10, v0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    .line 145
    goto :goto_4

    .line 146
    .line 147
    :cond_4
    iget v10, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 148
    :goto_4
    int-to-float v15, v5

    .line 149
    mul-float/2addr v15, v11

    .line 150
    .line 151
    add-float v18, v13, v15

    .line 152
    .line 153
    div-float v19, v1, v12

    .line 154
    .line 155
    add-float v1, v18, v19

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 159
    move-result v20

    .line 160
    .line 161
    if-eqz v20, :cond_5

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 165
    move-result v1

    .line 166
    int-to-float v1, v1

    .line 167
    sub-float/2addr v1, v13

    .line 168
    sub-float/2addr v1, v15

    .line 169
    .line 170
    sub-float v1, v1, v19

    .line 171
    .line 172
    :cond_5
    move/from16 v20, v1

    .line 173
    int-to-float v1, v3

    .line 174
    mul-float/2addr v1, v11

    .line 175
    .line 176
    add-float v21, v13, v1

    .line 177
    .line 178
    div-float v22, v2, v12

    .line 179
    .line 180
    sub-float v21, v21, v22

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 184
    move-result v2

    .line 185
    .line 186
    if-eqz v2, :cond_6

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 190
    move-result v2

    .line 191
    int-to-float v2, v2

    .line 192
    sub-float/2addr v2, v13

    .line 193
    sub-float/2addr v2, v1

    .line 194
    .line 195
    add-float v2, v2, v22

    .line 196
    .line 197
    move/from16 v23, v2

    .line 198
    goto :goto_5

    .line 199
    .line 200
    :cond_6
    move/from16 v23, v21

    .line 201
    .line 202
    :goto_5
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 203
    .line 204
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 205
    .line 206
    if-ge v5, v2, :cond_7

    .line 207
    .line 208
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    .line 209
    goto :goto_6

    .line 210
    .line 211
    :cond_7
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    .line 212
    .line 213
    .line 214
    :goto_6
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    .line 216
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 217
    sub-int/2addr v1, v8

    .line 218
    .line 219
    if-ne v5, v1, :cond_a

    .line 220
    .line 221
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 222
    .line 223
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 224
    .line 225
    const/high16 v17, 0x3f800000    # 1.0f

    .line 226
    .line 227
    cmpg-float v2, v2, v17

    .line 228
    .line 229
    if-nez v2, :cond_8

    .line 230
    goto :goto_7

    .line 231
    .line 232
    :cond_8
    if-nez v16, :cond_9

    .line 233
    .line 234
    :goto_7
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    .line 235
    goto :goto_8

    .line 236
    .line 237
    :cond_9
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    .line 238
    .line 239
    .line 240
    :goto_8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    .line 242
    :cond_a
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 243
    .line 244
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 245
    .line 246
    if-ge v5, v2, :cond_b

    .line 247
    .line 248
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->lineHeight:F

    .line 249
    .line 250
    const/high16 v24, 0x3fc00000    # 1.5f

    .line 251
    .line 252
    mul-float v2, v2, v24

    .line 253
    goto :goto_9

    .line 254
    .line 255
    :cond_b
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->lineHeight:F

    .line 256
    .line 257
    .line 258
    :goto_9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    .line 260
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 261
    sub-int/2addr v1, v8

    .line 262
    .line 263
    if-eq v5, v1, :cond_c

    .line 264
    .line 265
    if-eqz v7, :cond_c

    .line 266
    .line 267
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 268
    .line 269
    move-object/from16 v1, p1

    .line 270
    .line 271
    move-object/from16 v24, v2

    .line 272
    .line 273
    move/from16 v2, v20

    .line 274
    .line 275
    move/from16 v25, v3

    .line 276
    move v3, v4

    .line 277
    .line 278
    move/from16 v26, v4

    .line 279
    .line 280
    move/from16 v4, v23

    .line 281
    move v8, v5

    .line 282
    .line 283
    move/from16 v5, v26

    .line 284
    .line 285
    move/from16 v27, v6

    .line 286
    .line 287
    move-object/from16 v6, v24

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    goto :goto_a

    .line 292
    .line 293
    :cond_c
    move/from16 v25, v3

    .line 294
    .line 295
    move/from16 v26, v4

    .line 296
    move v8, v5

    .line 297
    .line 298
    move/from16 v27, v6

    .line 299
    .line 300
    :goto_a
    const/16 v6, 0xff

    .line 301
    .line 302
    if-eqz v16, :cond_e

    .line 303
    .line 304
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 305
    .line 306
    if-ne v8, v1, :cond_d

    .line 307
    .line 308
    if-lez v1, :cond_d

    .line 309
    goto :goto_b

    .line 310
    :cond_d
    move v4, v6

    .line 311
    .line 312
    goto/16 :goto_13

    .line 313
    .line 314
    :cond_e
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 315
    .line 316
    if-ne v8, v1, :cond_d

    .line 317
    .line 318
    .line 319
    :goto_b
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 320
    move-result v1

    .line 321
    .line 322
    if-eqz v1, :cond_f

    .line 323
    .line 324
    if-eqz v16, :cond_12

    .line 325
    .line 326
    add-float v20, v20, v19

    .line 327
    .line 328
    add-float v20, v20, v11

    .line 329
    const/4 v1, 0x2

    .line 330
    int-to-float v1, v1

    .line 331
    .line 332
    div-float v1, v10, v1

    .line 333
    .line 334
    sub-float v20, v20, v1

    .line 335
    goto :goto_d

    .line 336
    .line 337
    :cond_f
    if-eqz v16, :cond_11

    .line 338
    .line 339
    if-gez v14, :cond_10

    .line 340
    const/4 v1, 0x0

    .line 341
    goto :goto_c

    .line 342
    :cond_10
    int-to-float v1, v14

    .line 343
    mul-float/2addr v1, v11

    .line 344
    .line 345
    div-float v2, v10, v12

    .line 346
    add-float/2addr v1, v2

    .line 347
    .line 348
    :goto_c
    add-float v20, v13, v1

    .line 349
    goto :goto_d

    .line 350
    .line 351
    :cond_11
    sub-float v20, v18, v19

    .line 352
    .line 353
    .line 354
    :cond_12
    :goto_d
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 355
    move-result v1

    .line 356
    .line 357
    if-eqz v1, :cond_14

    .line 358
    .line 359
    if-eqz v16, :cond_13

    .line 360
    .line 361
    sub-float v1, v11, v19

    .line 362
    .line 363
    div-float v2, v10, v12

    .line 364
    sub-float/2addr v1, v2

    .line 365
    .line 366
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 367
    mul-float/2addr v1, v2

    .line 368
    .line 369
    sub-float v1, v20, v1

    .line 370
    :goto_e
    move v4, v1

    .line 371
    goto :goto_f

    .line 372
    .line 373
    :cond_13
    sub-float v1, v20, v11

    .line 374
    .line 375
    add-float v1, v1, v19

    .line 376
    .line 377
    add-float v1, v1, v22

    .line 378
    .line 379
    sub-float v2, v11, v19

    .line 380
    .line 381
    div-float v3, v10, v12

    .line 382
    sub-float/2addr v2, v3

    .line 383
    .line 384
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 385
    mul-float/2addr v2, v3

    .line 386
    sub-float/2addr v1, v2

    .line 387
    goto :goto_e

    .line 388
    .line 389
    :cond_14
    if-eqz v16, :cond_15

    .line 390
    .line 391
    sub-float v1, v11, v19

    .line 392
    .line 393
    sub-float v1, v1, v22

    .line 394
    .line 395
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 396
    mul-float/2addr v1, v2

    .line 397
    .line 398
    add-float v1, v20, v1

    .line 399
    goto :goto_e

    .line 400
    .line 401
    :cond_15
    sub-float v1, v11, v19

    .line 402
    .line 403
    sub-float v1, v1, v22

    .line 404
    .line 405
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 406
    mul-float/2addr v1, v2

    .line 407
    .line 408
    add-float v1, v21, v1

    .line 409
    goto :goto_e

    .line 410
    .line 411
    :goto_f
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 412
    .line 413
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    .line 418
    if-eqz v7, :cond_16

    .line 419
    .line 420
    iget-object v14, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 421
    .line 422
    move-object/from16 v1, p1

    .line 423
    .line 424
    move/from16 v2, v20

    .line 425
    .line 426
    move/from16 v3, v26

    .line 427
    .line 428
    move/from16 v5, v26

    .line 429
    move-object v6, v14

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 433
    .line 434
    :cond_16
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 435
    div-float/2addr v1, v12

    .line 436
    .line 437
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    .line 438
    div-float/2addr v2, v12

    .line 439
    sub-float/2addr v1, v2

    .line 440
    .line 441
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 442
    .line 443
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    .line 448
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 449
    .line 450
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 451
    .line 452
    const/16 v4, 0xff

    .line 453
    int-to-float v5, v4

    .line 454
    mul-float/2addr v3, v5

    .line 455
    float-to-int v3, v3

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 459
    .line 460
    .line 461
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 462
    move-result v2

    .line 463
    .line 464
    if-eqz v2, :cond_18

    .line 465
    .line 466
    if-eqz v16, :cond_17

    .line 467
    .line 468
    sub-float v2, v11, v19

    .line 469
    .line 470
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 471
    :goto_10
    mul-float/2addr v2, v3

    .line 472
    .line 473
    sub-float v20, v20, v2

    .line 474
    .line 475
    :goto_11
    move/from16 v2, v20

    .line 476
    goto :goto_12

    .line 477
    .line 478
    :cond_17
    sub-float v20, v20, v11

    .line 479
    .line 480
    add-float v20, v20, v19

    .line 481
    .line 482
    add-float v20, v20, v22

    .line 483
    .line 484
    sub-float v2, v11, v22

    .line 485
    .line 486
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 487
    goto :goto_10

    .line 488
    .line 489
    :cond_18
    if-eqz v16, :cond_19

    .line 490
    div-float/2addr v10, v12

    .line 491
    .line 492
    sub-float v2, v11, v10

    .line 493
    .line 494
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 495
    mul-float/2addr v2, v3

    .line 496
    .line 497
    add-float v20, v20, v2

    .line 498
    goto :goto_11

    .line 499
    .line 500
    :cond_19
    sub-float v2, v11, v22

    .line 501
    .line 502
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 503
    mul-float/2addr v2, v3

    .line 504
    .line 505
    add-float v20, v21, v2

    .line 506
    goto :goto_11

    .line 507
    .line 508
    :goto_12
    if-eqz v7, :cond_1a

    .line 509
    .line 510
    iget-object v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 511
    .line 512
    move/from16 v5, v26

    .line 513
    .line 514
    .line 515
    invoke-virtual {v7, v2, v5, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 516
    goto :goto_14

    .line 517
    .line 518
    :cond_1a
    :goto_13
    move/from16 v5, v26

    .line 519
    .line 520
    .line 521
    :goto_14
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 522
    move-result v1

    .line 523
    .line 524
    if-eqz v1, :cond_1b

    .line 525
    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 528
    move-result v1

    .line 529
    int-to-float v1, v1

    .line 530
    sub-float/2addr v1, v13

    .line 531
    .line 532
    sub-float v18, v1, v15

    .line 533
    .line 534
    :cond_1b
    move/from16 v1, v18

    .line 535
    .line 536
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 537
    .line 538
    if-ne v8, v2, :cond_1c

    .line 539
    .line 540
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 541
    .line 542
    const/high16 v3, 0x3f800000    # 1.0f

    .line 543
    .line 544
    cmpg-float v2, v2, v3

    .line 545
    .line 546
    if-nez v2, :cond_1c

    .line 547
    .line 548
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 549
    .line 550
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    .line 555
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 556
    .line 557
    mul-float v2, v2, v19

    .line 558
    .line 559
    iget-object v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 560
    .line 561
    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 562
    int-to-float v10, v4

    .line 563
    mul-float/2addr v6, v10

    .line 564
    float-to-int v6, v6

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 568
    .line 569
    if-eqz v7, :cond_1c

    .line 570
    .line 571
    iget-object v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7, v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 575
    .line 576
    :cond_1c
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 580
    .line 581
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    .line 582
    .line 583
    div-float v3, v2, v12

    .line 584
    .line 585
    sub-float v3, v19, v3

    .line 586
    .line 587
    iget-object v4, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 591
    .line 592
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 593
    .line 594
    iget v4, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 595
    .line 596
    if-le v8, v4, :cond_1d

    .line 597
    .line 598
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 599
    goto :goto_15

    .line 600
    .line 601
    :cond_1d
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 602
    .line 603
    .line 604
    :goto_15
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 605
    .line 606
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 607
    .line 608
    iget v4, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 609
    .line 610
    if-gt v8, v4, :cond_1e

    .line 611
    const/4 v6, -0x1

    .line 612
    .line 613
    if-eq v4, v6, :cond_1e

    .line 614
    .line 615
    iget v4, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    .line 616
    goto :goto_16

    .line 617
    .line 618
    :cond_1e
    iget v4, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    .line 619
    .line 620
    .line 621
    :goto_16
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 622
    .line 623
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 624
    .line 625
    if-ne v8, v2, :cond_20

    .line 626
    .line 627
    if-eqz v16, :cond_20

    .line 628
    .line 629
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    .line 630
    .line 631
    const/high16 v4, 0x3f800000    # 1.0f

    .line 632
    .line 633
    cmpg-float v2, v2, v4

    .line 634
    .line 635
    if-nez v2, :cond_1f

    .line 636
    goto :goto_17

    .line 637
    .line 638
    :cond_1f
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 639
    .line 640
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 644
    .line 645
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 646
    .line 647
    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    .line 648
    .line 649
    .line 650
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    goto :goto_17

    .line 652
    .line 653
    :cond_20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 654
    .line 655
    :goto_17
    if-eqz v7, :cond_21

    .line 656
    .line 657
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v7, v1, v5, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 661
    .line 662
    :cond_21
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 663
    .line 664
    .line 665
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 666
    move-result-object v6

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 670
    move-result v2

    .line 671
    .line 672
    if-eqz v2, :cond_2b

    .line 673
    .line 674
    if-eqz v7, :cond_22

    .line 675
    .line 676
    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 678
    .line 679
    .line 680
    :cond_22
    invoke-virtual {v0, v8}, Lcom/narvii/widgets/StoryProgressBar;->getInteractionPlayeRecord(I)Lcom/narvii/scene/ScenePlayRecord;

    .line 681
    move-result-object v2

    .line 682
    .line 683
    if-eqz v2, :cond_24

    .line 684
    .line 685
    iget v6, v2, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    .line 686
    const/4 v8, 0x1

    .line 687
    .line 688
    if-ne v6, v8, :cond_23

    .line 689
    move v6, v8

    .line 690
    goto :goto_19

    .line 691
    :cond_23
    :goto_18
    const/4 v6, 0x0

    .line 692
    goto :goto_19

    .line 693
    :cond_24
    const/4 v8, 0x1

    .line 694
    goto :goto_18

    .line 695
    .line 696
    :goto_19
    if-eqz v2, :cond_25

    .line 697
    move v10, v8

    .line 698
    goto :goto_1a

    .line 699
    :cond_25
    const/4 v10, 0x0

    .line 700
    .line 701
    :goto_1a
    if-eqz v2, :cond_26

    .line 702
    .line 703
    iget-boolean v2, v2, Lcom/narvii/scene/ScenePlayRecord;->isAnswerRight:Z

    .line 704
    .line 705
    if-ne v2, v8, :cond_26

    .line 706
    move v2, v8

    .line 707
    goto :goto_1b

    .line 708
    :cond_26
    const/4 v2, 0x0

    .line 709
    .line 710
    :goto_1b
    iget-object v14, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    .line 711
    .line 712
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 716
    .line 717
    if-eqz v10, :cond_29

    .line 718
    .line 719
    iget-object v10, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    .line 720
    .line 721
    if-nez v2, :cond_28

    .line 722
    .line 723
    if-nez v6, :cond_27

    .line 724
    goto :goto_1c

    .line 725
    .line 726
    .line 727
    :cond_27
    const v2, -0xbbbc

    .line 728
    goto :goto_1d

    .line 729
    .line 730
    .line 731
    :cond_28
    :goto_1c
    const v2, -0xfb1bbc

    .line 732
    .line 733
    .line 734
    :goto_1d
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    goto :goto_1e

    .line 736
    .line 737
    :cond_29
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    .line 738
    .line 739
    .line 740
    const v6, -0xcd3e15

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 744
    .line 745
    :goto_1e
    if-eqz v7, :cond_2a

    .line 746
    .line 747
    .line 748
    const v2, 0x3f2147ae    # 0.63f

    .line 749
    mul-float/2addr v3, v2

    .line 750
    .line 751
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v7, v1, v5, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 755
    .line 756
    :cond_2a
    if-eqz v7, :cond_2c

    .line 757
    .line 758
    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 760
    goto :goto_1f

    .line 761
    :cond_2b
    const/4 v8, 0x1

    .line 762
    .line 763
    :cond_2c
    :goto_1f
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 764
    .line 765
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 769
    .line 770
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    .line 771
    const/4 v2, 0x0

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 775
    move v14, v2

    .line 776
    move v10, v4

    .line 777
    .line 778
    move/from16 v5, v25

    .line 779
    .line 780
    move/from16 v6, v27

    .line 781
    .line 782
    goto/16 :goto_1

    .line 783
    :cond_2d
    return-void
.end method

.method public final pauseAnimation()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 21
    :cond_0
    return-void
.end method

.method public final resetCurSceneIndex()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    :cond_1
    const/4 v0, -0x1

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 18
    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    return-void
.end method

.method public final resumeAnimation()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final setCurSceneIndex(I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 8
    .line 9
    if-gt p1, v1, :cond_a

    .line 10
    .line 11
    if-gez p1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_1
    if-le p1, v0, :cond_2

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    :cond_3
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    :cond_4
    const/4 p1, 0x2

    .line 36
    .line 37
    new-array v1, p1, [F

    .line 38
    .line 39
    .line 40
    fill-array-data v1, :array_0

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, -0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    .line 50
    const-wide/16 v2, 0x4b0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v2, Lcom/narvii/widgets/a;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/narvii/widgets/a;-><init>(Lcom/narvii/widgets/StoryProgressBar;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    .line 63
    new-instance v2, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;-><init>(Lcom/narvii/widgets/StoryProgressBar;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    .line 71
    iput-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-array p1, p1, [F

    .line 74
    .line 75
    .line 76
    fill-array-data p1, :array_1

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_5
    const-wide/16 v1, 0x12c

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    :goto_1
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    if-nez p1, :cond_6

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_6
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 98
    .line 99
    .line 100
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    .line 105
    :goto_2
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    new-instance v1, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, p0, v0}, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;-><init>(Lcom/narvii/widgets/StoryProgressBar;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    .line 117
    :cond_7
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    if-eqz p1, :cond_8

    .line 120
    .line 121
    new-instance v1, Lcom/narvii/widgets/b;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, p0, v0}, Lcom/narvii/widgets/b;-><init>(Lcom/narvii/widgets/StoryProgressBar;Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    .line 129
    :cond_8
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    if-eqz p1, :cond_9

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 135
    .line 136
    :cond_9
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 137
    .line 138
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    .line 139
    :cond_a
    :goto_3
    return-void

    .line 140
    nop

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setIndicatorPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setSceneSize(I)V
    .locals 0

    return-void
.end method

.method public final setStory(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/story/StorySceneMilestone;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/KUtils;->Companion:Lcom/narvii/util/KUtils$Companion;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    .line 13
    .line 14
    sget-object v2, Lcom/narvii/widgets/StoryProgressBar$setStory$1;->INSTANCE:Lcom/narvii/widgets/StoryProgressBar$setStory$1;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2, v1, v2}, Lcom/narvii/util/KUtils$Companion;->isListSame(Ljava/util/List;Ljava/util/List;Le8/p;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->storyId:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 31
    const/4 p1, 0x0

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, p1

    .line 40
    .line 41
    :goto_0
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 47
    move-result v0

    .line 48
    .line 49
    :goto_1
    if-ge p1, v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lcom/narvii/model/story/StorySceneMilestone;

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Lcom/narvii/model/story/StorySceneMilestone;->containsPollOrQuiz()Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 76
    .line 77
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 78
    .line 79
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    .line 80
    return-void
.end method

.method public final setStoryQuizPollPlayListener(Lcom/narvii/widgets/IStoryPollQuizPlayListener;)V
    .locals 0
    .param p1    # Lcom/narvii/widgets/IStoryPollQuizPlayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    return-void
.end method

.method public final updatePlayedPollQuiz()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
.end method
