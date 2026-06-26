.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TippingFeedbackView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinMotionAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
