.class final Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;
.super Ljava/lang/Object;
.source "RedeemCouponComponent.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RedeemCouponComponent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/RedeemCouponComponent;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RedeemCouponComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getPurchaseLoading$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getPurchaseLoading$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getPurchaseLoadingAnimation$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getRedeemText$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0e40

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getRedeemButton$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 86
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getCallback$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v0}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getToRedeemProduct$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/model/IBaseProduct;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getCouponToUse$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/wallet/Coupon;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;->onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V

    :cond_0
    return-void
.end method
