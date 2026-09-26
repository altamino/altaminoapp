.class public final Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/CoinBillingManager;->handleConsumablePurchases(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $consumables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Lcom/android/billingclient/api/Purchase;

.field final synthetic this$0:Lcom/narvii/wallet/CoinBillingManager;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/wallet/CoinBillingManager;",
            "Lcom/android/billingclient/api/Purchase;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/WalletResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->$it:Lcom/android/billingclient/api/Purchase;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->$consumables:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/CoinBillingManager;->access$getProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    const-string p4, ""

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p1, p4}, Lcom/narvii/wallet/CoinBillingManager;->access$showErrorAlert(Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/WalletResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 2
    invoke-static {p1}, Lcom/narvii/wallet/CoinBillingManager;->access$getProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinBillingManager;->getOnWalletChangedLive()La;

    move-result-object p1

    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, La;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 4
    invoke-static {p1}, Lcom/narvii/wallet/CoinBillingManager;->access$getNvContext$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "membership"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    iget-object p2, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->$it:Lcom/android/billingclient/api/Purchase;

    .line 6
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getSkus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;->$consumables:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 7
    invoke-static {p1, p2, v0}, Lcom/narvii/wallet/CoinBillingManager;->access$handleConsumablePurchase(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Z)V

    return-void
.end method
