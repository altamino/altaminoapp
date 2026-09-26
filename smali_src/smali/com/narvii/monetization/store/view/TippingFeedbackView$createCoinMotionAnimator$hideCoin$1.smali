.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


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
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 2
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 3
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinShinyIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
