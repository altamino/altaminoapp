.class public Lcom/narvii/model/ChatMessage;
.super Lcom/narvii/model/NVObject;
.source "ChatMessage.java"

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

.field public clientRefId:I

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

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method private isAvatarMessage()Z
    .locals 2

    .line 357
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

    .line 341
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

    .line 351
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

    .line 345
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

    .line 403
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBubbleId()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleVersion()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    return v0
.end method

.method public getCallMessageType()I
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isVoiceMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isVideoMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isAvatarMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/narvii/model/ChatMessage;->isScreenRoomMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "duration"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeDouble(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "linkSnippetList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 423
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 425
    :try_start_0
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, [Lcom/narvii/model/LinkSummary;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/model/LinkSummary;

    if-nez v0, :cond_1

    return-object v1

    .line 429
    :cond_1
    array-length v3, v0

    if-lez v3, :cond_5

    .line 430
    aget-object v0, v0, v2

    if-nez v0, :cond_2

    return-object v1

    .line 434
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 438
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v1
.end method

.method public getReplyMessage()Lcom/narvii/model/ChatMessage;
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "replyMessage"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 209
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/model/ChatMessage;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReplyMessageId()Ljava/lang/String;
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "replyMessageId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStickerInfo()Lcom/narvii/model/Sticker;
    .locals 5

    .line 371
    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-object v1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sticker"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 380
    :cond_1
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/Sticker;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Sticker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getVideoDuration()J
    .locals 4

    .line 469
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 473
    :cond_0
    iget-wide v0, v0, Lcom/narvii/model/ChatMessageVideoInfo;->duration:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "videoExtensions"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 464
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatMessageVideoInfo;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessageVideoInfo;

    return-object v0
.end method

.method public hasAttachment()Z
    .locals 5

    .line 407
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "attachedObjectInfo"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasImageMedia()Z
    .locals 2

    .line 177
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLinkSnippet()Z
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "linkSnippetList"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMedia()Z
    .locals 1

    .line 172
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMentionedUser()Z
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mentionedArray"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthoredChatMessageType()Z
    .locals 3

    .line 277
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

    .line 296
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

    .line 308
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

    .line 314
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

    .line 495
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isIdEquals(Lcom/narvii/model/NVObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMediaMessage()Z
    .locals 2

    .line 477
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

    .line 481
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

    .line 503
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

    .line 238
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getReplyMessage()Lcom/narvii/model/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplyTo(Ljava/lang/String;)Z
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getReplyMessage()Lcom/narvii/model/ChatMessage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 246
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSerialExecutorRequired()Z
    .locals 1

    .line 292
    iget v0, p0, Lcom/narvii/model/ChatMessage;->type:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->isMediaMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->hasLinkSnippet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStickerMessage()Z
    .locals 2

    .line 388
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

    .line 499
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

    .line 320
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

    .line 392
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

    .line 485
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

    .line 190
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 194
    iget v1, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 195
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v2, v1, Lcom/narvii/model/ChatMessageVideoInfo;->coverImage:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 199
    iget-wide v1, v1, Lcom/narvii/model/ChatMessageVideoInfo;->duration:J

    iput-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    :cond_1
    return-object v0
.end method

.method public needSubTransparentPlaceholder()Z
    .locals 2

    .line 182
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needVideoPlaceholder()Z
    .locals 2

    .line 186
    iget v0, p0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 158
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public setReplyMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 226
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "replyMessage"

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 230
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v1, "replyMessageId"

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVideoInfo(Lcom/narvii/model/ChatMessageVideoInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_1

    .line 454
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string/jumbo v1, "videoExtensions"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x28

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->_uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
