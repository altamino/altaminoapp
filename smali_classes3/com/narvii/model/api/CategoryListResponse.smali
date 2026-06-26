.class public Lcom/narvii/model/api/CategoryListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "CategoryListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/ItemCategory;",
        ">;"
    }
.end annotation


# instance fields
.field public allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

.field public itemCategoryList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/ItemCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
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
.method public getCategory(Ljava/lang/String;)Lcom/narvii/model/ItemCategory;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/narvii/model/api/CategoryListResponse;->itemCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ItemCategory;

    .line 28
    iget-object v2, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRootCategory()Lcom/narvii/model/ItemCategory;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/narvii/model/api/CategoryListResponse;->itemCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ItemCategory;

    .line 54
    iget-object v2, v1, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubCategoryList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 37
    iget-object v0, p0, Lcom/narvii/model/api/CategoryListResponse;->itemCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 38
    iget-object v3, v2, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public isLeafCategory(Ljava/lang/String;)Z
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/narvii/model/api/CategoryListResponse;->itemCategoryList:Ljava/util/List;

    return-object v0
.end method
