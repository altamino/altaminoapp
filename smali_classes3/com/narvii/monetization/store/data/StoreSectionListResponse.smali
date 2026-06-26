.class public Lcom/narvii/monetization/store/data/StoreSectionListResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "StoreSectionListResponse.java"


# instance fields
.field public storeSectionList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/monetization/store/data/StoreSection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSectionList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreSection;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreSectionListResponse;->storeSectionList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/store/data/StoreSection;

    .line 26
    iget-object v2, v1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v1, Lcom/narvii/monetization/store/data/StoreSection;->allItemsCount:I

    if-nez v1, :cond_1

    .line 27
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreSectionListResponse;->storeSectionList:Ljava/util/List;

    return-object v0
.end method
