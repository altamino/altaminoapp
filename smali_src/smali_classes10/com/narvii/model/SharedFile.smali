.class public Lcom/narvii/model/SharedFile;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/DateCompare;
.implements Lcom/narvii/image/BackgroundSource;
.implements Lcom/narvii/media/MediaSelectItem;
.implements Lcom/narvii/model/AuthorGetter;


# instance fields
.field public author:Lcom/narvii/model/User;

.field public commentsCount:I

.field public coverImages:Ljava/util/List;
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

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public fileId:Ljava/lang/String;

.field public fileType:I

.field public media:Lcom/narvii/model/Media;

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public status:I

.field public title:Ljava/lang/String;

.field public votedValue:I

.field public votesCount:I


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
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundMedia()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public getCompareDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/SharedFile;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSelectMedia()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public bridge synthetic getUniqueKey()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/model/SharedFile;->getUniqueKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/SharedFile;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabledByAmino()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "__disabledLevel__"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x6d

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/SharedFile;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

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
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method
