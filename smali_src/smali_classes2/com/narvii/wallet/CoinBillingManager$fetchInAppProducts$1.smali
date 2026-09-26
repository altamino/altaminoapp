.class public final Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/CoinBillingManager;->fetchInAppProducts(ZLcom/narvii/util/http/ApiResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/wallet/CoinBillingManager;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;",
            "Lcom/narvii/wallet/CoinBillingManager;",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 7
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/ProductListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/ProductListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    const-string v0, "productList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->access$set_productList$p(Lcom/narvii/wallet/CoinBillingManager;Ljava/util/List;)V

    .line 4
    sget-object p1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->isBillingInitialized()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;->this$0:Lcom/narvii/wallet/CoinBillingManager;

    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/CoinBillingManager;->access$queryInAppProductDetails(Lcom/narvii/wallet/CoinBillingManager;)V

    :cond_0
    return-void
.end method
