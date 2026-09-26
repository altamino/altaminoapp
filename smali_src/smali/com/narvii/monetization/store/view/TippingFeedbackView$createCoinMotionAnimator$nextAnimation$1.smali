.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Float;",
        "Lw7/l0;",
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

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->invoke(F)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 2
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f2aaaab

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;Z)V

    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 4
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinTextAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$isHighEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 6
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCofettiView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/cofetti/CofettiView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/cofetti/CofettiView;->fire()V

    :cond_0
    return-void
.end method
