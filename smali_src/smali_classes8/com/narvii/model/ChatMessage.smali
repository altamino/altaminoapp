.class public Lcom/narvii/model/ChatMessage;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;


# static fields
.field public static final CALL_TYPE_AVATAR:I = 0x3

.field public static final CALL_TYPE_NONE:I = 0x0

.field public static final CALL_TYPE_SCREEN_ROOM:I = 0x4

.field public static final CALL_TYPE_VIDEO:I = 0x2

.field public static final CALL_TYPE_VOICE:I = 0x1

.field public static final CHAT_MESSAGE_TYPE_INFO_CHAT_REMOVED:I = 0x76

.field public static final CHAT_MESSAGE_TYPE_INFO_DELETED_BY_ADMIN:I = 0x77

.field public static final CHAT_MESSAGE_TYPE_INFO_DISABALE_VIEW_ONLY:I = 0x7e

.field public static final CHAT_MESSAGE_TYPE_INFO_DISABLE_TIP_PERMISSION:I = 0x81

.field public static final CHAT_MESSAGE_TYPE_INFO_ENABALE_VIEW_ONLY:I = 0x7d

.field public static final CHAT_MESSAGE_TYPE_INFO_ENABLE_TIP_PERMISSION:I = 0x80

.field public static final CHAT_MESSAGE_TYPE_INFO_FORCE_REMOVED_FROM_CHAT:I = 0x75

.field public static final CHAT_MESSAGE_TYPE_INFO_ORGANIZER_TRANSFERRED:I = 0x74

.field public static final CHAT_MESSAGE_TYPE_INFO_PIN_ANNOUNCEMENT:I = 0x79

.field public static final CHAT_MESSAGE_TYPE_INFO_TIPPING:I = 0x78

.field public static final CHAT_MESSAGE_TYPE_INFO_UNPIN_ANNOUNCEMENT:I = 0x7f

.field public static final CHAT_MESSAGE_TYPE_INFO_VV_CHAT_PERMISSION_INVITED_AND_REQUESTED:I = 0x7b

.field public static final CHAT_MESSAGE_TYPE_INFO_VV_CHAT_PERMISSION_INVITE_ONLY:I = 0x7c

.field public static final CHAT_MESSAGE_TYPE_INFO_VV_CHAT_PERMISSION_OPEN_TO_EVERYONE:I = 0x7a

.field public static final CHAT_MESSAGE_TYPE_USER_AVATAR_CALL_CANCELLED:I = 0x3b

.field public static final CHAT_MESSAGE_TYPE_USER_AVATAR_CALL_DECLINED:I = 0x3c

.field public static final CHAT_MESSAGE_TYPE_USER_AVATAR_CALL_NO_ANSWERED:I = 0x3a

.field public static final CHAT_MESSAGE_TYPE_USER_CALL_CANCELLED:I = 0x35

.field public static final CHAT_MESSAGE_TYPE_USER_CALL_DECLINED:I = 0x36

.field public static final CHAT_MESSAGE_TYPE_USER_CALL_NO_ANSWERED:I = 0x34

.field public static final CHAT_MESSAGE_TYPE_USER_VIDEO_CALL_CANCELLED:I = 0x38

.field public static final CHAT_MESSAGE_TYPE_USER_VIDEO_CALL_DECLINED:I = 0x39

.field public static final CHAT_MESSAGE_TYPE_USER_VIDEO_CALL_NO_ANSWERED:I = 0x37

.field public static final TYPE_AD_UNIT_MESSAGE:I = 0xff04

.field public static final TYPE_INFO_BACKGROUND_CHANGE:I = 0x68

.field public static final TYPE_INFO_CONTENT_CHANGE:I = 0x71

.field public static final TYPE_INFO_DELETED:I = 0x64

.field public static final TYPE_INFO_END_AUDIO_CHAT:I = 0x6e

.field public static final TYPE_INFO_END_AVATAR_CHAT:I = 0x70

.field public static final TYPE_INFO_END_SCREENING_ROOM:I = 0x73

.field public static final TYPE_INFO_END_VIDEO_CHAT:I = 0x6f

.field public static final TYPE_INFO_ICON_CHANGE:I = 0x6a

.field public static final TYPE_INFO_MEMBER_BECOME_ACTIVE:I = 0x65

.field public static final TYPE_INFO_MEMBER_QUIT:I = 0x66

.field public static final TYPE_INFO_SESSION_INIT:I = 0x67

.field public static final TYPE_INFO_START_AUDIO_CHAT:I = 0x6b

.field public static final TYPE_INFO_START_AVATAR_CHAT:I = 0x6d

.field public static final TYPE_INFO_START_SCREENING_ROOM:I = 0x72

.field public static final TYPE_INFO_START_VIDEO_CHAT:I = 0x6c

.field public static final TYPE_INFO_TITLE_CHANGE:I = 0x69

.field public static final TYPE_INVITE_MESSAGE:I = 0xff03

.field public static final TYPE_TIMESTAMP:I = 0xff01

.field public static final TYPE_USER_GENERAL:I = 0x0

.field public static final TYPE_USER_SHARE_EXURL:I = 0x32

.field public static final TYPE_USER_SHARE_USER:I = 0x33

.field public static final TYPE_USER_STICKER:I = 0x3

.field public static final TYPE_USER_STRIKE:I = 0x1

.field public static final TYPE_USER_VIDEO_MESSAGE:I = 0x4

.field public static final TYPE_USER_VOICE_NOTE:I = 0x2

.field public static final TYPE_WELCOME_MESSAGE:I = 0xff02


# instance fields
.field public _errorCode:I

.field public _linkParsing:Z

.field public _ndcId:I

.field public _status:I

.field public _uid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uid"
    .end annotation
.end field

.field public _videoUploadPercentage:I

.field public author:Lcom/narvii/model/User;

.field public chatBubbleId:Ljava/lang/String;

.field public chatBubbleVersion:I

.field public clientRefId:J

.field public clientRefIdTmp:I

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public includedInSummary:Z

.field public isHidden:Z

.field public mediaType:I

.field public mediaUhqEnabled:Z

.field public mediaValue:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public stickerId:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public type:I


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

.method private isAvatarMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isScreenRoomMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isVideoMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isVoiceMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBubbleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleVersion()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    return v0
.end method

.method public getCallMessageType()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isVoiceMessage()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isVideoMessage()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 v0, 0x2

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isAvatarMessage()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    const/4 v0, 0x3

    .line 24
    return v0

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isScreenRoomMessage()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    const/4 v0, 0x4

    .line 32
    return v0

    .line 33
    :cond_3
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public getClientRefIdTmp()I
    .locals 2

    iget-wide v0, p0, Lcom/narvii/model/ChatMessage;->clientRefId:J

    long-to-int v0, v0

    iput v0, p0, Lcom/narvii/model/ChatMessage;->clientRefIdTmp:I

    return v0
.end method

.method public getDuration()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "duration"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeDouble(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)D

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 18
    mul-double/2addr v0, v2

    .line 19
    double-to-int v0, v0

    .line 20
    return v0
.end method

.method public getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "linkSnippetList"

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
    if-eqz v2, :cond_5

    .line 23
    .line 24
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    .line 26
    const-class v3, [Lcom/narvii/model/LinkSummary;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, [Lcom/narvii/model/LinkSummary;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    return-object v1

    .line 36
    :cond_1
    array-length v2, v0

    .line 37
    .line 38
    if-lez v2, :cond_5

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    aget-object v0, v0, v2

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    return-object v1

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    return-object v1

    .line 52
    .line 53
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    return-object v1

    .line 57
    :cond_4
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :cond_5
    return-object v1
.end method

.method public getReplyMessage()Lcom/narvii/model/ChatMessage;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "replyMessage"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 16
    .line 17
    const-class v2, Lcom/narvii/model/ChatMessage;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/model/ChatMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0
.end method

.method public getReplyMessageId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "replyMessageId"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getStickerInfo()Lcom/narvii/model/Sticker;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    return-object v2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "sticker"

    .line 13
    .line 14
    .line 15
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return-object v2

    .line 24
    .line 25
    :cond_1
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    .line 27
    const-class v3, Lcom/narvii/model/Sticker;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/model/Sticker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    move-object v2, v0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :goto_0
    return-object v2
.end method

.method public getVideoDuration()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    return-wide v0

    .line 10
    .line 11
    :cond_0
    iget-wide v0, v0, Lcom/narvii/model/ChatMessageVideoInfo;->duration:J

    .line 12
    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    mul-long/2addr v0, v2

    .line 15
    return-wide v0
.end method

.method public getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "videoExtensions"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-class v1, Lcom/narvii/model/ChatMessageVideoInfo;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/model/ChatMessageVideoInfo;

    .line 30
    return-object v0
.end method

.method public hasAttachment()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "attachedObjectInfo"

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
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public hasImageMedia()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x67

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x7b

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public hasLinkSnippet()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "linkSnippetList"

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
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public hasMedia()Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public hasMentionedUser()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "mentionedArray"

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
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    const-wide/16 v2, 0x64

    .line 20
    div-long/2addr v0, v2

    .line 21
    long-to-int v0, v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthoredChatMessageType()Z
    .locals 3

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1

    const/16 v2, 0x33

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isCallRelatedMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCancelMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDeclineMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFlagableMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIdEquals(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isIdEquals(Lcom/narvii/model/NVObject;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/model/ChatMessage;->type:I

    .line 9
    .line 10
    const/16 v0, 0x64

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public isMediaMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMediaVideo()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPermissionRelatedMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReplyMessage()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getReplyMessage()Lcom/narvii/model/ChatMessage;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isReplyTo(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getReplyMessage()Lcom/narvii/model/ChatMessage;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method public isSerialExecutorRequired()Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->isMediaMessage()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->hasLinkSnippet()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public isStickerMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThreadDestroyMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTimeOutMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUserContentMessage()Z
    .locals 3

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1

    const/16 v2, 0x33

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isVVChatStartOrEndMessage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public media()Lcom/narvii/model/Media;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcom/narvii/model/Media;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 16
    .line 17
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v2, v1, Lcom/narvii/model/ChatMessageVideoInfo;->coverImage:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 32
    .line 33
    iget-wide v1, v1, Lcom/narvii/model/ChatMessageVideoInfo;->duration:J

    .line 34
    .line 35
    iput-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    .line 36
    :cond_1
    return-object v0
.end method

.method public needSubTransparentPlaceholder()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public needVideoPlaceholder()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 3
    .line 4
    const/16 v1, 0x7b

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public setClientRefIdTmp(I)V
    .locals 2

    iput p1, p0, Lcom/narvii/model/ChatMessage;->clientRefIdTmp:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/narvii/model/ChatMessage;->clientRefId:J

    return-void
.end method

.method public setReplyMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "replyMessage"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "replyMessageId"

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :goto_0
    return-void
.end method

.method public setVideoInfo(Lcom/narvii/model/ChatMessageVideoInfo;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "videoExtensions"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 28
    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, ": "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x28

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const/16 v1, 0x29

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->_uid:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 10
    :goto_0
    return-object v0
.end method
