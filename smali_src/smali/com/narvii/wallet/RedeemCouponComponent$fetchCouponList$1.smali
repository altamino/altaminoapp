.class public final Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RedeemCouponComponent;->fetchCouponList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/CouponListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/RedeemCouponComponent;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/wallet/RedeemCouponComponent;",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/CouponListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->access$setCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;Z)V

    .line 10
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/CouponListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/CouponListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->access$setCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;Z)V

    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/narvii/wallet/CouponListResponse;->getCouponList()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->access$setCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bindCoupons(Ljava/util/ArrayList;)V

    return-void
.end method
