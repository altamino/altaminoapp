.class Lcom/narvii/wallet/PurchaseCoinFragment$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PurchaseCoinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PurchaseCoinFragment;->refreshWallet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/WalletResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/Class;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 2
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

    .line 365
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 366
    invoke-static {v0}, Lcom/narvii/wallet/PurchaseCoinFragment;->access$100(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 367
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 368
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iget-boolean p2, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {p1, p4}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment$5;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 348
    invoke-static {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->access$100(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 349
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-nez p1, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iget-object p1, p1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    iput-object p1, v1, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 356
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iget-object p1, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    .line 357
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iget-boolean p2, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 358
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->access$200(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V

    .line 359
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$5;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iput-boolean p2, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    :cond_1
    return-void
.end method
