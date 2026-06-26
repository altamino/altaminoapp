.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "TippingFeedbackView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/Spring;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 179
    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->previousValue:F

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 185
    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->previousValue:F

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->fireworkTriggered:Z

    .line 187
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->hasComeToMaxScale:Z

    .line 188
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 214
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$isLowEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinTextAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouFlipAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 5

    .line 192
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    if-eqz p1, :cond_4

    .line 193
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 194
    iget-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->hasComeToMaxScale:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 197
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 198
    iget-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->fireworkTriggered:Z

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getFireworksIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$webpStart(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;)V

    .line 200
    iput-boolean v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->fireworkTriggered:Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 204
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 205
    iput-boolean v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->hasComeToMaxScale:Z

    .line 208
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v3, 0x8

    int-to-float v3, v3

    int-to-float v1, v1

    sub-float v4, p1, v1

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v4}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getScaleX()F

    move-result v4

    cmpg-float v4, v4, v2

    if-nez v4, :cond_2

    const v4, 0x400ccccd    # 2.2f

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    mul-float v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setRotation(F)V

    .line 209
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v3}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarTranslationXBeforeAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)F

    move-result v3

    sub-float/2addr v1, p1

    mul-float v3, v3, v1

    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScaleX()F

    move-result p1

    cmpg-float p1, p1, v2

    if-nez p1, :cond_3

    const v2, 0x3ecccccd    # 0.4f

    :cond_3
    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    return-void
.end method
