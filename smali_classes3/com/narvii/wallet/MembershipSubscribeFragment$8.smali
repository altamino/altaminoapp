.class Lcom/narvii/wallet/MembershipSubscribeFragment$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V
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

    .line 453
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

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

    .line 464
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    .line 465
    iput-object p4, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    .line 466
    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 467
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

    .line 453
    check-cast p2, Lcom/narvii/wallet/ProductListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object p2, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    .line 457
    iget-object v0, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->pickProduct(Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 458
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void
.end method
