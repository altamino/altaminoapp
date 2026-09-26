.class public interface abstract Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/RedeemCouponComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRedeemCouponCallback"
.end annotation


# virtual methods
.method public abstract onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V
    .param p1    # Lcom/narvii/model/IBaseProduct;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/Coupon;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
