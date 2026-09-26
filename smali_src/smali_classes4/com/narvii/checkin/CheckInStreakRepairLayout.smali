.class public Lcom/narvii/checkin/CheckInStreakRepairLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

.field checked:Landroid/view/View;

.field light:Landroid/view/View;

.field private tranYAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 11
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/checkin/CheckInStreakRepairLayout;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 11
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a02d6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/checkin/CheckInStreakBar;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a07df

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a02e1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInStreakBar;->getChildMaxSize()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    .line 48
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 49
    .line 50
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    const v1, 0x7f0a06d5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0803fa

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInStreakBar;->getLastNeedFixView()Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    move-result p1

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x2

    .line 22
    add-int/2addr p2, p1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    move-result p3

    .line 29
    .line 30
    div-int/lit8 p3, p3, 0x2

    .line 31
    .line 32
    sub-int p3, p2, p3

    .line 33
    .line 34
    iget-object p4, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 38
    move-result p4

    .line 39
    .line 40
    iget-object p5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 44
    move-result p5

    .line 45
    .line 46
    div-int/lit8 p5, p5, 0x2

    .line 47
    add-int/2addr p5, p2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 62
    move-result p3

    .line 63
    .line 64
    div-int/lit8 p3, p3, 0x2

    .line 65
    .line 66
    sub-int p3, p2, p3

    .line 67
    .line 68
    iget-object p4, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 72
    move-result p4

    .line 73
    .line 74
    iget-object p5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 78
    move-result p5

    .line 79
    .line 80
    div-int/lit8 p5, p5, 0x2

    .line 81
    add-int/2addr p2, p5

    .line 82
    .line 83
    iget-object p5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    .line 87
    move-result p5

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 91
    :cond_0
    return-void
.end method

.method public startFixAnimation(Lcom/narvii/util/Callback;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInStreakBar;->getLastNeedFixView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 46
    .line 47
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 48
    const/4 v3, 0x2

    .line 49
    .line 50
    new-array v4, v3, [F

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 54
    move-result v5

    .line 55
    const/4 v6, 0x0

    .line 56
    .line 57
    aput v5, v4, v6

    .line 58
    int-to-float v0, v0

    .line 59
    .line 60
    iget-object v5, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    .line 64
    move-result v5

    .line 65
    sub-float/2addr v0, v5

    .line 66
    const/4 v5, 0x1

    .line 67
    .line 68
    aput v0, v4, v5

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 75
    .line 76
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 77
    .line 78
    new-array v4, v3, [F

    .line 79
    .line 80
    .line 81
    fill-array-data v4, :array_0

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    .line 92
    iput-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 93
    .line 94
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    .line 95
    .line 96
    .line 97
    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 103
    .line 104
    const-wide/16 v7, 0x190

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 110
    .line 111
    new-array v3, v3, [Landroid/animation/Animator;

    .line 112
    .line 113
    aput-object v0, v3, v6

    .line 114
    .line 115
    aput-object v1, v3, v5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 121
    .line 122
    new-instance v1, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, p0, p1}, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;-><init>(Lcom/narvii/checkin/CheckInStreakRepairLayout;Lcom/narvii/util/Callback;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_2
    if-eqz p1, :cond_3

    .line 137
    const/4 v0, 0x0

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 141
    :cond_3
    :goto_0
    return-void

    .line 142
    nop

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateCells(Ljava/util/List;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

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
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->updateCells(Ljava/util/List;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInStreakBar;->getLastNeedFixView()Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v3, v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    move v3, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v3, v1

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 57
    .line 58
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 59
    const/4 v3, 0x2

    .line 60
    .line 61
    new-array v4, v3, [F

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    const/high16 v6, 0x40000000    # 2.0f

    .line 68
    .line 69
    .line 70
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 71
    move-result v5

    .line 72
    neg-int v5, v5

    .line 73
    int-to-float v5, v5

    .line 74
    .line 75
    aput v5, v4, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 83
    move-result v1

    .line 84
    int-to-float v1, v1

    .line 85
    .line 86
    aput v1, v4, v2

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 93
    .line 94
    const-wide/16 v0, 0x320

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 100
    const/4 v0, -0x1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 109
    .line 110
    :cond_3
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_4
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 122
    :cond_5
    :goto_2
    return-void
.end method
