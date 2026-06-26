.class Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1$1;
.super Ljava/lang/Object;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/AccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    .line 801
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1;

    iget-object p1, p1, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 798
    check-cast p1, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$1$1;->call(Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
