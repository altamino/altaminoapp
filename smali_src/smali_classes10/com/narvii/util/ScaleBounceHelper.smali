.class public Lcom/narvii/util/ScaleBounceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 7
    .line 8
    const/high16 v0, 0x3f000000    # 0.5f

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotX:F

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotY:F

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/util/ScaleBounceHelper$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/util/ScaleBounceHelper$1;-><init>(Lcom/narvii/util/ScaleBounceHelper;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/util/ScaleBounceHelper;->context:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/narvii/util/ScaleBounceHelper;->scaleList:[F

    .line 24
    .line 25
    iput-object p4, p0, Lcom/narvii/util/ScaleBounceHelper;->durationList:[I

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/util/ScaleBounceHelper;->view:Landroid/view/View;

    .line 28
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/ScaleBounceHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/ScaleBounceHelper;->playNext()V

    return-void
.end method

.method private playNext()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->scaleList:[F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 5
    .line 6
    aget v11, v0, v1

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    aget v0, v0, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/util/ScaleBounceHelper;->durationList:[I

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x1

    .line 15
    .line 16
    aget v3, v2, v3

    .line 17
    .line 18
    aget v1, v2, v1

    .line 19
    .line 20
    sub-int v1, v3, v1

    .line 21
    .line 22
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    .line 23
    const/4 v7, 0x1

    .line 24
    .line 25
    iget v8, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotX:F

    .line 26
    const/4 v9, 0x1

    .line 27
    .line 28
    iget v10, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotY:F

    .line 29
    move-object v2, v12

    .line 30
    move v3, v11

    .line 31
    move v4, v0

    .line 32
    move v5, v11

    .line 33
    move v6, v0

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 37
    int-to-long v1, v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v12, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v12, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/util/ScaleBounceHelper;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v12, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    .line 51
    cmpg-float v0, v0, v11

    .line 52
    .line 53
    if-gez v0, :cond_0

    .line 54
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->view:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/ScaleBounceHelper;->canceled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/ScaleBounceHelper;->view:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 12
    return-void
.end method

.method public playSeq()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/util/ScaleBounceHelper;->playNext()V

    .line 7
    return-void
.end method

.method public setPivot(FF)V
    .locals 0

    iput p1, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotX:F

    iput p2, p0, Lcom/narvii/util/ScaleBounceHelper;->pivotY:F

    return-void
.end method
