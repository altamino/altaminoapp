.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private fireworkTriggered:Z

.field private hasComeToMaxScale:Z

.field private previousValue:F

.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 6
    .line 7
    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->previousValue:F

    .line 10
    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/e;)V
    .locals 2
    .param p1    # Lcom/facebook/rebound/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->onSpringActivate(Lcom/facebook/rebound/e;)V

    .line 4
    .line 5
    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->previousValue:F

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->fireworkTriggered:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->hasComeToMaxScale:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x3dcccccd    # 0.1f

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 25
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/e;)V
    .locals 0
    .param p1    # Lcom/facebook/rebound/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->onSpringAtRest(Lcom/facebook/rebound/e;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$isLowEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinTextAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouFlipAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 40
    :goto_0
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 5
    .param p1    # Lcom/facebook/rebound/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->onSpringUpdate(Lcom/facebook/rebound/e;)V

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 9
    move-result-wide v0

    .line 10
    double-to-float p1, v0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->hasComeToMaxScale:Z

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    cmpg-float v0, p1, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v3, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    const v0, 0x3f666666    # 0.9f

    .line 43
    .line 44
    cmpl-float v0, p1, v0

    .line 45
    .line 46
    if-ltz v0, :cond_1

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->fireworkTriggered:Z

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getFireworksIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v3}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$webpStart(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;)V

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->fireworkTriggered:Z

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v3, v2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->hasComeToMaxScale:Z

    .line 83
    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const/16 v3, 0x8

    .line 91
    int-to-float v3, v3

    .line 92
    int-to-float v1, v1

    .line 93
    .line 94
    sub-float v4, p1, v1

    .line 95
    mul-float/2addr v3, v4

    .line 96
    .line 97
    iget-object v4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 98
    .line 99
    .line 100
    invoke-static {v4}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    .line 105
    move-result v4

    .line 106
    .line 107
    cmpg-float v4, v4, v2

    .line 108
    .line 109
    if-nez v4, :cond_2

    .line 110
    .line 111
    .line 112
    const v4, 0x400ccccd    # 2.2f

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v4, v2

    .line 115
    :goto_1
    mul-float/2addr v3, v4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarTranslationXBeforeAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)F

    .line 130
    move-result v3

    .line 131
    sub-float/2addr v1, p1

    .line 132
    mul-float/2addr v3, v1

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 142
    move-result p1

    .line 143
    .line 144
    cmpg-float p1, p1, v2

    .line 145
    .line 146
    if-nez p1, :cond_3

    .line 147
    .line 148
    .line 149
    const v2, 0x3ecccccd    # 0.4f

    .line 150
    :cond_3
    mul-float/2addr v3, v2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 154
    :cond_4
    return-void
.end method
