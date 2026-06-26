.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TippingFeedbackView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;
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

    .line 380
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hide()V

    .line 383
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->getOnDismiss()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
