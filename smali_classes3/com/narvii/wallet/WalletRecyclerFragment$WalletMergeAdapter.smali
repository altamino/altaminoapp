.class Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalletMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 1179
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1250
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1184
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->onAttach()V

    .line 1185
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2200(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 1190
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2200(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/wallet/WalletResponse;)V
    .locals 7

    .line 1194
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$700(Lcom/narvii/wallet/WalletRecyclerFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$700(Lcom/narvii/wallet/WalletRecyclerFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$600(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$600(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->isTagInvalid()Z

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    .line 1201
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-wide v2, v1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    iput-wide v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalCoinsFloat:D

    .line 1202
    iget-boolean v2, v1, Lcom/narvii/wallet/Wallet;->businessCoinsEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->businessCoinsEnabled:Z

    .line 1203
    iget v2, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoins:I

    iput v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoins:I

    .line 1204
    iget-wide v1, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoinsFloat:D

    iput-wide v1, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoinsFloat:D

    const/4 v1, 0x0

    .line 1206
    invoke-static {v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2302(Lcom/narvii/wallet/WalletRecyclerFragment;Z)Z

    .line 1245
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    return-void
.end method
