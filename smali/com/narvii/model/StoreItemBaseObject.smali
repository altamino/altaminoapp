.class public abstract Lcom/narvii/model/StoreItemBaseObject;
.super Lcom/narvii/model/NVObject;
.source "StoreItemBaseObject.java"

# interfaces
.implements Lcom/narvii/model/IStoreItem;


# instance fields
.field public additionalBenefits:Lcom/narvii/model/AdditionalBenefits;

.field public availableNdcIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isActivated:Z

.field public isNew:Z

.field public ownershipInfo:Lcom/narvii/model/OwnershipInfo;

.field public restrictionInfo:Lcom/narvii/model/RestrictionInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public availableInAnyStore()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public availableInStore(I)Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public availableNdcIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    return-object v0
.end method

.method public getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->additionalBenefits:Lcom/narvii/model/AdditionalBenefits;

    return-object v0
.end method

.method public getAvailableDurationInDays()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->getAvailableDurationInDays()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    return-object v0
.end method

.method public getProductPrice(Z)I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 93
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 94
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    return p1

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    return-object v0
.end method

.method public getStoreItemTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_2

    const/16 v1, 0x74

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_0
    sget v0, Lcom/narvii/lib/R$string;->store_item_type_name_avatar_frame:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :cond_1
    sget v0, Lcom/narvii/lib/R$string;->store_item_type_name_bubble:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :cond_2
    sget v0, Lcom/narvii/lib/R$string;->store_item_type_name_sticker:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isActivated()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    return v0
.end method

.method public isMembershipPrice(Z)Z
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 107
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isNew()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    return v0
.end method

.method public isTotalOwned()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUsable(Z)Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 61
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public setActivated(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    return-void
.end method

.method public setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    return-void
.end method
