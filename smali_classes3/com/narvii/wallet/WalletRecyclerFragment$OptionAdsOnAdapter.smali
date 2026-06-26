.class Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionAdsOnAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter$OptionAdsOnViewHolder;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 714
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "account"

    .line 715
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 721
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter$OptionAdsOnViewHolder;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter$OptionAdsOnViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
