.class public Lcom/narvii/util/ScaleBounceAnimator;
.super Ljava/lang/Object;
.source "ScaleBounceAnimator.java"


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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/narvii/util/ScaleBounceAnimator;->context:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/narvii/util/ScaleBounceAnimator;->scaleList:[F

    .line 26
    iput-object p4, p0, Lcom/narvii/util/ScaleBounceAnimator;->durationList:[I

    .line 27
    iput-object p2, p0, Lcom/narvii/util/ScaleBounceAnimator;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->canceled:Z

    .line 63
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method getScaleAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p3, v1, v3

    const-string v4, "scaleX"

    .line 48
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v4, v0, [F

    aput p2, v4, v2

    aput p3, v4, v3

    const-string v5, "scaleY"

    .line 49
    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 50
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v5, p4

    .line 51
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    cmpg-float p2, p3, p2

    if-gez p2, :cond_0

    .line 53
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    new-array p2, v0, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    .line 57
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v4
.end method

.method public playSeq(Landroid/animation/Animator$AnimatorListener;)V
    .locals 7

    .line 32
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/narvii/util/ScaleBounceAnimator;->scaleList:[F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 35
    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    .line 36
    aget v2, v2, v4

    .line 37
    iget-object v5, p0, Lcom/narvii/util/ScaleBounceAnimator;->durationList:[I

    aget v6, v5, v4

    aget v1, v5, v1

    sub-int/2addr v6, v1

    .line 38
    iget-object v1, p0, Lcom/narvii/util/ScaleBounceAnimator;->view:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v6}, Lcom/narvii/util/ScaleBounceAnimator;->getScaleAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/util/ScaleBounceAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
