.class Lcom/narvii/wallet/PurchaseCoinFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PurchaseCoinFragment;->fetchInAppProducts()V
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
.field final synthetic this$0:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

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
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p4}, Lcom/narvii/wallet/PurchaseCoinFragment;->u(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    .line 14
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 3
    iget-object p2, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->w(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->u(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    return-void
.end method
