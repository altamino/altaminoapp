.class public Lcom/narvii/model/api/ItemListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "ItemListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public childrenWrapper:Lcom/narvii/model/api/SubCategoryChildWrapper;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/api/SubCategoryChildWrapper;
    .end annotation
.end field

.field public inMyFavoritesMapping:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Ljava/lang/Integer;
        keyAs = Ljava/lang/String;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public itemList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Item;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/narvii/model/api/ItemListResponse;->childrenWrapper:Lcom/narvii/model/api/SubCategoryChildWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/api/SubCategoryChildWrapper;->itemList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    return-object v0
.end method
