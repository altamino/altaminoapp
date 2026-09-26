.class public Lcom/narvii/model/ItemCategory;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/ItemCategory;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Media;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

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
    iget v0, v0, Lcom/narvii/model/User;->role:I

    .line 9
    :goto_0
    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method
