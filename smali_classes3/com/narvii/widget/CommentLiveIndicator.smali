.class public Lcom/narvii/widget/CommentLiveIndicator;
.super Landroid/widget/FrameLayout;
.source "CommentLiveIndicator.java"


# static fields
.field private static final DOT_ALPHA_STEP_DURATION:I = 0x190

.field private static final DOT_COUNT:I = 0x4


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private dot1:Landroid/view/View;

.field private dot2:Landroid/view/View;

.field private dot3:Landroid/view/View;

.field private dot4:Landroid/view/View;

.field private dotList:[Landroid/view/View;

.field private indicator0:Landroid/widget/ImageView;

.field private indicator1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CommentLiveIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b04c2

    .line 49
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/CommentLiveIndicator;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/CommentLiveIndicator;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/CommentLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/CommentLiveIndicator;)[Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09058e

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    const v0, 0x7f09058f

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    const v0, 0x7f09036c

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot1:Landroid/view/View;

    const v0, 0x7f09036d

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot2:Landroid/view/View;

    const v0, 0x7f09036e

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot3:Landroid/view/View;

    const v0, 0x7f09036f

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot4:Landroid/view/View;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 66
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot1:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot2:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot3:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 70
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot4:Landroid/view/View;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-void
.end method

.method private initViews()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 132
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method getDotAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 264
    iget-object v4, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    aget-object v4, v4, v2

    new-array v4, v3, [F

    new-array v5, v3, [F

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3e800000    # 0.25f

    if-le v6, v2, :cond_0

    sub-int v9, v6, v2

    int-to-float v9, v9

    mul-float v9, v9, v8

    goto :goto_2

    :cond_0
    sub-int v9, v2, v6

    int-to-float v9, v9

    mul-float v9, v9, v8

    sub-float v9, v7, v9

    .line 269
    :goto_2
    aput v9, v4, v6

    if-lt v6, v2, :cond_1

    sub-int v7, v6, v2

    int-to-float v7, v7

    mul-float v7, v7, v8

    add-float/2addr v8, v7

    goto :goto_3

    :cond_1
    sub-int v9, v2, v6

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v8

    sub-float v8, v7, v9

    .line 270
    :goto_3
    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 272
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 273
    new-instance v6, Lcom/narvii/widget/CommentLiveIndicator$6;

    invoke-direct {v6, p0, v5, v4}, Lcom/narvii/widget/CommentLiveIndicator$6;-><init>(Lcom/narvii/widget/CommentLiveIndicator;[F[F)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x190

    .line 285
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDotsPreviewAnimators()Landroid/animation/AnimatorSet;
    .locals 6

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 215
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    .line 216
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    new-instance v4, Lcom/narvii/widget/CommentLiveIndicator$4;

    invoke-direct {v4, p0, v2}, Lcom/narvii/widget/CommentLiveIndicator$4;-><init>(Lcom/narvii/widget/CommentLiveIndicator;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    new-instance v4, Lcom/narvii/widget/CommentLiveIndicator$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/narvii/widget/CommentLiveIndicator$5;-><init>(Lcom/narvii/widget/CommentLiveIndicator;ILandroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getIndi0ScaleAnimator()Landroid/animation/Animator;
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 147
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x32

    .line 148
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/animation/Animator;

    .line 149
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 150
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    new-instance v1, Lcom/narvii/widget/CommentLiveIndicator$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/CommentLiveIndicator$2;-><init>(Lcom/narvii/widget/CommentLiveIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getIndi1ScaleAnimator()Landroid/animation/Animator;
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 177
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/high16 v0, 0x41d80000    # 27.0f

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 177
    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 178
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 179
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 180
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 181
    iget-object v3, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 182
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xc8

    .line 183
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x32

    .line 184
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    aput-object v3, v2, v1

    .line 185
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    new-instance v1, Lcom/narvii/widget/CommentLiveIndicator$3;

    invoke-direct {v1, p0}, Lcom/narvii/widget/CommentLiveIndicator$3;-><init>(Lcom/narvii/widget/CommentLiveIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initView()V

    return-void
.end method

.method public startAnimation()V
    .locals 7

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initViews()V

    .line 96
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 97
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getIndi0ScaleAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getIndi1ScaleAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getDotsPreviewAnimators()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getDotAnimation()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 102
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/narvii/widget/CommentLiveIndicator$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/CommentLiveIndicator$1;-><init>(Lcom/narvii/widget/CommentLiveIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
