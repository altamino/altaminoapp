.class public Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "StoreItemSubscriptionListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/monetization/store/data/StoreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

.field public storeSubscriptionItemList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/monetization/store/data/StoreItem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;->storeSubscriptionItemList:Ljava/util/List;

    return-object v0
.end method
