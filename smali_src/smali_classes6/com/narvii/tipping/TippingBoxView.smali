.class public Lcom/narvii/tipping/TippingBoxView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0d0749

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/tipping/TippingBoxView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/tipping/TippingBoxView;->isAuthor:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/tipping/TippingBoxView;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/tipping/TippingBoxView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/tipping/TippingBoxView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/tipping/TippingBoxView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBoxView;->updateTranYAnimator()V

    return-void
.end method

.method private updateTranYAnimator()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingBoxView;->isAuthor:Z

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingBoxView;->dataSet:Z

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f07051c

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    const v2, 0x7f07051b

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    .line 52
    .line 53
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 54
    const/4 v4, 0x2

    .line 55
    .line 56
    new-array v5, v4, [F

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    .line 60
    aput v7, v5, v6

    .line 61
    sub-int/2addr v1, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const/high16 v6, 0x40a00000    # 5.0f

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 71
    move-result v0

    .line 72
    sub-int/2addr v1, v0

    .line 73
    int-to-float v0, v1

    .line 74
    const/4 v1, 0x1

    .line 75
    .line 76
    aput v0, v5, v1

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 83
    .line 84
    const-wide/16 v1, 0x320

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 90
    const/4 v1, -0x1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 104
    move-result v0

    .line 105
    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 114
    move-result v0

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    return-void

    .line 118
    .line 119
    :cond_2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 131
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBoxView;->updateTranYAnimator()V

    .line 7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

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
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 11
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e83

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->tipAuthor:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0339

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->coins:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a033d

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->coinsLayout:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0fca

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a0fcc

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0fd0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerStar:Lcom/narvii/widget/NVImageView;

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0fcb

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoinLayout:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a0166

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoinLayout:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a0165

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoin:Landroid/view/View;

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0a0209

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->slot:Landroid/view/View;

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0a0207

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->bg:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0a0e84

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/tipping/TippingBoxView;->root:Landroid/view/View;

    .line 118
    return-void
.end method

.method public setInfo(ZIZ)V
    .locals 5

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingBoxView;->isAuthor:Z

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/tipping/TippingBoxView;->coinsGot:I

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/tipping/TippingBoxView;->dataSet:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->tipAuthor:Landroid/widget/TextView;

    .line 10
    .line 11
    xor-int/lit8 v2, p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->coinsLayout:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoinLayout:Landroid/view/View;

    .line 22
    .line 23
    xor-int/lit8 v2, p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoinLayout:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->authorCoin:Landroid/view/View;

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    if-lez p2, :cond_0

    .line 39
    move v3, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v3, v2

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {v1, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->root:Landroid/view/View;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    move v3, v2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    const/high16 v4, 0x40c00000    # 6.0f

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView;->coins:Landroid/widget/TextView;

    .line 66
    .line 67
    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 68
    int-to-long v3, p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    .line 78
    .line 79
    xor-int/lit8 v1, p1, 0x1

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/tipping/TippingBoxView;->viewerStar:Lcom/narvii/widget/NVImageView;

    .line 85
    xor-int/2addr p1, v0

    .line 86
    .line 87
    .line 88
    invoke-static {p2, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->viewerStar:Lcom/narvii/widget/NVImageView;

    .line 91
    .line 92
    const-string p2, "assets://tipping_star.webp"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->bg:Landroid/view/View;

    .line 98
    .line 99
    if-eqz p3, :cond_2

    .line 100
    .line 101
    .line 102
    const p2, 0x7f0809f1

    .line 103
    goto :goto_2

    .line 104
    .line 105
    .line 106
    :cond_2
    const p2, 0x7f0809f0

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView;->slot:Landroid/view/View;

    .line 112
    .line 113
    if-eqz p3, :cond_3

    .line 114
    .line 115
    .line 116
    const p2, 0x7f0809f3

    .line 117
    goto :goto_3

    .line 118
    .line 119
    .line 120
    :cond_3
    const p2, 0x7f0809f2

    .line 121
    .line 122
    .line 123
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBoxView;->updateTranYAnimator()V

    .line 127
    return-void
.end method

.method public startTipSuccessAnimation()V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/narvii/tipping/TippingBoxView;->runnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->tranYAnimator:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    const v2, 0x7f07051b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const/high16 v3, 0x40400000    # 3.0f

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 56
    move-result v2

    .line 57
    add-int/2addr v1, v2

    .line 58
    .line 59
    iget-object v2, v0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    .line 60
    .line 61
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 62
    const/4 v4, 0x2

    .line 63
    .line 64
    new-array v5, v4, [F

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    .line 68
    aput v7, v5, v6

    .line 69
    int-to-float v1, v1

    .line 70
    const/4 v8, 0x1

    .line 71
    .line 72
    aput v1, v5, v8

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    .line 79
    .line 80
    .line 81
    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    .line 86
    new-instance v5, Lcom/narvii/tipping/TippingBoxView$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v5, v0}, Lcom/narvii/tipping/TippingBoxView$1;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    .line 94
    const-wide/16 v9, 0x12c

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    .line 99
    iget-object v5, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 100
    .line 101
    new-array v9, v4, [F

    .line 102
    .line 103
    aput v1, v9, v6

    .line 104
    .line 105
    aput v7, v9, v8

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    iget-object v3, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 112
    .line 113
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 114
    .line 115
    new-array v7, v4, [F

    .line 116
    .line 117
    .line 118
    fill-array-data v7, :array_0

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    iget-object v7, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 125
    .line 126
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 127
    .line 128
    new-array v10, v4, [F

    .line 129
    .line 130
    .line 131
    fill-array-data v10, :array_1

    .line 132
    .line 133
    .line 134
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 135
    move-result-object v7

    .line 136
    .line 137
    iget-object v9, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 138
    .line 139
    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 140
    .line 141
    new-array v11, v4, [F

    .line 142
    .line 143
    .line 144
    fill-array-data v11, :array_2

    .line 145
    .line 146
    .line 147
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 148
    move-result-object v9

    .line 149
    .line 150
    new-instance v10, Landroid/animation/AnimatorSet;

    .line 151
    .line 152
    .line 153
    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 154
    .line 155
    const-wide/16 v11, 0x258

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 159
    const/4 v11, 0x4

    .line 160
    .line 161
    new-array v12, v11, [Landroid/animation/Animator;

    .line 162
    .line 163
    aput-object v1, v12, v6

    .line 164
    .line 165
    aput-object v3, v12, v8

    .line 166
    .line 167
    aput-object v7, v12, v4

    .line 168
    const/4 v1, 0x3

    .line 169
    .line 170
    aput-object v9, v12, v1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    .line 175
    new-instance v3, Lcom/narvii/tipping/TippingBoxView$2;

    .line 176
    .line 177
    .line 178
    invoke-direct {v3, v0}, Lcom/narvii/tipping/TippingBoxView$2;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    .line 183
    iget-object v3, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 184
    .line 185
    new-array v7, v4, [F

    .line 186
    .line 187
    .line 188
    fill-array-data v7, :array_3

    .line 189
    .line 190
    const-string v9, "rotation"

    .line 191
    .line 192
    .line 193
    invoke-static {v3, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    const-wide/16 v12, 0x96

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 206
    .line 207
    iget-object v7, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 208
    .line 209
    new-array v14, v4, [F

    .line 210
    .line 211
    .line 212
    fill-array-data v14, :array_4

    .line 213
    .line 214
    .line 215
    invoke-static {v7, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 216
    move-result-object v7

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    .line 221
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 222
    .line 223
    .line 224
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 225
    .line 226
    iput-object v9, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 227
    .line 228
    new-array v12, v4, [Landroid/animation/Animator;

    .line 229
    .line 230
    aput-object v3, v12, v6

    .line 231
    .line 232
    aput-object v7, v12, v8

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 236
    .line 237
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 238
    .line 239
    .line 240
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 241
    .line 242
    iget-object v12, v0, Lcom/narvii/tipping/TippingBoxView;->viewerCoin:Landroid/view/View;

    .line 243
    .line 244
    new-array v13, v4, [F

    .line 245
    .line 246
    .line 247
    fill-array-data v13, :array_5

    .line 248
    .line 249
    .line 250
    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 251
    move-result-object v12

    .line 252
    .line 253
    new-instance v13, Lcom/narvii/tipping/TippingBoxView$3;

    .line 254
    .line 255
    .line 256
    invoke-direct {v13, v0}, Lcom/narvii/tipping/TippingBoxView$3;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    .line 261
    const-wide/16 v13, 0xc8

    .line 262
    .line 263
    .line 264
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    move-object v15, v2

    .line 266
    .line 267
    const-wide/16 v1, 0x64

    .line 268
    .line 269
    .line 270
    invoke-virtual {v12, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 271
    .line 272
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->viewerLove:Landroid/view/View;

    .line 273
    .line 274
    new-array v2, v4, [F

    .line 275
    .line 276
    .line 277
    fill-array-data v2, :array_6

    .line 278
    .line 279
    .line 280
    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    new-array v2, v4, [Landroid/animation/Animator;

    .line 284
    .line 285
    aput-object v12, v2, v6

    .line 286
    .line 287
    aput-object v1, v2, v8

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 294
    .line 295
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 296
    .line 297
    .line 298
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 299
    .line 300
    iput-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 301
    .line 302
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 303
    .line 304
    .line 305
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    .line 310
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 311
    const/4 v2, 0x5

    .line 312
    .line 313
    new-array v2, v2, [Landroid/animation/Animator;

    .line 314
    .line 315
    aput-object v15, v2, v6

    .line 316
    .line 317
    aput-object v10, v2, v8

    .line 318
    .line 319
    aput-object v3, v2, v4

    .line 320
    const/4 v3, 0x3

    .line 321
    .line 322
    aput-object v7, v2, v3

    .line 323
    .line 324
    aput-object v9, v2, v11

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 328
    .line 329
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 330
    .line 331
    new-instance v2, Lcom/narvii/tipping/TippingBoxView$4;

    .line 332
    .line 333
    .line 334
    invoke-direct {v2, v0}, Lcom/narvii/tipping/TippingBoxView$4;-><init>(Lcom/narvii/tipping/TippingBoxView;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    .line 339
    iget-object v1, v0, Lcom/narvii/tipping/TippingBoxView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 343
    return-void

    .line 344
    nop

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    :array_3
    .array-data 4
        -0x3e900000    # -15.0f
        0x41700000    # 15.0f
    .end array-data

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    :array_4
    .array-data 4
        0x41700000    # 15.0f
        0x0
    .end array-data

    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
