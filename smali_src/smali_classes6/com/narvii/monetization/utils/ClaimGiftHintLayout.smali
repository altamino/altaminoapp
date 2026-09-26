.class public Lcom/narvii/monetization/utils/ClaimGiftHintLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field hasBackground:Z

.field isSmall:Z

.field private isVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/narvii/amino/R$styleable;->ClaimCoinHintLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->hasBackground:Z

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isSmall:Z

    .line 6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p2, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isSmall:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0d04b2

    goto :goto_0

    :cond_0
    const p2, 0x7f0d04b1

    .line 7
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    return p0
.end method

.method private displayAnimation(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    return-void

    .line 19
    .line 20
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 24
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0666

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/widget/PressedFrameLayout;

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->hasBackground:Z

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    .line 35
    const v2, 0x7f0801f1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    const v2, 0x7f0801f0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isSmall:Z

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :goto_1
    const v0, 0x7f0a0302

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x2

    .line 68
    .line 69
    new-array v2, v1, [F

    .line 70
    .line 71
    .line 72
    fill-array-data v2, :array_0

    .line 73
    .line 74
    const-string v5, "rotation"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    const-wide/16 v6, 0x64

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 90
    .line 91
    new-array v3, v1, [F

    .line 92
    .line 93
    .line 94
    fill-array-data v3, :array_1

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 104
    .line 105
    .line 106
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .line 108
    iput-object v5, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    new-array v1, v1, [Landroid/animation/Animator;

    .line 111
    .line 112
    aput-object v2, v1, v4

    .line 113
    const/4 v2, 0x1

    .line 114
    .line 115
    aput-object v3, v1, v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    const/high16 v2, 0x41200000    # 10.0f

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 128
    move-result v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    const/high16 v2, 0x41f00000    # 30.0f

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 141
    move-result v1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 150
    .line 151
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 152
    .line 153
    new-instance v1, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, p0}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;-><init>(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    return-void

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    :array_0
    .array-data 4
        -0x3f400000    # -6.0f
        0x40c00000    # 6.0f
    .end array-data

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    :array_1
    .array-data 4
        0x40c00000    # 6.0f
        0x0
    .end array-data
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    .line 15
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->displayAnimation(I)V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    and-int/2addr p1, v0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->isVisible:Z

    .line 17
    return-void
.end method

.method public setBackgroundResource(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0666

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    move p1, p2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    :cond_1
    return-void
.end method
