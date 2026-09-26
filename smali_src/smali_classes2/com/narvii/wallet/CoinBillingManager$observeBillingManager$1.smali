.class final Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/CoinBillingManager;->observeBillingManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lcom/android/billingclient/api/h;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/CoinBillingManager;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/h;

    invoke-virtual {p0, p1}, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->invoke(Lcom/android/billingclient/api/h;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/wallet/CoinBillingManager;->access$setBillingError$p(Lcom/narvii/wallet/CoinBillingManager;Z)V

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 4
    invoke-static {p1}, Lcom/narvii/wallet/CoinBillingManager;->access$queryInAppProductDetails(Lcom/narvii/wallet/CoinBillingManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 5
    invoke-static {v0}, Lcom/narvii/wallet/CoinBillingManager;->access$getBillingError$p(Lcom/narvii/wallet/CoinBillingManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->access$setBillingError$p(Lcom/narvii/wallet/CoinBillingManager;Z)V

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    invoke-static {v1}, Lcom/narvii/wallet/CoinBillingManager;->access$getPendingProduct$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/wallet/Product;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/narvii/wallet/CoinBillingManager;->access$handleBillingResultError(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Lcom/narvii/wallet/Product;)V

    :cond_1
    :goto_0
    return-void
.end method
