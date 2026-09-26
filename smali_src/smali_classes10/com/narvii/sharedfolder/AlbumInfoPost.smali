.class public Lcom/narvii/sharedfolder/AlbumInfoPost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
.field public coverMediaList:Ljava/util/List;
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

.field public description:Ljava/lang/String;

.field public isDefaultFolder:Z

.field public status:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

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
    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    .line 40
    .line 41
    iget p1, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    .line 42
    .line 43
    if-ne v0, p1, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    const-string v0, "isDefaultFolder"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->isDefaultFolder:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "title"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    :cond_0
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    return-object v0
.end method
