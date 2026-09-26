.class public Lcom/narvii/repost/RepostPost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
.field public content:Ljava/lang/String;

.field public needHidden:Z

.field public previewContent:Ljava/lang/String;

.field public previewImage:Lcom/narvii/model/Media;

.field public previewTitle:Ljava/lang/String;

.field public refObjectId:Ljava/lang/String;

.field public refObjectType:I

.field public type:I


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

    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

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
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

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
    instance-of v0, p1, Lcom/narvii/repost/RepostPost;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/repost/RepostPost;

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/repost/RepostPost;->type:I

    .line 10
    .line 11
    iget v2, p1, Lcom/narvii/repost/RepostPost;->type:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 41
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
    const-string v0, "previewImage"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    .line 15
    const-string v0, "previewTitle"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    .line 20
    const-string v0, "previewContent"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    .line 25
    const-string v0, "needHidden"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
