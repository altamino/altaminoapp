.class public Lcom/narvii/sharedfolder/AlbumInfoPost;
.super Ljava/lang/Object;
.source "AlbumInfoPost.java"

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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Lcom/narvii/model/Media;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

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

    .line 56
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 61
    instance-of v0, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 63
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    .line 64
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 65
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    iget p1, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 45
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "isDefaultFolder"

    .line 46
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 47
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->isDefaultFolder:Z

    if-eqz v0, :cond_0

    const-string v0, "title"

    .line 48
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_0
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    return-object v0
.end method
