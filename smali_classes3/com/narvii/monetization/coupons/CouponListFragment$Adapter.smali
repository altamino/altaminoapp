.class Lcom/narvii/monetization/coupons/CouponListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "CouponListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/coupons/CouponListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/wallet/Coupon;",
        "Lcom/narvii/wallet/CouponListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/coupons/CouponListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/coupons/CouponListFragment;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/narvii/monetization/coupons/CouponListFragment$Adapter;->this$0:Lcom/narvii/monetization/coupons/CouponListFragment;

    const/4 v0, -0x2

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 104
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/coupon/new-user-coupon"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/Coupon;",
            ">;"
        }
    .end annotation

    .line 94
    const-class v0, Lcom/narvii/wallet/Coupon;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0115

    .line 119
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0902f6

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;

    .line 121
    instance-of v0, p1, Lcom/narvii/wallet/Coupon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/wallet/Coupon;

    iget-object p1, p1, Lcom/narvii/wallet/Coupon;->coupon:Lcom/narvii/wallet/CouponDetail;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p3, p1}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->setCouponInfo(Lcom/narvii/wallet/CouponDetail;)V

    :cond_0
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 130
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Source"

    const-string p3, "My Coupons"

    .line 131
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/CouponListResponse;",
            ">;"
        }
    .end annotation

    .line 99
    const-class v0, Lcom/narvii/wallet/CouponListResponse;

    return-object v0
.end method
