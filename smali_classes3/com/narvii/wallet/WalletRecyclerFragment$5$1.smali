.class Lcom/narvii/wallet/WalletRecyclerFragment$5$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment$5;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/AdsVideoStatsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$5;Ljava/lang/Class;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 443
    check-cast p2, Lcom/narvii/wallet/AdsVideoStatsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/AdsVideoStatsResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/AdsVideoStatsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 447
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->isTagInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object p1, p1, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$5$1$1;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$5$1;Lcom/narvii/wallet/AdsVideoStatsResponse;)V

    invoke-static {p1, v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$702(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 466
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$5$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$5;

    iget-object p1, p1, Lcom/narvii/wallet/WalletRecyclerFragment$5;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$700(Lcom/narvii/wallet/WalletRecyclerFragment;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
