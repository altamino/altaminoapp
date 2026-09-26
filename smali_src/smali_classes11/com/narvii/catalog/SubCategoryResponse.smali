.class Lcom/narvii/catalog/SubCategoryResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# instance fields
.field public childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

.field public itemCategory:Lcom/narvii/model/ItemCategory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getItemListResponse()Lcom/narvii/model/api/ItemListResponse;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/api/ItemListResponse;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/api/ItemListResponse;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/model/api/ApiResponse;->duration:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/model/api/ApiResponse;->duration:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/narvii/catalog/SubCategoryChildWrapper;->itemList:Ljava/util/List;

    .line 26
    .line 27
    iput-object v2, v0, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/catalog/SubCategoryChildWrapper;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/model/api/ItemListResponse;->inMyFavoritesMapping:Ljava/util/Map;

    .line 32
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v1, "itemCategory"

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryChildWrapper;->type:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryChildWrapper;->type:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method
