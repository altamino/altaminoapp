.class public Lcom/narvii/amino/speeddial/widgets/BoundLightView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0804d3

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->configAniamtion()V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private cancelAnimation()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    :cond_0
    return-void
.end method

.method private configAniamtion()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    .line 6
    const v2, 0x3e99999a    # 0.3f

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    aput v2, v1, v3

    .line 10
    .line 11
    const-string v2, "alpha"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-wide/16 v4, 0x12c

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 21
    .line 22
    const-wide/16 v4, 0x320

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    new-array v6, v0, [F

    .line 28
    .line 29
    const/high16 v7, 0x3f800000    # 1.0f

    .line 30
    .line 31
    aput v7, v6, v3

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    const-wide/16 v4, 0xc8

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 44
    .line 45
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    .line 48
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 49
    .line 50
    iput-object v4, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 56
    const/4 v5, 0x2

    .line 57
    .line 58
    new-array v5, v5, [Landroid/animation/Animator;

    .line 59
    .line 60
    aput-object v1, v5, v3

    .line 61
    .line 62
    aput-object v2, v5, v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 68
    .line 69
    new-instance v1, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;-><init>(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    return p0
.end method

.method private displayAnimation(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    return-void

    .line 19
    .line 20
    :cond_2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->cancelAnimation()V

    .line 7
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    .line 15
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->displayAnimation(I)V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    and-int/2addr p1, v0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->isVisible:Z

    .line 17
    return-void
.end method
