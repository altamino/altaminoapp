.class public Lcom/narvii/monetization/store/data/StoreItemStub;
.super Lcom/narvii/monetization/store/data/StoreItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/data/StoreItem;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/model/RestrictionInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    iput v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 14
    return-void
.end method
