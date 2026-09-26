.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public doPurchase(Lcom/narvii/wallet/Coupon;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/wallet/Coupon;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->j(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/model/IStoreItem;)V

    .line 15
    return-void
.end method
