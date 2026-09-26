.class Lcom/narvii/wallet/PurchaseCoinFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/wallet/PurchaseCoinFragment;->t(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/wallet/PurchaseCoinFragment;->y(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->r(Lcom/narvii/wallet/PurchaseCoinFragment;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p4}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 30
    const/4 p2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->v(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V

    .line 34
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

    .line 1
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/wallet/PurchaseCoinFragment;->t(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->y(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 4
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->s(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/wallet/AdsVideoStats;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->q(Lcom/narvii/wallet/PurchaseCoinFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->r(Lcom/narvii/wallet/PurchaseCoinFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->x(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 9
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->v(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V

    :cond_1
    return-void
.end method
