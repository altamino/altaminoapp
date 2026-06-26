.class Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;
.super Ljava/lang/Object;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/AdsVideoStatsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

.field final synthetic val$resp:Lcom/narvii/wallet/AdsVideoStatsResponse;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$5$1;Lcom/narvii/wallet/AdsVideoStatsResponse;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->val$resp:Lcom/narvii/wallet/AdsVideoStatsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->val$resp:Lcom/narvii/wallet/AdsVideoStatsResponse;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/wallet/AdsVideoStatsResponse;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->getResponse()Lcom/narvii/wallet/WalletResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v1, v0, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-eqz v1, :cond_0

    .line 456
    iget-object v2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->val$resp:Lcom/narvii/wallet/AdsVideoStatsResponse;

    iget-object v2, v2, Lcom/narvii/wallet/AdsVideoStatsResponse;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    iput-object v2, v1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 457
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iget-object v1, v1, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object v1, v1, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->setResponse(Lcom/narvii/wallet/WalletResponse;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->val$resp:Lcom/narvii/wallet/AdsVideoStatsResponse;

    iget-object v1, v1, Lcom/narvii/wallet/AdsVideoStatsResponse;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eq v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$802(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/AdsVideoStats;)Lcom/narvii/wallet/AdsVideoStats;

    .line 461
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;->this$2:Lcom/narvii/wallet/WalletRecyclerFragment$5$1;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
