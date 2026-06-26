.class Lcom/narvii/catalog/SubCategoryResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "CategoryListAdapter.java"


# instance fields
.field public childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

.field public itemCategory:Lcom/narvii/model/ItemCategory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemListResponse()Lcom/narvii/model/api/ItemListResponse;
    .locals 3

    .line 342
    new-instance v0, Lcom/narvii/model/api/ItemListResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/ItemListResponse;-><init>()V

    .line 343
    iget v1, p0, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    iput v1, v0, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 344
    iget-object v1, p0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lcom/narvii/model/api/ApiResponse;->duration:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/api/ApiResponse;->duration:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    iget-object v2, v1, Lcom/narvii/catalog/SubCategoryChildWrapper;->itemList:Ljava/util/List;

    iput-object v2, v0, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    .line 348
    iget-object v1, v1, Lcom/narvii/catalog/SubCategoryChildWrapper;->inMyFavoritesMapping:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/narvii/model/api/ItemListResponse;->inMyFavoritesMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getSubCategoryList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryChildWrapper;->type:Ljava/lang/String;

    const-string v1, "itemCategory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    invoke-virtual {v0, p1}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 336
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryChildWrapper;->type:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
