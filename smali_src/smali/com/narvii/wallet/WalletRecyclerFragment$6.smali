.class Lcom/narvii/wallet/WalletRecyclerFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Landroidx/annotation/Nullable;
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->O(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 9
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    invoke-static {v0, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->L(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/WalletResponse;)V

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 4
    iget-object v1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-wide v1, v1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    invoke-static {v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment;->M(Lcom/narvii/wallet/WalletRecyclerFragment;D)V

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 5
    iget-object v1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-boolean v2, v1, Lcom/narvii/wallet/Wallet;->businessCoinsEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->businessCoinsEnabled:Z

    .line 6
    iget v2, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoins:I

    iput v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoins:I

    .line 7
    iget-wide v1, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoinsFloat:D

    iput-wide v1, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoinsFloat:D

    .line 8
    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->P(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->C(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->F(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->setResponse(Lcom/narvii/wallet/WalletResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 11
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->C(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 12
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->O(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    return-void
.end method
