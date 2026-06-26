.class public Lcom/narvii/monetization/utils/ClaimGiftHintLayout;
.super Landroid/widget/FrameLayout;
.source "ClaimGiftHintLayout.java"


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field hasBackground:Z

.field isSmall:Z

.field private isVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/narvii/amino/R$styleable;->ClaimCoinHintLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->hasBackground:Z

    const/4 v1, 0x2

    .line 40
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isSmall:Z

    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-boolean p2, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isSmall:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0b0483

    goto :goto_0

    :cond_0
    const p2, 0x7f0b0482

    :goto_0
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    return p0
.end method

.method private displayAnimation(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    .line 125
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 8

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09050e

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/PressedFrameLayout;

    .line 50
    iget-boolean v2, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->hasBackground:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080161

    goto :goto_0

    :cond_0
    const v2, 0x7f080160

    .line 52
    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isSmall:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    const v0, 0x7f090242

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 61
    fill-array-data v2, :array_0

    const-string v5, "rotation"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    .line 62
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    new-array v4, v1, [F

    .line 66
    fill-array-data v4, :array_1

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 70
    iget-object v5, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 76
    iget-object v1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;-><init>(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        -0x3f400000    # -6.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        0x40c00000    # 6.0f
        0x0
    .end array-data
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 107
    invoke-direct {p0, p1}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->displayAnimation(I)V

    .line 108
    iget-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    return-void
.end method

.method public setBackgroundResource(II)V
    .locals 2

    const v0, 0x7f09050e

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, p2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method
