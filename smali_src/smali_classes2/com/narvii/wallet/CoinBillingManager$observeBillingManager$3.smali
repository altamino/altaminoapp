.class final Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;
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
        "Lcom/narvii/wallet/PurchasesUpdate;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoinBillingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoinBillingManager.kt\ncom/narvii/wallet/CoinBillingManager$observeBillingManager$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,352:1\n1#2:353\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/CoinBillingManager;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/wallet/PurchasesUpdate;

    invoke-virtual {p0, p1}, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->invoke(Lcom/narvii/wallet/PurchasesUpdate;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/wallet/PurchasesUpdate;)V
    .locals 3
    .param p1    # Lcom/narvii/wallet/PurchasesUpdate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getBillingResult()Lcom/android/billingclient/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getBillingResult()Lcom/android/billingclient/api/h;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    invoke-static {v1}, Lcom/narvii/wallet/CoinBillingManager;->access$getPurchasingProduct$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/wallet/Product;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/narvii/wallet/CoinBillingManager;->access$handleBillingResultError(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Lcom/narvii/wallet/Product;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 4
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    invoke-virtual {v2}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->access$setProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;Lcom/narvii/util/dialog/ProgressDialog;)V

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 5
    invoke-static {v0}, Lcom/narvii/wallet/CoinBillingManager;->access$getProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getPurchases()Ljava/util/List;

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    invoke-static {p1}, Lcom/narvii/wallet/CoinBillingManager;->access$queryInAppPurchases(Lcom/narvii/wallet/CoinBillingManager;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 7
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    invoke-virtual {v2}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->access$setProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;Lcom/narvii/util/dialog/ProgressDialog;)V

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 8
    invoke-static {v0}, Lcom/narvii/wallet/CoinBillingManager;->access$getProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getPurchases()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    invoke-static {v0, p1}, Lcom/narvii/wallet/CoinBillingManager;->access$processPurchases(Lcom/narvii/wallet/CoinBillingManager;Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method
