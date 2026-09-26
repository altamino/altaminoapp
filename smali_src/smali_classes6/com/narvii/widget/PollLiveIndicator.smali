.class public Lcom/narvii/widget/PollLiveIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DELAY_CELL_ANIMATION:I = 0x12c

.field private static final DELAY_CHECK_START:I = 0x12c

.field private static final DURATION_CHECK_ALPHA:I = 0xc8

.field private static final DURATION_SCALE:I = 0x1f4


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private cell1:Landroid/view/View;

.field private cell2:Landroid/view/View;

.field private cell3:Landroid/view/View;

.field private indicatorHeight:I

.field private pollingBaseView:Landroid/view/View;

.field private pollingCheck:Landroid/view/View;

.field private pollingConainter:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/PollLiveIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d04f0

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->initView()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070430

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/PollLiveIndicator;->indicatorHeight:I

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/PollLiveIndicator;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell1:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell3:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingConainter:Landroid/view/View;

    return-object p0
.end method

.method private getBaseScaleAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    .line 23
    const/4 v1, 0x2

    .line 24
    .line 25
    new-array v1, v1, [F

    .line 26
    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    const-string v2, "scaleX"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-wide/16 v1, 0x1f4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    return-object v0

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getCheckAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v1, v1, [F

    .line 6
    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    const-string v2, "alpha"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-wide/16 v1, 0x12c

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 20
    .line 21
    const-wide/16 v1, 0xc8

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getTotalAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x3

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    .line 20
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 21
    .line 22
    const-wide/16 v5, 0x12c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->getBaseScaleAnimator()Landroid/animation/ValueAnimator;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->getCheckAnimator()Landroid/animation/ValueAnimator;

    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x2

    .line 35
    .line 36
    new-array v7, v7, [Landroid/animation/Animator;

    .line 37
    .line 38
    aput-object v5, v7, v2

    .line 39
    const/4 v8, 0x1

    .line 40
    .line 41
    aput-object v6, v7, v8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 45
    .line 46
    new-instance v6, Lcom/narvii/widget/PollLiveIndicator$2;

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, p0, v3}, Lcom/narvii/widget/PollLiveIndicator$2;-><init>(Lcom/narvii/widget/PollLiveIndicator;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 62
    return-object v0
.end method

.method private initView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0b1f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingConainter:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0b1e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0b1d

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0266

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell1:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0267

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell2:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0268

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell3:Landroid/view/View;

    .line 55
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public endAnimtion()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->initView()V

    .line 7
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->initViews()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->getTotalAnimation()Landroid/animation/AnimatorSet;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/widget/PollLiveIndicator$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/narvii/widget/PollLiveIndicator$1;-><init>(Lcom/narvii/widget/PollLiveIndicator;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    return-void
.end method
