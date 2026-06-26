.class final Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;
.super Ljava/lang/Object;
.source "RedeemCouponComponent.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getSuggestedCoupon$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/wallet/Coupon;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getCOUPON_STATUS_AVAILABLE_COUPON$p(Lcom/narvii/wallet/RedeemCouponComponent;)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->access$updateCouponSection(Lcom/narvii/wallet/RedeemCouponComponent;IZ)V

    .line 91
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$updateRedeemPrice(Lcom/narvii/wallet/RedeemCouponComponent;)V

    :cond_0
    return-void
.end method
