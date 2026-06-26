.class public Lcom/narvii/chat/input/ChatInputMessageSenderHelper;
.super Ljava/lang/Object;
.source "ChatInputMessageSenderHelper.java"


# instance fields
.field private final account:Lcom/narvii/account/AccountService;

.field private final chat:Lcom/narvii/chat/core/ChatService;

.field private final configService:Lcom/narvii/config/ConfigService;

.field private final globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private thread:Lcom/narvii/model/ChatThread;

.field private threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "chat"

    .line 54
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    const-string v0, "account"

    .line 55
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    const-string v0, "globalChat"

    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    const-string v0, "config"

    .line 57
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 58
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    return-void
.end method

.method private setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 65
    new-instance v1, Lcom/narvii/model/User;

    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    iput-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 66
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 67
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iget-object v2, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 68
    iget-object v2, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 69
    iget v2, v0, Lcom/narvii/model/User;->role:I

    iput v2, v1, Lcom/narvii/model/User;->role:I

    .line 70
    iget v2, v0, Lcom/narvii/model/User;->level:I

    iput v2, v1, Lcom/narvii/model/User;->level:I

    .line 71
    iget-object v2, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iput-object v2, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 72
    iget-object v2, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    iput-object v2, v1, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 73
    iget v0, v0, Lcom/narvii/model/User;->accountMembershipStatus:I

    iput v0, v1, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 74
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 75
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatThread;->getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 79
    iget v0, v0, Lcom/narvii/model/ChatBubble;->version:I

    iput v0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    :cond_5
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v1, :cond_1

    .line 249
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v1, :cond_1

    .line 264
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public recordChatActivity()V
    .locals 4

    .line 270
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 275
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 274
    invoke-static {v1, v2, v3}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    return-void
.end method

.method public sendImageMessage(Lcom/narvii/model/Media;Z)Z
    .locals 4

    .line 199
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 200
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 202
    new-instance v2, Lcom/narvii/model/ChatMessage;

    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 203
    sget-object v3, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    invoke-virtual {v3}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    move-result v3

    iput v3, v2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 204
    iput-object v0, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 205
    iput v1, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 206
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    iput-object v0, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 207
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    iput v0, v2, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 208
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object p1, v2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 210
    iput-boolean p2, v2, Lcom/narvii/model/ChatMessage;->mediaUhqEnabled:Z

    .line 211
    invoke-direct {p0, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 212
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v2}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 213
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method public sendMessage(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/input/MentionedEditText$Range;",
            ">;",
            "Lcom/narvii/model/ChatMessage;",
            ")Z"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/narvii/model/ChatMessage;

    invoke-direct {p1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 93
    sget-object v3, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    invoke-virtual {v3}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    move-result v3

    iput v3, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 94
    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 95
    iput v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 96
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 97
    iget-object v0, p4, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p1, p4}, Lcom/narvii/model/ChatMessage;->setReplyMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 101
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p4

    iput-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    iget-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "attachedObjectInfo"

    invoke-virtual {p4, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 104
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p2

    if-eqz p3, :cond_5

    .line 105
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    .line 106
    iget-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p4, :cond_3

    .line 107
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p4

    iput-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 110
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 111
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 112
    iget-object v3, p4, Lcom/narvii/chat/input/MentionedEditText$Range;->id:Ljava/lang/String;

    const-string/jumbo v4, "uid"

    invoke-virtual {v0, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 115
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 116
    iget v0, p4, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    add-int/2addr v0, v1

    const-string/jumbo v3, "\u200e\u200f"

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget p4, p4, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x2

    const-string/jumbo v0, "\u202c\u202d"

    invoke-virtual {v2, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 120
    :cond_4
    iget-object p3, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p4, "mentionedArray"

    invoke-virtual {p3, p4, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 122
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 124
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 125
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0215

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v1
.end method

.method public sendSticker(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 162
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->isSendTooFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f023f

    invoke-static {p1, v0, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return p2

    .line 171
    :cond_1
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 173
    new-instance v0, Lcom/narvii/model/ChatMessage;

    invoke-direct {v0}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 174
    sget-object v1, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    invoke-virtual {v1}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    move-result v1

    iput v1, v0, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 175
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 p2, 0x3

    .line 176
    iput p2, v0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 p2, 0x71

    .line 177
    iput p2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 178
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndcsticker://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "stickerCache"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    .line 182
    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getIconUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 183
    iget-object p2, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    :cond_3
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 185
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->stickerId:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 188
    iget-object p2, v0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p2, :cond_4

    .line 189
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 191
    :cond_4
    iget-object p2, v0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v1, "sticker"

    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 192
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 194
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return p2
.end method

.method public sendVideoMessage(Lcom/narvii/model/Media;)Z
    .locals 6

    .line 221
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 222
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 223
    new-instance v1, Lcom/narvii/model/ChatMessage;

    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 224
    sget-object v2, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    invoke-virtual {v2}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    move-result v2

    iput v2, v1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 225
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v0, 0x4

    .line 226
    iput v0, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 227
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 228
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    iput v0, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 229
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/narvii/model/ChatMessageVideoInfo;

    invoke-direct {v0}, Lcom/narvii/model/ChatMessageVideoInfo;-><init>()V

    .line 232
    iget-object v2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/model/ChatMessageVideoInfo;->coverImage:Ljava/lang/String;

    .line 233
    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/narvii/model/ChatMessageVideoInfo;->duration:J

    .line 234
    invoke-virtual {v1, v0}, Lcom/narvii/model/ChatMessage;->setVideoInfo(Lcom/narvii/model/ChatMessageVideoInfo;)V

    .line 235
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 236
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 237
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method public sendVoiceMessage(Lcom/narvii/model/Media;JLcom/fasterxml/jackson/databind/node/ObjectNode;)Z
    .locals 4

    .line 131
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 134
    new-instance v1, Lcom/narvii/model/ChatMessage;

    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 135
    sget-object v2, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    invoke-virtual {v2}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    move-result v2

    iput v2, v1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 136
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v0, 0x2

    .line 137
    iput v0, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 138
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 139
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    iput v0, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 140
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_0

    .line 144
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 146
    :cond_0
    iget-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    long-to-double p2, p2

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v2

    const-string v0, "duration"

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_1
    if-eqz p4, :cond_2

    .line 149
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 150
    iget-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p2, "attachedObjectInfo"

    invoke-virtual {p1, p2, p4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 152
    :cond_2
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 154
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method
