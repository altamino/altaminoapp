.class public Lcom/narvii/widget/FlipLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FlipLayout$FlipListener;
    }
.end annotation


# instance fields
.field animIn:Landroid/animation/AnimatorSet;

.field animOut:Landroid/animation/AnimatorSet;

.field backView:Landroid/view/View;

.field flipListener:Lcom/narvii/widget/FlipLayout$FlipListener;

.field frontView:Landroid/view/View;

.field isShowBack:Z


# direct methods
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f02000c

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    const p2, 0x7f02000b

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/widget/FlipLayout$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/narvii/widget/FlipLayout$1;-><init>(Lcom/narvii/widget/FlipLayout;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    return-void
.end method

.method private setCameraDistance()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    .line 21
    const/16 v1, 0x3e80

    .line 22
    int-to-float v1, v1

    .line 23
    mul-float/2addr v0, v1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public flip()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 36
    const/4 v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 62
    const/4 v0, 0x0

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a05d5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a05d9

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/widget/FlipLayout;->setCameraDistance()V

    .line 25
    return-void
.end method

.method public setFlipListener(Lcom/narvii/widget/FlipLayout$FlipListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/FlipLayout;->flipListener:Lcom/narvii/widget/FlipLayout$FlipListener;

    return-void
.end method
