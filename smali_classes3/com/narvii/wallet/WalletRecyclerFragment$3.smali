.class Lcom/narvii/wallet/WalletRecyclerFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;->onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
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

    .line 331
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$3;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

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

    .line 331
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$3;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$3;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->setResponse(Lcom/narvii/wallet/WalletResponse;)V

    :cond_0
    return-void
.end method
