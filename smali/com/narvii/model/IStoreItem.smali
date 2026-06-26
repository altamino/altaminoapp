.class public interface abstract Lcom/narvii/model/IStoreItem;
.super Ljava/lang/Object;
.source "IStoreItem.java"

# interfaces
.implements Lcom/narvii/model/IBaseProduct;


# virtual methods
.method public abstract availableInAnyStore()Z
.end method

.method public abstract availableNdcIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;
.end method

.method public abstract getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;
.end method

.method public abstract getStoreIcon()Ljava/lang/String;
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract isActivated()Z
.end method

.method public abstract isNew()Z
.end method

.method public abstract isTotalOwned()Z
.end method

.method public abstract objectType()I
.end method

.method public abstract setActivated(Z)V
.end method

.method public abstract setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V
.end method
