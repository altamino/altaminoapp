.class public Lcom/narvii/util/ScaleBounceAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field canceled:Z

.field context:Landroid/content/Context;

.field durationList:[I

.field scaleList:[F

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[F[I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/ScaleBounceAnimator;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/narvii/util/ScaleBounceAnimator;->scaleList:[F

    .line 8
    .line 9
    iput-object p4, p0, Lcom/narvii/util/ScaleBounceAnimator;->durationList:[I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/util/ScaleBounceAnimator;->view:Landroid/view/View;

    .line 12
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->canceled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 19
    :cond_0
    return-void
.end method

.method getScaleAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    aput p2, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    aput p3, v1, v3

    .line 10
    .line 11
    const-string v4, "scaleX"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-array v4, v0, [F

    .line 18
    .line 19
    aput p2, v4, v2

    .line 20
    .line 21
    aput p3, v4, v3

    .line 22
    .line 23
    const-string v5, "scaleY"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    .line 32
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    int-to-long v5, p4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 37
    .line 38
    cmpg-float p2, p3, p2

    .line 39
    .line 40
    if-gez p2, :cond_0

    .line 41
    .line 42
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    .line 59
    :goto_0
    new-array p2, v0, [Landroid/animation/Animator;

    .line 60
    .line 61
    aput-object v1, p2, v2

    .line 62
    .line 63
    aput-object p1, p2, v3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 67
    return-object v4
.end method

.method public playSeq(Landroid/animation/Animator$AnimatorListener;)V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/narvii/util/ScaleBounceAnimator;->scaleList:[F

    .line 16
    array-length v3, v2

    .line 17
    .line 18
    add-int/lit8 v3, v3, -0x1

    .line 19
    .line 20
    if-ge v1, v3, :cond_0

    .line 21
    .line 22
    aget v3, v2, v1

    .line 23
    .line 24
    add-int/lit8 v4, v1, 0x1

    .line 25
    .line 26
    aget v2, v2, v4

    .line 27
    .line 28
    iget-object v5, p0, Lcom/narvii/util/ScaleBounceAnimator;->durationList:[I

    .line 29
    .line 30
    aget v6, v5, v4

    .line 31
    .line 32
    aget v1, v5, v1

    .line 33
    sub-int/2addr v6, v1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/util/ScaleBounceAnimator;->view:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v3, v2, v6}, Lcom/narvii/util/ScaleBounceAnimator;->getScaleAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    move v1, v4

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 60
    return-void
.end method
