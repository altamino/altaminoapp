.class public Lcom/narvii/user/profile/post/UserProfilePost;
.super Lcom/narvii/feed/BackgroundPost;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/User;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 6
    iget-object v0, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 7
    iget v0, p1, Lcom/narvii/model/User;->latitude:I

    iput v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 8
    iget v0, p1, Lcom/narvii/model/User;->longitude:I

    iput v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 9
    iget-object v0, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "customTitles"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    .line 26
    const-class v3, [Lcom/narvii/model/api/UserTitle;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, [Lcom/narvii/model/api/UserTitle;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_1
    return-object v1
.end method

.method public getPreviewUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    new-instance p2, Lcom/narvii/model/User;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Lcom/narvii/model/User;-><init>()V

    .line 9
    .line 10
    :goto_0
    iput-object p3, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p2, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 21
    .line 22
    iput-object p1, p2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p2, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 27
    .line 28
    iget p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 29
    .line 30
    iput p1, p2, Lcom/narvii/model/User;->latitude:I

    .line 31
    .line 32
    iget p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 33
    .line 34
    iput p1, p2, Lcom/narvii/model/User;->longitude:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p2, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 41
    .line 42
    iput-object p1, p2, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->parseToAvatarFrameLite(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Lcom/narvii/model/User$AvatarFrameLite;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 53
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

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 50
    .line 51
    iget v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 52
    .line 53
    if-ne v0, v2, :cond_0

    .line 54
    .line 55
    iget v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 56
    .line 57
    iget v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 58
    .line 59
    if-ne v0, v2, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 62
    .line 63
    iget-object v2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 81
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
    const-string v0, "avatarFrame"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    return-object v0
.end method
