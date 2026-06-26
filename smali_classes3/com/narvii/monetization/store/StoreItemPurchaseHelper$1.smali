.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;
.super Ljava/lang/Object;
.source "StoreItemPurchaseHelper.java"

# interfaces
.implements Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPurchase(Lcom/narvii/wallet/Coupon;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$000(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/wallet/Coupon;)V

    .line 72
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$200(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/model/IStoreItem;)V

    return-void
.end method
