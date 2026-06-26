.class final Lcom/narvii/monetization/store/view/TippingRippleView$1;
.super Ljava/lang/Object;
.source "TippingRippleView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingRippleView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/view/TippingRippleView;->access$setRate$p(Lcom/narvii/monetization/store/view/TippingRippleView;F)V

    .line 34
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingRippleView;->access$isHalfPlayCalled$p(Lcom/narvii/monetization/store/view/TippingRippleView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingRippleView;->access$getRate$p(Lcom/narvii/monetization/store/view/TippingRippleView;)F

    move-result p1

    const v0, 0x3f0ccccd    # 0.55f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/view/TippingRippleView;->access$setHalfPlayCalled$p(Lcom/narvii/monetization/store/view/TippingRippleView;Z)V

    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingRippleView;->getOnHalfPlayed()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView$1;->this$0:Lcom/narvii/monetization/store/view/TippingRippleView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 33
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
