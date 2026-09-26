.class Lcom/narvii/wallet/MembershipSubscribeFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

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
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->L(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/util/List;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p4}, Lcom/narvii/wallet/MembershipSubscribeFragment;->K(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->M(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 22
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
    check-cast p2, Lcom/narvii/wallet/ProductListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 2
    iget-object v0, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->L(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->C(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/Product;

    move-result-object v0

    iget-object p2, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    invoke-static {p1, v0, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->Y(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->M(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->K(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    return-void
.end method
