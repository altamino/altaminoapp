.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TippingFeedbackView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 365
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getFadeOutAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$isHighEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 366
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getFadeOutAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 356
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e0009

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->playAudioEffect(Landroid/content/Context;I)V

    .line 358
    :try_start_0
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x12c

    .line 359
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 358
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
