.class Lcom/narvii/wallet/MembershipService$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipService;
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
.field final synthetic this$0:Lcom/narvii/wallet/MembershipService;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipService;Ljava/lang/Class;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 306
    iget-object p2, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    iget-object p3, p2, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    .line 307
    iput-object p1, p2, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

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

    .line 289
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipService$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    iget-object v1, v0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 293
    iput-object v1, v0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    iget-object v0, v0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    .line 297
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    iget-object v0, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-object v0, v0, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    invoke-virtual {p1, v0}, Lcom/narvii/wallet/MembershipService;->updateAvailableCoupon(Lcom/narvii/wallet/CouponDetail;)V

    .line 298
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-object p1, p1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eqz p1, :cond_1

    .line 299
    iget-object p2, p0, Lcom/narvii/wallet/MembershipService$3;->this$0:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p2, p1}, Lcom/narvii/wallet/MembershipService;->updateAdsVideoStats(Lcom/narvii/wallet/AdsVideoStats;)V

    :cond_1
    return-void
.end method
