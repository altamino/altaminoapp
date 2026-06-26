.class public Lcom/narvii/checkin/CheckInStreakRepairLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckInStreakRepairLayout.java"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

.field checked:Landroid/view/View;

.field light:Landroid/view/View;

.field private tranYAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/checkin/CheckInStreakRepairLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09021e

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/checkin/CheckInStreakBar;

    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    const v0, 0x7f09065b

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    const v0, 0x7f090227

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInStreakBar;->getChildMaxSize()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 47
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 48
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    const v1, 0x7f090562

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0802f0

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 58
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInStreakBar;->getLastNeedFixView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    .line 61
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p2, p3

    iget-object p4, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p2

    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 62
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p2, p3

    iget-object p4, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    iget-object p5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public startFixAnimation(Lcom/narvii/util/Callback;)V
    .locals 9

    .line 67
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInStreakBar;->getLastNeedFixView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v0, v0

    iget-object v5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v0, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 78
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 79
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x190

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 81
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 82
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;-><init>(Lcom/narvii/checkin/CheckInStreakRepairLayout;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 97
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateCells(Ljava/util/List;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->updateCells(Ljava/util/List;)V

    .line 107
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInStreakBar;->getLastNeedFixView()Landroid/view/View;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 109
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    if-eqz p1, :cond_4

    .line 112
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v4, v1

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 114
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 115
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 116
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5

    .line 121
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_5
    :goto_2
    return-void
.end method
