.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TippingFeedbackView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $startCallback:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;->$startCallback:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 293
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;->$startCallback:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
