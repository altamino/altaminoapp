.class public Lcom/narvii/util/ScaleBounceHelper;
.super Ljava/lang/Object;
.source "ScaleBounceHelper.java"


# instance fields
.field animationListener:Landroid/view/animation/Animation$AnimationListener;

.field canceled:Z

.field context:Landroid/content/Context;

.field durationList:[I

.field index:I

.field pivotX:F

.field pivotY:F

.field scaleList:[F

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[F[I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->index:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotX:F

    .line 19
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotY:F

    .line 21
    new-instance v0, Lcom/narvii/util/ScaleBounceHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/ScaleBounceHelper$1;-><init>(Lcom/narvii/util/ScaleBounceHelper;)V

    iput-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 45
    iput-object p1, p0, Lcom/narvii/util/ScaleBounceHelper;->context:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/narvii/util/ScaleBounceHelper;->scaleList:[F

    .line 47
    iput-object p4, p0, Lcom/narvii/util/ScaleBounceHelper;->durationList:[I

    .line 48
    iput-object p2, p0, Lcom/narvii/util/ScaleBounceHelper;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/ScaleBounceHelper;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/util/ScaleBounceHelper;->playNext()V

    return-void
.end method

.method private playNext()V
    .locals 13

    .line 62
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->scaleList:[F

    iget v1, p0, Lcom/narvii/util/ScaleBounceHelper;->index:I

    aget v11, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 63
    aget v0, v0, v2

    .line 64
    iget-object v2, p0, Lcom/narvii/util/ScaleBounceHelper;->durationList:[I

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    aget v1, v2, v1

    sub-int v1, v3, v1

    .line 65
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    iget v8, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotX:F

    iget v10, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotY:F

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v2, v12

    move v3, v11

    move v4, v0

    move v5, v11

    move v6, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v1, v1

    .line 66
    invoke-virtual {v12, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v12, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 68
    iget-object v1, p0, Lcom/narvii/util/ScaleBounceHelper;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v12, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    cmpg-float v0, v0, v11

    if-gez v0, :cond_0

    .line 70
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/narvii/util/ScaleBounceHelper;->canceled:Z

    .line 79
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public playSeq()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 53
    invoke-direct {p0}, Lcom/narvii/util/ScaleBounceHelper;->playNext()V

    return-void
.end method

.method public setPivot(FF)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotX:F

    .line 58
    iput p2, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotY:F

    return-void
.end method
