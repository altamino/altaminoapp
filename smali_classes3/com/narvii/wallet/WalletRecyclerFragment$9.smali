.class Lcom/narvii/wallet/WalletRecyclerFragment$9;
.super Ljava/lang/Object;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5

    .line 1009
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->wallReady:Ljava/lang/Boolean;

    .line 1010
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingAction:Ljava/lang/Object;

    invoke-static {}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1800()Ljava/lang/Integer;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$500(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 1012
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1

    .line 1013
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v0, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->offerWallVendor:Lcom/narvii/wallet/AdsVendor;

    invoke-interface {v0, p1}, Lcom/narvii/wallet/AdsVendor;->openOfferWall(Lcom/narvii/app/NVContext;)Z

    .line 1014
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->wallReady:Ljava/lang/Boolean;

    const-string v0, "membership"

    .line 1016
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 1017
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    const-string v1, "logging"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "type"

    aput-object v4, v1, v3

    const-string v3, "OfferWall"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1018
    iget-object v3, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v3, v3, Lcom/narvii/wallet/WalletRecyclerFragment;->offerWallVendor:Lcom/narvii/wallet/AdsVendor;

    .line 1020
    invoke-interface {v3}, Lcom/narvii/wallet/AdsVendor;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "balance"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 1021
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "WalletAdsStarting"

    .line 1018
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f1185    # 1.9017057E38f

    invoke-static {v1, v2, p1}, Lcom/narvii/util/Utils;->getErrorCodeMessage(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1024
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1100(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    goto :goto_1

    .line 1027
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$9;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1100(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    :goto_1
    return-void
.end method
