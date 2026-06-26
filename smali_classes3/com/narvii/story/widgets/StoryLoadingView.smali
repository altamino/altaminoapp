.class public final Lcom/narvii/story/widgets/StoryLoadingView;
.super Landroid/view/View;
.source "StoryLoadingView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/widgets/StoryLoadingView$Companion;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0xe6L

.field public static final Companion:Lcom/narvii/story/widgets/StoryLoadingView$Companion;

.field private static final END_TRANSPARENCY:F = 0.0f

.field private static final END_WIDTH_RATIO:F = 0.5f

.field private static final MIDDLE_TRANSPARENCY:F = 1.0f

.field private static final MIDDLE_WIDTH_RATIO:F = 0.3f

.field private static final START_TRANSPARENCY:F = 0.1f

.field private static final START_WIDTH_RATIO:F = 0.025f


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private canceled:Z

.field private currentAlpha:I

.field private currentRatio:F

.field private final mPaint:Landroid/graphics/Paint;

.field private visibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/story/widgets/StoryLoadingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/widgets/StoryLoadingView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/widgets/StoryLoadingView;->Companion:Lcom/narvii/story/widgets/StoryLoadingView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const p1, 0x3ccccccd    # 0.025f

    .line 20
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    const/high16 p1, 0x41cc0000    # 25.5f

    float-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentAlpha:I

    .line 26
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    new-array v1, p1, [F

    .line 30
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/narvii/story/widgets/StoryLoadingView$1;

    invoke-direct {v2, p0}, Lcom/narvii/story/widgets/StoryLoadingView$1;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "startToMiddleAni"

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v4, p1, [F

    .line 39
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 40
    new-instance v5, Lcom/narvii/story/widgets/StoryLoadingView$2;

    invoke-direct {v5, p0}, Lcom/narvii/story/widgets/StoryLoadingView$2;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v5, "middleToEndAni"

    .line 46
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 49
    iget-object v2, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    aput-object v4, p1, v0

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/narvii/story/widgets/StoryLoadingView$3;

    invoke-direct {v0, p0}, Lcom/narvii/story/widgets/StoryLoadingView$3;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ccccccd    # 0.025f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const p1, 0x3ccccccd    # 0.025f

    .line 20
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    const/high16 p1, 0x41cc0000    # 25.5f

    float-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentAlpha:I

    .line 26
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 30
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/narvii/story/widgets/StoryLoadingView$1;

    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/StoryLoadingView$1;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "startToMiddleAni"

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v3, p1, [F

    .line 39
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 40
    new-instance v4, Lcom/narvii/story/widgets/StoryLoadingView$2;

    invoke-direct {v4, p0}, Lcom/narvii/story/widgets/StoryLoadingView$2;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v4, "middleToEndAni"

    .line 46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 49
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    aput-object v3, p1, p2

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/narvii/story/widgets/StoryLoadingView$3;

    invoke-direct {p2, p0}, Lcom/narvii/story/widgets/StoryLoadingView$3;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ccccccd    # 0.025f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const p1, 0x3ccccccd    # 0.025f

    .line 20
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    const/high16 p1, 0x41cc0000    # 25.5f

    float-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentAlpha:I

    .line 26
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    new-array p3, p1, [F

    .line 30
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 31
    new-instance v0, Lcom/narvii/story/widgets/StoryLoadingView$1;

    invoke-direct {v0, p0}, Lcom/narvii/story/widgets/StoryLoadingView$1;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "startToMiddleAni"

    .line 37
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xe6

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v2, p1, [F

    .line 39
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 40
    new-instance v3, Lcom/narvii/story/widgets/StoryLoadingView$2;

    invoke-direct {v3, p0}, Lcom/narvii/story/widgets/StoryLoadingView$2;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v3, "middleToEndAni"

    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 49
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object p3, p1, v1

    aput-object v2, p1, p2

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/narvii/story/widgets/StoryLoadingView$3;

    invoke-direct {p2, p0}, Lcom/narvii/story/widgets/StoryLoadingView$3;-><init>(Lcom/narvii/story/widgets/StoryLoadingView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ccccccd    # 0.025f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static final synthetic access$getAnimatorSet$p(Lcom/narvii/story/widgets/StoryLoadingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getCanceled$p(Lcom/narvii/story/widgets/StoryLoadingView;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->canceled:Z

    return p0
.end method

.method public static final synthetic access$getCurrentAlpha$p(Lcom/narvii/story/widgets/StoryLoadingView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentAlpha:I

    return p0
.end method

.method public static final synthetic access$getCurrentRatio$p(Lcom/narvii/story/widgets/StoryLoadingView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    return p0
.end method

.method public static final synthetic access$setAnimatorSet$p(Lcom/narvii/story/widgets/StoryLoadingView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setCanceled$p(Lcom/narvii/story/widgets/StoryLoadingView;Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->canceled:Z

    return-void
.end method

.method public static final synthetic access$setCurrentAlpha$p(Lcom/narvii/story/widgets/StoryLoadingView;I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentAlpha:I

    return-void
.end method

.method public static final synthetic access$setCurrentRatio$p(Lcom/narvii/story/widgets/StoryLoadingView;F)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    return-void
.end method

.method private final cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->canceled:Z

    .line 103
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private final startAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->canceled:Z

    .line 98
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 93
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryLoadingView;->cancelAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 71
    iget v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v4, v0, v2

    .line 72
    iget v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentRatio:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v6, v0, v1

    .line 73
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->currentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/narvii/story/widgets/StoryLoadingView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 81
    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryLoadingView;->visibility:Z

    if-eq v0, p1, :cond_1

    .line 82
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryLoadingView;->visibility:Z

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryLoadingView;->startAnimation()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryLoadingView;->cancelAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
