.class public Lcom/airbnb/lottie/utils/c;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# instance fields
.field private isReversed:Z

.field private maxProgress:F

.field private minProgress:F

.field private originalDuration:J

.field private progress:F

.field private systemAnimationsAreDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/c;->systemAnimationsAreDisabled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/c;->isReversed:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput v0, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 12
    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    iput v1, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 16
    .line 17
    iput v0, p0, Lcom/airbnb/lottie/utils/c;->progress:F

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 27
    .line 28
    new-instance v0, Lcom/airbnb/lottie/utils/c$a;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/c$a;-><init>(Lcom/airbnb/lottie/utils/c;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    .line 36
    new-instance v0, Lcom/airbnb/lottie/utils/c$b;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/c$b;-><init>(Lcom/airbnb/lottie/utils/c;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    return-void

    .line 44
    nop

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/airbnb/lottie/utils/c;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/airbnb/lottie/utils/c;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/airbnb/lottie/utils/c;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/airbnb/lottie/utils/c;->systemAnimationsAreDisabled:Z

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/airbnb/lottie/utils/c;F)F
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/airbnb/lottie/utils/c;->progress:F

    .line 3
    return p1
.end method

.method private o(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    :goto_0
    move p1, v0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 11
    .line 12
    cmpl-float v1, p1, v0

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    :goto_1
    iput p1, p0, Lcom/airbnb/lottie/utils/c;->progress:F

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 30
    sub-float/2addr p1, v0

    .line 31
    .line 32
    iget v1, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 33
    sub-float/2addr v1, v0

    .line 34
    div-float/2addr p1, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    .line 38
    move-result-wide v0

    .line 39
    long-to-float v0, v0

    .line 40
    mul-float/2addr v0, p1

    .line 41
    float-to-long v0, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 45
    :cond_2
    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/c;->i()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/utils/c;->o(F)V

    .line 8
    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->progress:F

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->progress:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/c;->start()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/c;->n(F)V

    .line 9
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/c;->isReversed:Z

    .line 3
    .line 4
    iget p1, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 5
    .line 6
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/c;->q(FF)V

    .line 10
    return-void
.end method

.method public l(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 3
    .line 4
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/c;->q(FF)V

    .line 8
    return-void
.end method

.method public m(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    .line 3
    .line 4
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/c;->q(FF)V

    .line 8
    return-void
.end method

.method public n(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/c;->progress:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/utils/c;->o(F)V

    .line 11
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/c;->systemAnimationsAreDisabled:Z

    return-void
.end method

.method public q(FF)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x2

    .line 10
    .line 11
    new-array p2, p2, [F

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/airbnb/lottie/utils/c;->isReversed:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    move v2, p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v0

    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    .line 21
    aput v2, p2, v3

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    move v1, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, p1

    .line 27
    :goto_1
    const/4 v2, 0x1

    .line 28
    .line 29
    aput v1, p2, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 33
    .line 34
    iget-wide v1, p0, Lcom/airbnb/lottie/utils/c;->originalDuration:J

    .line 35
    long-to-float p2, v1

    .line 36
    sub-float/2addr p1, v0

    .line 37
    mul-float/2addr p2, p1

    .line 38
    float-to-long p1, p2

    .line 39
    .line 40
    .line 41
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/c;->i()F

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/c;->n(F)V

    .line 49
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/utils/c;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 0

    iput-wide p1, p0, Lcom/airbnb/lottie/utils/c;->originalDuration:J

    iget p1, p0, Lcom/airbnb/lottie/utils/c;->minProgress:F

    iget p2, p0, Lcom/airbnb/lottie/utils/c;->maxProgress:F

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/utils/c;->q(FF)V

    return-object p0
.end method

.method public start()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/c;->systemAnimationsAreDisabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/c;->g()F

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/c;->n(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 19
    :goto_0
    return-void
.end method
