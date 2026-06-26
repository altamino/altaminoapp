.class public final Lcom/narvii/wallet/Coupon;
.super Lcom/narvii/model/NVObject;
.source "Coupon.kt"

# interfaces
.implements Lcom/narvii/list/DateCompare;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoupon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Coupon.kt\ncom/narvii/wallet/Coupon\n*L\n1#1,61:1\n*E\n"
.end annotation


# instance fields
.field public coupon:Lcom/narvii/wallet/CouponDetail;

.field public couponMappingId:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public hasProperValue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/narvii/wallet/Coupon;->hasProperValue:Z

    return-void
.end method


# virtual methods
.method public getCompareDate()Ljava/util/Date;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/wallet/Coupon;->createdTime:Ljava/util/Date;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCouponScopeDesc()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/wallet/Coupon;->coupon:Lcom/narvii/wallet/CouponDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/wallet/CouponDetail;->getCouponScopeDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getCouponTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/wallet/Coupon;->coupon:Lcom/narvii/wallet/CouponDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/wallet/CouponDetail;->getCouponTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/wallet/Coupon;->coupon:Lcom/narvii/wallet/CouponDetail;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/wallet/Coupon;->couponMappingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
