.class Lcom/narvii/wallet/PurchaseCoinFragment$3;
.super Lcom/narvii/wallet/IabPurchaseManager;
.source "PurchaseCoinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PurchaseCoinFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-direct {p0, p2}, Lcom/narvii/wallet/IabPurchaseManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 133
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iput-object p4, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/narvii/wallet/ProductListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-super {p0, p1, p2}, Lcom/narvii/wallet/IabPurchaseManager;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    .line 125
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iget-object p2, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    const/4 p2, 0x0

    .line 126
    iput-object p2, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    return-void
.end method

.method public onQueryInventoryFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Inventory;)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2}, Lcom/narvii/wallet/IabPurchaseManager;->onQueryInventoryFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Inventory;)V

    .line 154
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    return-void
.end method

.method public onWalletResponse(Lcom/narvii/wallet/WalletResponse;)V
    .locals 3

    .line 139
    invoke-super {p0, p1}, Lcom/narvii/wallet/IabPurchaseManager;->onWalletResponse(Lcom/narvii/wallet/WalletResponse;)V

    .line 140
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CoinsList"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 141
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iget-object p1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-wide v1, p1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    iput-wide v1, v0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    .line 142
    invoke-virtual {v0}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    .line 143
    new-instance p1, Lcom/narvii/wallet/PurchaseCoinFragment$3$1;

    invoke-direct {p1, p0}, Lcom/narvii/wallet/PurchaseCoinFragment$3$1;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment$3;)V

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
