.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;
.super Ljava/lang/Object;
.source "TippingFeedbackView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const-string v0, "it"

    .line 240
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 241
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x5a

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 242
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .line 240
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
