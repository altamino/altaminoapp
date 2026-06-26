.class public Lcom/narvii/tipping/TippingBoxView;
.super Landroid/widget/FrameLayout;
.source "TippingBoxView.java"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private authorCoin:Landroid/view/View;

.field private authorCoinLayout:Landroid/view/View;

.field private bg:Landroid/view/View;

.field private coinAudio:Ljava/lang/Runnable;

.field private coins:Landroid/widget/TextView;

.field private coinsGot:I

.field private coinsLayout:Landroid/view/View;

.field private dataSet:Z

.field private isAuthor:Z

.field private root:Landroid/view/View;

.field private runnable:Ljava/lang/Runnable;

.field private slot:Landroid/view/View;

.field private tipAuthor:Landroid/widget/TextView;

.field private tranYAnimator:Landroid/animation/ObjectAnimator;

.field private viewerCoin:Landroid/view/View;

.field private viewerCoinLayout:Landroid/view/View;

.field private viewerLove:Landroid/view/View;

.field private viewerStar:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b0692

    .line 55
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/tipping/TippingBoxView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/narvii/tipping/TippingBoxView;->isAuthor:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/tipping/TippingBoxView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/tipping/TippingBoxView;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/tipping/TippingBoxView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->runnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/tipping/TippingBoxView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBoxView;->updateTranYAnimator()V

    return-void
.end method

.method private updateTranYAnimator()V
    .locals 8

    .line 97
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingBoxView;->isAuthor:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/tipping/TippingBoxView;->dataSet:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    iget-object v2, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v0, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    aput v0, v5, v6

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 105
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 107
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBoxView;->updateTranYAnimator()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 133
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090b7d

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tipAuthor:Landroid/widget/TextView;

    const v0, 0x7f090270

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->coins:Landroid/widget/TextView;

    const v0, 0x7f090274

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->coinsLayout:Landroid/view/View;

    const v0, 0x7f090c9f

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    const v0, 0x7f090ca1

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    const v0, 0x7f090ca5

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerStar:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090ca0

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoinLayout:Landroid/view/View;

    const v0, 0x7f0900de

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoinLayout:Landroid/view/View;

    const v0, 0x7f0900dd

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoin:Landroid/view/View;

    const v0, 0x7f090169

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->slot:Landroid/view/View;

    const v0, 0x7f090167

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->bg:Landroid/view/View;

    const v0, 0x7f090b7e

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->root:Landroid/view/View;

    return-void
.end method

.method public setInfo(ZIZ)V
    .locals 5

    .line 77
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingBoxView;->isAuthor:Z

    .line 78
    iput p2, p0, Lcom/narvii/tipping/TippingBoxView;->coinsGot:I

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/narvii/tipping/TippingBoxView;->dataSet:Z

    .line 80
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->tipAuthor:Landroid/widget/TextView;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 81
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->coinsLayout:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 82
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoinLayout:Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 83
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoinLayout:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 85
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoin:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 86
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->root:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    :goto_1
    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->coins:Landroid/widget/TextView;

    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p2, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 89
    iget-object p2, p0, Lcom/narvii/tipping/TippingBoxView;->viewerStar:Lcom/narvii/widget/NVImageView;

    xor-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 90
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->viewerStar:Lcom/narvii/widget/NVImageView;

    const-string p2, "assets://tipping_star.webp"

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 91
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->bg:Landroid/view/View;

    if-eqz p3, :cond_2

    const p2, 0x7f0807cf

    goto :goto_2

    :cond_2
    const p2, 0x7f0807ce

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->slot:Landroid/view/View;

    if-eqz p3, :cond_3

    const p2, 0x7f0807d1

    goto :goto_3

    :cond_3
    const p2, 0x7f0807d0

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBoxView;->updateTranYAnimator()V

    return-void
.end method

.method public startTipSuccessAnimation()V
    .locals 16

    move-object/from16 v0, p0

    .line 137
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 141
    :cond_0
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/narvii/tipping/TippingBoxView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 147
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    iget-object v2, v0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    int-to-float v1, v1

    const/4 v8, 0x1

    aput v1, v5, v8

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 150
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    new-instance v3, Lcom/narvii/tipping/TippingBoxView$1;

    invoke-direct {v3, v0}, Lcom/narvii/tipping/TippingBoxView$1;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0x12c

    .line 158
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 160
    iget-object v3, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v4, [F

    aput v1, v9, v7

    aput v6, v9, v8

    invoke-static {v3, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 161
    iget-object v3, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 162
    iget-object v5, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v4, [F

    fill-array-data v9, :array_1

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 163
    iget-object v6, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v4, [F

    fill-array-data v10, :array_2

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 164
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v10, 0x258

    .line 165
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v10, 0x4

    new-array v11, v10, [Landroid/animation/Animator;

    aput-object v1, v11, v7

    aput-object v3, v11, v8

    aput-object v5, v11, v4

    const/4 v1, 0x3

    aput-object v6, v11, v1

    .line 166
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 167
    new-instance v3, Lcom/narvii/tipping/TippingBoxView$2;

    invoke-direct {v3, v0}, Lcom/narvii/tipping/TippingBoxView$2;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    iget-object v3, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    new-array v5, v4, [F

    fill-array-data v5, :array_3

    const-string v6, "rotation"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v11, 0x96

    .line 176
    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 178
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 180
    iget-object v5, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    new-array v13, v4, [F

    fill-array-data v13, :array_4

    invoke-static {v5, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 181
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 184
    iget-object v6, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v11, v4, [Landroid/animation/Animator;

    aput-object v3, v11, v7

    aput-object v5, v11, v8

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 185
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 186
    iget-object v11, v0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v4, [F

    fill-array-data v13, :array_5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 187
    new-instance v12, Lcom/narvii/tipping/TippingBoxView$3;

    invoke-direct {v12, v0}, Lcom/narvii/tipping/TippingBoxView$3;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v12, 0xc8

    .line 194
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x64

    .line 195
    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 196
    iget-object v14, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v4, [F

    fill-array-data v10, :array_6

    invoke-static {v14, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v14, v4, [Landroid/animation/Animator;

    aput-object v11, v14, v7

    aput-object v10, v14, v8

    .line 197
    invoke-virtual {v6, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 198
    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 201
    iget-object v10, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object v10, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x5

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v2, v11, v7

    aput-object v9, v11, v8

    aput-object v3, v11, v4

    aput-object v5, v11, v1

    const/4 v1, 0x4

    aput-object v6, v11, v1

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 203
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/narvii/tipping/TippingBoxView$4;

    invoke-direct {v2, v0}, Lcom/narvii/tipping/TippingBoxView$4;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        -0x3e900000    # -15.0f
        0x41700000    # 15.0f
    .end array-data

    :array_4
    .array-data 4
        0x41700000    # 15.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
