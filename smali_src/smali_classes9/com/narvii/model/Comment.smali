.class public Lcom/narvii/model/Comment;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;


# static fields
.field public static final COMMENT_TYPE_USER_GENERAL:I = 0x0

.field public static final COMMENT_TYPE_USER_STICKER:I = 0x3


# instance fields
.field public author:Lcom/narvii/model/User;

.field public commentId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public createTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public headCommentId:Ljava/lang/String;

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

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public ndcId:I

.field public parentId:Ljava/lang/String;

.field public parentNdcId:I

.field public parentType:I

.field public stickerId:Ljava/lang/String;

.field public subcommentIsEnd:Z

.field public subcommentStart:I

.field public subcommentStoptime:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation
.end field

.field public subcommentsCount:I

.field public subcommentsPreview:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Comment;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public type:I

.field public votedValue:I

.field public votesSum:I


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

.method public static getParentTypeName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown comment parentType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParentTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/narvii/model/Comment;->getParentTypeName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown comment parentType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getCommentSticker()Lcom/narvii/model/Sticker;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Comment;->type:I

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    return-object v2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Comment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "sticker"

    .line 13
    .line 14
    .line 15
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    .line 26
    const-class v3, Lcom/narvii/model/Sticker;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/model/Sticker;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    move-object v2, v0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :cond_1
    :goto_0
    return-object v2
.end method

.method public getParentTypeName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/narvii/model/Comment;->parentType:I

    .line 5
    invoke-static {v0}, Lcom/narvii/model/Comment;->getParentTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Comment;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Comment;->type:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    return p1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public isLegal()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/Comment;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStickerComment()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/Comment;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

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
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method
