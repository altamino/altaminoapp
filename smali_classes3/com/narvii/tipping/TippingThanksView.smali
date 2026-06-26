.class public Lcom/narvii/tipping/TippingThanksView;
.super Landroid/widget/RelativeLayout;
.source "TippingThanksView.java"


# instance fields
.field baseView:Landroid/widget/ImageView;

.field baseViewAlpha:Landroid/animation/ObjectAnimator;

.field chatView:Landroid/widget/TextView;

.field chatViewScaleX:Landroid/animation/ObjectAnimator;

.field chatViewScaleY:Landroid/animation/ObjectAnimator;

.field hasLiked:Z

.field heartView:Landroid/widget/ImageView;

.field heartViewAlpha:Landroid/animation/ObjectAnimator;

.field heartViewRotate:Landroid/animation/ObjectAnimator;

.field heartViewScaleX:Landroid/animation/ObjectAnimator;

.field heartViewScaleY:Landroid/animation/ObjectAnimator;

.field heartViewTranslate:Landroid/animation/ObjectAnimator;

.field isSupportChat:Z

.field layoutComplete:Z

.field tipper:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingThanksView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingThanksView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingThanksView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/tipping/TippingThanksView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/tipping/TippingThanksView;->onAnimationFlowEnded()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b010b

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private onAnimationFlowEnded()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    .line 177
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public bindBebefactor(Lcom/narvii/model/Benefactor;)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/narvii/tipping/TippingThanksView;->bindBebefactor(Lcom/narvii/model/Benefactor;Z)V

    return-void
.end method

.method public bindBebefactor(Lcom/narvii/model/Benefactor;Z)V
    .locals 3

    .line 95
    iput-boolean p2, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/Benefactor;->getBenefactor()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->tipper:Lcom/narvii/model/User;

    .line 100
    invoke-interface {p1}, Lcom/narvii/model/Benefactor;->isThanksSent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    .line 101
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isSupportChat(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewTranslate:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    .line 202
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 205
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .line 108
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09011e

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    const v0, 0x7f090509

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    const v0, 0x7f09020e

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleX:Landroid/animation/ObjectAnimator;

    .line 113
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleY:Landroid/animation/ObjectAnimator;

    .line 114
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/high16 v8, -0x3d380000    # -100.0f

    aput v8, v6, v7

    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewTranslate:Landroid/animation/ObjectAnimator;

    .line 115
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v3, v5, [F

    const/high16 v4, 0x42b40000    # 90.0f

    aput v4, v3, v7

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    .line 116
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 117
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x190

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    .line 118
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-direct {v1, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v5, v2, [F

    fill-array-data v5, :array_4

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 123
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    .line 124
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 125
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/narvii/tipping/TippingThanksView$1;

    invoke-direct {v1, p0}, Lcom/narvii/tipping/TippingThanksView$1;-><init>(Lcom/narvii/tipping/TippingThanksView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/narvii/tipping/TippingThanksView$2;

    invoke-direct {v1, p0}, Lcom/narvii/tipping/TippingThanksView$2;-><init>(Lcom/narvii/tipping/TippingThanksView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41000000    # 8.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41000000    # 8.0f
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 62
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 63
    iget-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->layoutComplete:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingThanksView;->onLayoutComplete()V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->layoutComplete:Z

    :cond_1
    return-void
.end method

.method protected onLayoutComplete()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 75
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method public startLikeAnimation()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 82
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewTranslate:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 85
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 86
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 87
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method
