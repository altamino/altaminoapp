.class public Lcom/narvii/master/MasterTopBar;
.super Landroid/widget/FrameLayout;
.source "MasterTopBar.java"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field contentLanguageListener:Landroid/view/View$OnClickListener;

.field context:Lcom/narvii/app/NVContext;

.field expanded:Z

.field imgStoreEntry:Lcom/narvii/widget/NVImageView;

.field isStandalone:Z

.field private lefeMenus:Landroid/view/View;

.field private rightMenus:Landroid/view/View;

.field searchBarBg:Landroid/view/View;

.field searchBarWithShadow:Landroid/view/ViewGroup;

.field searchIcon:Lcom/narvii/widget/TintButton;

.field searchText:Landroid/widget/TextView;

.field shadow:Landroid/view/View;

.field tvContentLanguage:Landroid/widget/TextView;

.field tvContentLanguageInfo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    .line 57
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/narvii/master/MasterTopBar;->isStandalone:Z

    .line 58
    iget-boolean p2, p0, Lcom/narvii/master/MasterTopBar;->isStandalone:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0b063e

    goto :goto_0

    :cond_1
    const p2, 0x7f0b0354

    :goto_0
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/MasterTopBar;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/MasterTopBar;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/MasterTopBar;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/master/MasterTopBar;->lefeMenus:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public collapse()V
    .locals 17

    move-object/from16 v6, p0

    .line 190
    iget-boolean v0, v6, Lcom/narvii/master/MasterTopBar;->expanded:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 198
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 200
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, v6, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v1, v8

    const v2, 0x73ffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 201
    new-instance v0, Lcom/narvii/master/-$$Lambda$MasterTopBar$uwG3fQjJ-3aMx_Qkt2fJz1YwcyY;

    invoke-direct {v0, v6}, Lcom/narvii/master/-$$Lambda$MasterTopBar$uwG3fQjJ-3aMx_Qkt2fJz1YwcyY;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, v6, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {v2}, Lcom/narvii/widget/TintButton;->getTintColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x4cffffff    # 1.3421772E8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 205
    new-instance v0, Lcom/narvii/master/-$$Lambda$MasterTopBar$qM75gTQX4jnOJZoBTfLsMdCRCq4;

    invoke-direct {v0, v6}, Lcom/narvii/master/-$$Lambda$MasterTopBar$qM75gTQX4jnOJZoBTfLsMdCRCq4;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    iget-boolean v0, v6, Lcom/narvii/master/MasterTopBar;->isStandalone:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v0

    .line 208
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-array v0, v7, [I

    .line 210
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 211
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 212
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->getMarginEnd(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 213
    new-instance v13, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;-><init>(Lcom/narvii/master/MasterTopBar;IIII)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v9

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 230
    iget-object v3, v6, Lcom/narvii/master/MasterTopBar;->lefeMenus:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v2, v6, Lcom/narvii/master/MasterTopBar;->lefeMenus:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v5, v8

    aput v4, v5, v9

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 236
    :cond_3
    iget-object v3, v6, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v7, [F

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v13

    aput v13, v5, v8

    const/4 v13, 0x0

    aput v13, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 237
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v4, v6, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v7, [F

    invoke-virtual {v4}, Landroid/widget/TextView;->getTranslationX()F

    move-result v15

    aput v15, v14, v8

    aput v13, v14, v9

    invoke-static {v4, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 240
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    iget-object v5, v6, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v7, [F

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v15

    aput v15, v14, v8

    const v15, 0x3dcccccd    # 0.1f

    aput v15, v14, v9

    invoke-static {v5, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 245
    iget-object v13, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x12c

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    if-eqz v2, :cond_4

    .line 247
    iget-object v13, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v10, v1, v8

    aput-object v11, v1, v9

    aput-object v12, v1, v7

    aput-object v0, v1, v16

    aput-object v2, v1, v15

    aput-object v3, v1, v14

    const/4 v0, 0x6

    aput-object v4, v1, v0

    const/4 v2, 0x7

    aput-object v5, v1, v2

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x7

    .line 249
    iget-object v1, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v10, v2, v8

    aput-object v11, v2, v9

    aput-object v12, v2, v7

    aput-object v0, v2, v16

    aput-object v3, v2, v15

    aput-object v4, v2, v14

    const/4 v0, 0x6

    aput-object v5, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 251
    :goto_1
    iget-object v0, v6, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 253
    iput-boolean v8, v6, Lcom/narvii/master/MasterTopBar;->expanded:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public expand()V
    .locals 17

    move-object/from16 v0, p0

    .line 97
    iget-boolean v1, v0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    if-eqz v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 109
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 111
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, -0xb5b5b6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 112
    new-instance v3, Lcom/narvii/master/-$$Lambda$MasterTopBar$IRpsqPXA6h4ZuquxtehZwUn5J2c;

    invoke-direct {v3, v0}, Lcom/narvii/master/-$$Lambda$MasterTopBar$IRpsqPXA6h4ZuquxtehZwUn5J2c;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v2, [I

    .line 114
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 115
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 116
    iget-object v8, v0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/util/ViewUtils;->getMarginEnd(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    .line 117
    new-instance v9, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;

    invoke-direct {v9, v0, v6, v8}, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;-><init>(Lcom/narvii/master/MasterTopBar;II)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    new-instance v6, Lcom/narvii/master/MasterTopBar$1;

    invoke-direct {v6, v0}, Lcom/narvii/master/MasterTopBar$1;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v6, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0701d7

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701d9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 144
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, -0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    :goto_0
    iget-object v13, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    add-int/2addr v13, v10

    mul-int v11, v11, v13

    div-int/2addr v11, v2

    .line 145
    iget-object v13, v0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v2, [F

    invoke-virtual {v13}, Landroid/widget/TextView;->getTranslationX()F

    move-result v16

    aput v16, v15, v5

    int-to-float v11, v11

    aput v11, v15, v7

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 146
    new-instance v13, Landroid/view/animation/OvershootInterpolator;

    const v14, 0x3f99999a    # 1.2f

    invoke-direct {v13, v14}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    new-instance v13, Landroid/animation/ArgbEvaluator;

    invoke-direct {v13}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v15, v2, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {v12}, Lcom/narvii/widget/TintButton;->getTintColor()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v15, v7

    invoke-static {v13, v15}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 149
    new-instance v12, Lcom/narvii/master/-$$Lambda$MasterTopBar$4hlPkMaOCtXMsjycEviCmoEJDnI;

    invoke-direct {v12, v0}, Lcom/narvii/master/-$$Lambda$MasterTopBar$4hlPkMaOCtXMsjycEviCmoEJDnI;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v12, v6

    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    sub-int/2addr v12, v6

    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    sub-int/2addr v12, v6

    sub-int/2addr v12, v10

    div-int/2addr v12, v2

    .line 152
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v16, -0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x1

    :goto_1
    sub-int/2addr v12, v9

    mul-int v6, v16, v12

    .line 154
    iget-object v9, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v2, [F

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v13

    aput v13, v12, v5

    int-to-float v6, v6

    aput v6, v12, v7

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 155
    new-instance v9, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v9, v14}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    iget-object v9, v0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v5

    const/4 v13, 0x0

    aput v13, v12, v7

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 158
    new-instance v10, Lcom/narvii/master/MasterTopBar$2;

    invoke-direct {v10, v0}, Lcom/narvii/master/MasterTopBar$2;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    iget-object v10, v0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v2, [F

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v15

    aput v15, v14, v5

    aput v13, v14, v7

    invoke-static {v10, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 167
    new-instance v12, Lcom/narvii/master/MasterTopBar$3;

    invoke-direct {v12, v0}, Lcom/narvii/master/MasterTopBar$3;-><init>(Lcom/narvii/master/MasterTopBar;)V

    invoke-virtual {v10, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    const v13, 0x7f08075f

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v2, [F

    fill-array-data v14, :array_1

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 180
    iget-object v13, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x190

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 181
    iget-object v13, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v1, v8, v5

    aput-object v4, v8, v7

    aput-object v3, v8, v2

    const/4 v1, 0x3

    aput-object v9, v8, v1

    const/4 v1, 0x4

    aput-object v10, v8, v1

    const/4 v1, 0x5

    aput-object v11, v8, v1

    const/4 v1, 0x6

    aput-object v6, v8, v1

    const/4 v1, 0x7

    aput-object v12, v8, v1

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    iget-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    iput-boolean v7, v0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic lambda$collapse$3$MasterTopBar(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$collapse$4$MasterTopBar(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-void
.end method

.method public synthetic lambda$collapse$5$MasterTopBar(IIIILandroid/animation/ValueAnimator;)V
    .locals 1

    sub-int/2addr p1, p2

    .line 214
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int p1, p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    sub-int/2addr p3, p4

    .line 215
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int p3, p3, p2

    int-to-float p2, p3

    div-float/2addr p2, v0

    int-to-float p3, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 216
    iget-object p3, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p4, 0x0

    .line 217
    invoke-virtual {p3, p1, p4, p2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 218
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x11

    if-lt p4, p5, :cond_0

    .line 219
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 220
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic lambda$expand$0$MasterTopBar(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$expand$1$MasterTopBar(IILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 118
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int v0, v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 119
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int p3, p3, p2

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    .line 120
    iget-object p3, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p3, p1, v0, p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 123
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 124
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic lambda$expand$2$MasterTopBar(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0909dd

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/view/ViewGroup;

    const v0, 0x7f0909db

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    const v0, 0x7f0909e2

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    const v0, 0x7f090560

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090a1c

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    const v0, 0x7f090982

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    const v0, 0x7f090ac0

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/MasterTopBar;->lefeMenus:Landroid/view/View;

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->imgStoreEntry:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090317

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguageInfo:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguageInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/narvii/master/MasterTopBar;->contentLanguageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090315

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguage:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->imgStoreEntry:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    const-string v1, "assets://globalStoreIcon.webp"

    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setContentLanguageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/narvii/master/MasterTopBar;->contentLanguageListener:Landroid/view/View$OnClickListener;

    .line 85
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguageInfo:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->contentLanguageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
