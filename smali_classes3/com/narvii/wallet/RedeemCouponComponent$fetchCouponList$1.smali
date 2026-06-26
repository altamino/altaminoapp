.class public final Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "RedeemCouponComponent.kt"


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
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

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

    .line 200
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 201
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->access$setCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 191
    check-cast p2, Lcom/narvii/wallet/CouponListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V
    .locals 1

    .line 193
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 194
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->access$setCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;Z)V

    .line 195
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/wallet/CouponListResponse;->getCouponList()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->access$setCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/util/ArrayList;)V

    .line 196
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->access$getCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bindCoupons(Ljava/util/ArrayList;)V

    return-void
.end method
