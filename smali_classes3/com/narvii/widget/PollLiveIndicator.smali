.class public Lcom/narvii/widget/PollLiveIndicator;
.super Landroid/widget/FrameLayout;
.source "PollLiveIndicator.java"


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

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/PollLiveIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b04c3

    .line 50
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->initView()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07021b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/PollLiveIndicator;->indicatorHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/PollLiveIndicator;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell3:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingConainter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    return-object p0
.end method

.method private getBaseScaleAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 185
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    new-instance v1, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getCheckAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0xc8

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getTotalAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 130
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 135
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x12c

    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 137
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->getBaseScaleAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 138
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->getCheckAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v5, v7, v2

    const/4 v8, 0x1

    aput-object v6, v7, v8

    .line 139
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 140
    new-instance v6, Lcom/narvii/widget/PollLiveIndicator$2;

    invoke-direct {v6, p0, v3}, Lcom/narvii/widget/PollLiveIndicator$2;-><init>(Lcom/narvii/widget/PollLiveIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v0
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f090867

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingConainter:Landroid/view/View;

    const v0, 0x7f090866

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    const v0, 0x7f090865

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    const v0, 0x7f0901b5

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell1:Landroid/view/View;

    const v0, 0x7f0901b6

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell2:Landroid/view/View;

    const v0, 0x7f0901b7

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->cell3:Landroid/view/View;

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingBaseView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->pollingCheck:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public endAnimtion()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 79
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->initView()V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->initViews()V

    .line 98
    invoke-direct {p0}, Lcom/narvii/widget/PollLiveIndicator;->getTotalAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 99
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/PollLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/narvii/widget/PollLiveIndicator$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/PollLiveIndicator$1;-><init>(Lcom/narvii/widget/PollLiveIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
