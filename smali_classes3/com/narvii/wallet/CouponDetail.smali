.class public final Lcom/narvii/wallet/CouponDetail;
.super Ljava/lang/Object;
.source "CouponDetail.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCouponDetail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouponDetail.kt\ncom/narvii/wallet/CouponDetail\n*L\n1#1,22:1\n*E\n"
.end annotation


# instance fields
.field public couponValue:Ljava/lang/Integer;

.field public scopeDesc:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCouponScopeDesc()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/wallet/CouponDetail;->scopeDesc:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getCouponTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/wallet/CouponDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/wallet/CouponDetail;->couponValue:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

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
