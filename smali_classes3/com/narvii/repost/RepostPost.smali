.class public Lcom/narvii/repost/RepostPost;
.super Ljava/lang/Object;
.source "RepostPost.java"

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 31
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

    .line 36
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 56
    instance-of v0, p1, Lcom/narvii/repost/RepostPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/narvii/repost/RepostPost;

    .line 58
    iget v0, p0, Lcom/narvii/repost/RepostPost;->type:I

    iget v2, p1, Lcom/narvii/repost/RepostPost;->type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    .line 60
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 61
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 41
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "previewImage"

    .line 42
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v0, "previewTitle"

    .line 43
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v0, "previewContent"

    .line 44
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v0, "needHidden"

    .line 45
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
