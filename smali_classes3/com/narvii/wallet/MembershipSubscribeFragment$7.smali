.class Lcom/narvii/wallet/MembershipSubscribeFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->sendSubProductRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/ProductListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

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

    .line 439
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 440
    iput-object p4, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    .line 441
    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 442
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    check-cast p2, Lcom/narvii/wallet/ProductListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object p2, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 428
    iget-object v0, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->pickProduct(Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 429
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    .line 431
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-boolean v0, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabSetupted:Z

    if-eqz v0, :cond_0

    .line 432
    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    .line 433
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->queryIabInv()V

    :cond_0
    return-void
.end method
