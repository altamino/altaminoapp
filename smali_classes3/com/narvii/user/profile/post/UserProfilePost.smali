.class public Lcom/narvii/user/profile/post/UserProfilePost;
.super Lcom/narvii/feed/BackgroundPost;
.source "UserProfilePost.java"


# instance fields
.field public address:Ljava/lang/String;

.field public avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field public content:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public latitude:I

.field public longitude:I

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

.field public nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/User;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    .line 27
    iget-object v0, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    iget-object v0, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 31
    iget v0, p1, Lcom/narvii/model/User;->latitude:I

    iput v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 32
    iget v0, p1, Lcom/narvii/model/User;->longitude:I

    iput v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 33
    iget-object v0, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 34
    iget-object p1, p1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public customTitles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "customTitles"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, [Lcom/narvii/model/api/UserTitle;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public getPreviewUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/model/User;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p2, Lcom/narvii/model/User;

    invoke-direct {p2}, Lcom/narvii/model/User;-><init>()V

    .line 39
    :goto_0
    iput-object p3, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p1, p2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 43
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 44
    iget p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    iput p1, p2, Lcom/narvii/model/User;->latitude:I

    .line 45
    iget p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    iput p1, p2, Lcom/narvii/model/User;->longitude:I

    .line 46
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    iput-object p1, p2, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 48
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz p1, :cond_1

    .line 49
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->parseToAvatarFrameLite(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Lcom/narvii/model/User$AvatarFrameLite;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    :cond_1
    return-object p2
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

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

    .line 116
    instance-of v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 118
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 119
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 120
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 121
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    iget v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    iget v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 124
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 125
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 104
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "avatarFrame"

    .line 105
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    return-object v0
.end method
