.class public interface abstract Lcom/narvii/wallet/AdsVendor;
.super Ljava/lang/Object;
.source "AdsVendor.java"


# virtual methods
.method public abstract abortOfferWall(Lcom/narvii/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract abortRewardVideo(Lcom/narvii/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRewardVideoLoadTime()J
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract openOfferWall(Lcom/narvii/app/NVContext;)Z
.end method

.method public abstract openRewardVideo(Lcom/narvii/app/NVContext;)Z
.end method

.method public abstract requestOfferWall(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestRewardVideo(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
