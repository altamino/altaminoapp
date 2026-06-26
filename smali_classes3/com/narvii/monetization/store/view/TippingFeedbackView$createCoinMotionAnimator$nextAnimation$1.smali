.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TippingFeedbackView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->invoke(F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f2aaaab

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;Z)V

    .line 310
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinTextAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 311
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$isHighEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCofettiView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/cofetti/CofettiView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/cofetti/CofettiView;->fire()V

    :cond_0
    return-void
.end method
