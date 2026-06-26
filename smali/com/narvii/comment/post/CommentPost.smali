.class public Lcom/narvii/comment/post/CommentPost;
.super Ljava/lang/Object;
.source "CommentPost.java"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
.field public content:Ljava/lang/String;

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

.field public prefix:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation
.end field

.field public respondTo:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation
.end field

.field public stickerId:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/Comment;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    .line 26
    iget-object p1, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

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

    .line 74
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

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

    .line 79
    instance-of v0, p1, Lcom/narvii/comment/post/CommentPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    .line 81
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 82
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .line 63
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 65
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "prefix"

    .line 66
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_1
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
