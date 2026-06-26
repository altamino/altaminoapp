.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TippingFeedbackView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createWebpWrapAnimator(Lcom/narvii/widget/NVImageView;JLkotlin/jvm/functions/Function0;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animationEnd:Lkotlin/jvm/functions/Function0;

.field final synthetic $iv:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/NVImageView;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    iput-object p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$iv:Lcom/narvii/widget/NVImageView;

    iput-object p3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$animationEnd:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$animationEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 394
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$iv:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$iv:Lcom/narvii/widget/NVImageView;

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$webpStart(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
