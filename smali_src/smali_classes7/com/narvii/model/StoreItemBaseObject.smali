.class public abstract Lcom/narvii/model/StoreItemBaseObject;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public availableInAnyStore()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public availableInStore(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    :cond_1
    const/4 v1, 0x1

    .line 30
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

    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->availableNdcIds:Ljava/util/List;

    return-object v0
.end method

.method public getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->additionalBenefits:Lcom/narvii/model/AdditionalBenefits;

    return-object v0
.end method

.method public getAvailableDurationInDays()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->getAvailableDurationInDays()I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    return v0
.end method

.method public getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    return-object v0
.end method

.method public getProductPrice(Z)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 7
    const/4 v2, 0x4

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    .line 19
    return p1

    .line 20
    .line 21
    :cond_0
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    return-object v0
.end method

.method public getStoreItemTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x72

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/16 v1, 0x74

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x7a

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_0
    sget v0, Lcom/narvii/lib/R$string;->store_item_type_name_avatar_frame:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    sget v0, Lcom/narvii/lib/R$string;->store_item_type_name_bubble:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_2
    sget v0, Lcom/narvii/lib/R$string;->store_item_type_name_sticker:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public isActivated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    return v0
.end method

.method public isMembershipPrice(Z)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v2, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 8
    const/4 v3, 0x4

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, v0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    move v1, v0

    .line 19
    :cond_0
    return v1
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    return v0
.end method

.method public isTotalOwned()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public isUsable(Z)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    if-eq v1, v3, :cond_1

    .line 18
    const/4 p1, 0x4

    .line 19
    .line 20
    if-ne v1, p1, :cond_2

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v3, 0x0

    .line 53
    :cond_3
    :goto_0
    return v3
.end method

.method public setActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    return-void
.end method

.method public setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    return-void
.end method
