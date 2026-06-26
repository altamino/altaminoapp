.class Lcom/narvii/wallet/WalletRecyclerFragment$11;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;->sendWalletRequest()V
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
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

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

    .line 1282
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1283
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2700(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1264
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$11;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1267
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1268
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2502(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/WalletResponse;)Lcom/narvii/wallet/WalletResponse;

    .line 1269
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-wide v2, v1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    iput-wide v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalCoinsFloat:D

    .line 1270
    iget-boolean v2, v1, Lcom/narvii/wallet/Wallet;->businessCoinsEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->businessCoinsEnabled:Z

    .line 1271
    iget v2, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoins:I

    iput v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoins:I

    .line 1272
    iget-wide v1, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoinsFloat:D

    iput-wide v1, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoinsFloat:D

    .line 1273
    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2600(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    .line 1274
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2500(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->setResponse(Lcom/narvii/wallet/WalletResponse;)V

    .line 1275
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    .line 1276
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1277
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$11;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2700(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    return-void
.end method
