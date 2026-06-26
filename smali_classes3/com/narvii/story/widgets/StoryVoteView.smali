.class public Lcom/narvii/story/widgets/StoryVoteView;
.super Landroid/widget/FrameLayout;
.source "StoryVoteView.java"


# instance fields
.field private context:Landroid/content/Context;

.field num:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/widgets/StoryVoteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/story/widgets/StoryVoteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x7

    new-array p2, p2, [F

    .line 40
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryVoteView;->num:[F

    .line 36
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryVoteView;->context:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        -0x3dcc0000    # -45.0f
        -0x3e100000    # -30.0f
        -0x3e600000    # -20.0f
        0x0
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42340000    # 45.0f
    .end array-data
.end method

.method public static alpha(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 111
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 114
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 116
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static varargs rotation(Landroid/view/View;JJ[F)Landroid/animation/ObjectAnimator;
    .locals 1

    const-string v0, "rotation"

    .line 121
    invoke-static {p0, v0, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 122
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 124
    new-instance p1, Lcom/narvii/story/widgets/StoryVoteView$2;

    invoke-direct {p1}, Lcom/narvii/story/widgets/StoryVoteView$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 81
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 84
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 86
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static translationX(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "translationX"

    .line 91
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 94
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 96
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static translationY(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "translationY"

    .line 101
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 104
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 106
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public prepareAnimation(Landroid/view/MotionEvent;)V
    .locals 12

    .line 43
    new-instance v8, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryVoteView;->context:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryVoteView;->context:Landroid/content/Context;

    const/high16 v1, 0x43020000    # 130.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v9

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 47
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    sub-float/2addr v1, p1

    int-to-float p1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    div-int/lit8 v1, v9, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080327

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v1, 0xc8

    .line 53
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 54
    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3f666666    # 0.9f

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x0

    const-string v1, "scaleX"

    move-object v0, v8

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/narvii/story/widgets/StoryVoteView;->scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    const-string v1, "scaleY"

    move-object v0, v8

    .line 60
    invoke-static/range {v0 .. v7}, Lcom/narvii/story/widgets/StoryVoteView;->scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [F

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/narvii/story/widgets/StoryVoteView;->num:[F

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    const/4 v11, 0x6

    .line 61
    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aget v7, v7, v10

    aput v7, v5, v0

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/narvii/story/widgets/StoryVoteView;->rotation(Landroid/view/View;JJ[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x0

    move-object v0, v8

    .line 62
    invoke-static/range {v0 .. v6}, Lcom/narvii/story/widgets/StoryVoteView;->alpha(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x96

    const-string v1, "scaleX"

    move-object v0, v8

    .line 63
    invoke-static/range {v0 .. v7}, Lcom/narvii/story/widgets/StoryVoteView;->scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    const-string v1, "scaleY"

    move-object v0, v8

    .line 64
    invoke-static/range {v0 .. v7}, Lcom/narvii/story/widgets/StoryVoteView;->scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/4 v1, 0x0

    neg-int v0, v9

    mul-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    const-wide/16 v3, 0x320

    const-wide/16 v5, 0x190

    move-object v0, v8

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/narvii/story/widgets/StoryVoteView;->translationY(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    move-object v0, v8

    .line 66
    invoke-static/range {v0 .. v6}, Lcom/narvii/story/widgets/StoryVoteView;->alpha(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    const-wide/16 v4, 0x2bc

    const-wide/16 v6, 0x190

    const-string v1, "scaleX"

    move-object v0, v8

    .line 67
    invoke-static/range {v0 .. v7}, Lcom/narvii/story/widgets/StoryVoteView;->scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    const-string v1, "scaleY"

    move-object v0, v8

    .line 68
    invoke-static/range {v0 .. v7}, Lcom/narvii/story/widgets/StoryVoteView;->scale(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 70
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    new-instance v0, Lcom/narvii/story/widgets/StoryVoteView$1;

    invoke-direct {v0, p0, v8}, Lcom/narvii/story/widgets/StoryVoteView$1;-><init>(Lcom/narvii/story/widgets/StoryVoteView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
