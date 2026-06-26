.class public Lcom/narvii/monetization/store/data/StoreItemStub;
.super Lcom/narvii/monetization/store/data/StoreItem;
.source "StoreItemStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/narvii/monetization/store/data/StoreItem;-><init>()V

    .line 14
    new-instance v0, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {v0}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    return-void
.end method
