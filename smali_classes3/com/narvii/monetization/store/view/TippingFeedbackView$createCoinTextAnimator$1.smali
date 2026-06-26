.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;
.super Ljava/lang/Object;
.source "TippingFeedbackView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTippingFeedbackView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TippingFeedbackView.kt\ncom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1\n*L\n1#1,430:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "it"

    .line 333
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 334
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 335
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinCountIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, -0x28

    int-to-float v3, v3

    mul-float v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 338
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinCountIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 339
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinCountIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 341
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinCountTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    .line 342
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinCountTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    .line 333
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
