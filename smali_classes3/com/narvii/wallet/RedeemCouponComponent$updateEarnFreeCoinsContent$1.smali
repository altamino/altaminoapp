.class final Lcom/narvii/wallet/RedeemCouponComponent$updateEarnFreeCoinsContent$1;
.super Ljava/lang/Object;
.source "RedeemCouponComponent.kt"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RedeemCouponComponent;->updateEarnFreeCoinsContent()V
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

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$updateEarnFreeCoinsContent$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$updateEarnFreeCoinsContent$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->getGetCoinsPreClickListener()Lcom/narvii/list/ObjectItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$updateEarnFreeCoinsContent$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method
