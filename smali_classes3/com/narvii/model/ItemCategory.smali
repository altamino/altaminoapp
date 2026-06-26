.class public Lcom/narvii/model/ItemCategory;
.super Lcom/narvii/model/NVObject;
.source "ItemCategory.java"


# instance fields
.field public author:Lcom/narvii/model/User;

.field public categoryId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public itemsCount:I

.field public label:Ljava/lang/String;

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public parentCategoryId:Ljava/lang/String;

.field public position:I

.field public subcategoriesCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lcom/narvii/model/ItemCategory;

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public objectTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "itemCategory"

    return-object v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uRole()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/model/User;->role:I

    :goto_0
    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
