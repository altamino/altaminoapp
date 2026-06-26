.class public Lcom/narvii/poll/post/PlainPollPost;
.super Ljava/lang/Object;
.source "PlainPollPost.java"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
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

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/PollOption;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object v0, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 65
    instance-of v0, p1, Lcom/narvii/poll/post/PlainPollPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    .line 67
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    .line 68
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .line 50
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "type"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    return-object v0
.end method
