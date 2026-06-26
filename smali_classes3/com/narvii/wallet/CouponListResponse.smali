.class public final Lcom/narvii/wallet/CouponListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "CouponListResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/wallet/Coupon;",
        ">;"
    }
.end annotation


# instance fields
.field private couponList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "couponMappingList"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/wallet/Coupon;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCouponList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/narvii/wallet/CouponListResponse;->couponList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Coupon;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/wallet/CouponListResponse;->couponList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setCouponList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/narvii/wallet/CouponListResponse;->couponList:Ljava/util/ArrayList;

    return-void
.end method
