.class public interface abstract Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;
.super Ljava/lang/Object;
.source "StoreItemPurchaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurchaseConfirmFragmentEventListener"
.end annotation


# virtual methods
.method public abstract onPurchaseCanceled()V
.end method

.method public abstract onPurchaseFailed()V
.end method

.method public abstract onPurchaseStart()V
.end method

.method public abstract onPurchaseSuccessful(Lcom/narvii/model/NVObject;)V
.end method

.method public abstract onShowPurchaseDialog()V
.end method
