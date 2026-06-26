.class public Lcom/narvii/model/SharedFile;
.super Lcom/narvii/model/NVObject;
.source "SharedFile.java"

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

    .line 18
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 107
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

    .line 82
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public getCompareDate()Ljava/util/Date;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSelectMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public bridge synthetic getUniqueKey()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/narvii/model/SharedFile;->getUniqueKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBackground()Z
    .locals 1

    .line 77
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

    .line 47
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabledByAmino()Z
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "__disabledLevel__"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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

    .line 67
    iget v0, p0, Lcom/narvii/model/SharedFile;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
