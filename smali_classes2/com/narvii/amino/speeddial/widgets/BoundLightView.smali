.class public Lcom/narvii/amino/speeddial/widgets/BoundLightView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "BoundLightView.java"


# static fields
.field private static final DURATION_FADE_IN:I = 0x320

.field private static final DURATION_FADE_IN_DELAY:I = 0xc8

.field private static final DURATION_FADE_OUT_DELAY:I = 0x12c


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private isVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0803b3

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->configAniamtion()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private cancelAnimation()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private configAniamtion()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    aput v3, v1, v2

    const-string v3, "alpha"

    .line 81
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    .line 82
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x320

    .line 83
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v6, v0, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    .line 85
    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 89
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 90
    iget-object v4, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 91
    iget-object v4, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v2

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;

    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;-><init>(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private displayAnimation(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 43
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->cancelAnimation()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->displayAnimation(I)V

    .line 50
    iget-boolean v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    return-void
.end method
