.class public Lcom/narvii/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final STATE_NORMAL:[I

.field private static final STATE_PRESSED:[I

.field private static typefaceMontserrat:Landroid/graphics/Typeface;

.field private static typefaceMontserratLight:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 40
    sput-object v0, Lcom/narvii/util/ViewUtils;->STATE_PRESSED:[I

    new-array v0, v1, [I

    .line 41
    sput-object v0, Lcom/narvii/util/ViewUtils;->STATE_NORMAL:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelFadeAnimator(Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-static {p0}, Lcom/narvii/util/ViewUtils;->cancelFadeOutAnimator(Landroid/view/View;)V

    .line 143
    invoke-static {p0}, Lcom/narvii/util/ViewUtils;->cancelFadeInAnimator(Landroid/view/View;)V

    return-void
.end method

.method public static cancelFadeInAnimator(Landroid/view/View;)V
    .locals 2

    .line 157
    sget v0, Lcom/narvii/lib/R$id;->_fade_in_animator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 161
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_fade_in_animator:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static cancelFadeOutAnimator(Landroid/view/View;)V
    .locals 2

    .line 148
    sget v0, Lcom/narvii/lib/R$id;->_fade_out_animator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 152
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_fade_out_animator:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static fadeHide(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/16 v1, 0x8

    .line 105
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 138
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 117
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_fade_in_animator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/ViewUtils;->cancelFadeAnimator(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$animator;->fade_in:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    int-to-long v1, p1

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 132
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 133
    sget p1, Lcom/narvii/lib/R$id;->_fade_in_animator:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 166
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 173
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_fade_out_animator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/ViewUtils;->cancelFadeAnimator(Landroid/view/View;)V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    return-void

    .line 184
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$animator;->fade_out:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/narvii/util/ViewUtils$1;

    invoke-direct {v1, v0, p0}, Lcom/narvii/util/ViewUtils$1;-><init>(Landroid/animation/Animator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v1, p1

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 195
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 196
    sget p1, Lcom/narvii/lib/R$id;->_fade_out_animator:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static fadeShow(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 80
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->fadeShow(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeShow(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz p1, :cond_1

    int-to-long v1, p1

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public static fastFadeShow(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0xc8

    .line 76
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->fadeShow(Landroid/view/View;I)V

    return-void
.end method

.method public static getBannerLift(Lcom/narvii/app/NVContext;I)I
    .locals 0

    instance-of p1, p0, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p1, 0x42480000    # 50.0f

    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getButtonBackground(IF)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 291
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 292
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 293
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 294
    invoke-static {p0}, Lcom/narvii/util/Utils;->darkColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 295
    sget-object v2, Lcom/narvii/util/ViewUtils;->STATE_PRESSED:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 298
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 299
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 300
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 301
    sget-object p0, Lcom/narvii/util/ViewUtils;->STATE_NORMAL:[I

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getMarginBottom(Landroid/view/ViewGroup$LayoutParams;)I
    .locals 1

    .line 461
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 462
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 463
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$LayoutParams;)I
    .locals 2

    .line 449
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 450
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 452
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I
    .locals 2

    .line 437
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 438
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 440
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p0

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getMarginTop(Landroid/view/ViewGroup$LayoutParams;)I
    .locals 1

    .line 470
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 471
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 472
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMontserratExtraBoldTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 267
    sget-object v0, Lcom/narvii/util/ViewUtils;->typefaceMontserrat:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "Montserrat-ExtraBold.otf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/narvii/util/ViewUtils;->typefaceMontserrat:Landroid/graphics/Typeface;

    .line 270
    :cond_0
    sget-object p0, Lcom/narvii/util/ViewUtils;->typefaceMontserrat:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static getMontserratExtraLightTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 279
    sget-object v0, Lcom/narvii/util/ViewUtils;->typefaceMontserratLight:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "Montserrat-ExtraLight.otf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/narvii/util/ViewUtils;->typefaceMontserratLight:Landroid/graphics/Typeface;

    .line 282
    :cond_0
    sget-object p0, Lcom/narvii/util/ViewUtils;->typefaceMontserratLight:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static getNVImageView(Landroid/view/View;I)Lcom/narvii/widget/NVImageView;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 232
    instance-of p1, p0, Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_1

    .line 233
    check-cast p0, Lcom/narvii/widget/NVImageView;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getRadisDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 497
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 498
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 220
    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 221
    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static highlightKeywords(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 7

    if-eqz p0, :cond_3

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 324
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 325
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 326
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 327
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 331
    :cond_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x21

    invoke-interface {v1, v4, v2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 334
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 1

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static scrollToBottom(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 354
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 356
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollBy(II)V

    return-void
.end method

.method public static setImageStrokWidth(Landroid/view/View;II)V
    .locals 0

    .line 256
    invoke-static {p0, p1}, Lcom/narvii/util/ViewUtils;->getNVImageView(Landroid/view/View;I)Lcom/narvii/widget/NVImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-float p1, p2

    .line 258
    iput p1, p0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 259
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public static setImageStrokeColor(Landroid/view/View;II)V
    .locals 0

    .line 248
    invoke-static {p0, p1}, Lcom/narvii/util/ViewUtils;->getNVImageView(Landroid/view/View;I)Lcom/narvii/widget/NVImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 250
    iput p2, p0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 251
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public static setMarginBottom(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMarginBottom(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 407
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 408
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static setMarginBottom(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1

    .line 374
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 375
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 376
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 2

    .line 426
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 427
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 429
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setMarginStart(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 395
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 396
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 2

    .line 363
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 364
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 366
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setMarginTop(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMarginTop(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 419
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginTop(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 420
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static setMarginTop(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1

    .line 381
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 382
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 383
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method public static setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMontserratExtraBoldTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static setMontserratExtraLightTypeface(Landroid/widget/TextView;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMontserratExtraLightTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static setPaddingLeft(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public static setText(Landroid/view/View;II)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 69
    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 70
    check-cast p0, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public static setTextColor(Landroid/view/View;II)V
    .locals 0

    .line 241
    invoke-static {p0, p1}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public static setTopBottomOverscrollStretchColor(Landroid/widget/ListView;I)V
    .locals 1

    .line 485
    instance-of v0, p0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    .line 486
    check-cast p0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    :cond_0
    return-void
.end method

.method public static setTopBottomPrefColor(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 1

    .line 492
    sget v0, Lcom/narvii/lib/R$color;->prefs_background:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 493
    invoke-static {p0, p1}, Lcom/narvii/util/ViewUtils;->setTopBottomOverscrollStretchColor(Landroid/widget/ListView;I)V

    return-void
.end method

.method public static show(Landroid/view/View;IZ)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static show(Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static underlineTextView(Landroid/widget/TextView;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 342
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 343
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static visible(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-static {p0, p1, v0}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static visible(Landroid/view/View;ZZ)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 211
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
