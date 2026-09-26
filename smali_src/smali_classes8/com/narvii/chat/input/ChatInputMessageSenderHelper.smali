.class public Lcom/narvii/chat/input/ChatInputMessageSenderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "chat"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 16
    .line 17
    const-string v0, "account"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    const-string v0, "globalChat"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 36
    .line 37
    const-string v0, "config"

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/model/User;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    .line 14
    .line 15
    iput-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    :cond_0
    iput-object v2, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v2, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 38
    .line 39
    iget v2, v0, Lcom/narvii/model/User;->role:I

    .line 40
    .line 41
    iput v2, v1, Lcom/narvii/model/User;->role:I

    .line 42
    .line 43
    iget v2, v0, Lcom/narvii/model/User;->level:I

    .line 44
    .line 45
    iput v2, v1, Lcom/narvii/model/User;->level:I

    .line 46
    .line 47
    iget-object v2, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 48
    .line 49
    iput-object v2, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 52
    .line 53
    iput-object v2, v1, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 54
    .line 55
    iget v0, v0, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 56
    .line 57
    iput v0, v1, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 58
    .line 59
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 60
    .line 61
    const/16 v1, 0x64

    .line 62
    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x67

    .line 66
    .line 67
    if-ne v0, v1, :cond_2

    .line 68
    .line 69
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    :goto_0
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 79
    const/4 v1, 0x2

    .line 80
    .line 81
    if-ne v0, v1, :cond_4

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->account:Lcom/narvii/account/AccountService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatThread;->getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    iput-object v1, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 104
    .line 105
    iget v0, v0, Lcom/narvii/model/ChatBubble;->version:I

    .line 106
    .line 107
    iput v0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    .line 108
    :cond_4
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 22
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->threadId:Ljava/lang/String;

    .line 28
    return-object v0
.end method

.method public recordChatActivity()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 19
    move-result v2

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 33
    return-void
.end method

.method public sendImageMessage(Lcom/narvii/model/Media;Z)Z
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x67

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v2

    .line 14
    .line 15
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 19
    move-result-wide v3

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/model/ChatMessage;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 28
    .line 29
    sget-object v3, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 37
    .line 38
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 39
    .line 40
    iput v2, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 41
    .line 42
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 45
    .line 46
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 47
    .line 48
    iput v0, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 59
    .line 60
    iput-boolean p2, v1, Lcom/narvii/model/ChatMessage;->mediaUhqEnabled:Z

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 72
    const/4 p1, 0x1

    .line 73
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/model/ChatMessage;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 39
    .line 40
    sget-object v3, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 48
    .line 49
    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 50
    .line 51
    iput v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz p4, :cond_1

    .line 60
    .line 61
    iget-object v0, p4, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p4}, Lcom/narvii/model/ChatMessage;->setReplyMessage(Lcom/narvii/model/ChatMessage;)V

    .line 71
    .line 72
    :cond_1
    if-eqz p2, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 76
    move-result-object p4

    .line 77
    .line 78
    iput-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 79
    .line 80
    const-string v0, "attachedObjectInfo"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    if-eqz p3, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    move-result p4

    .line 94
    .line 95
    if-nez p4, :cond_5

    .line 96
    .line 97
    iget-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 98
    .line 99
    if-nez p4, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 103
    move-result-object p4

    .line 104
    .line 105
    iput-object p4, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object p3

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result p4

    .line 114
    .line 115
    if-eqz p4, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object p4

    .line 120
    .line 121
    check-cast p4, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    iget-object v3, p4, Lcom/narvii/chat/input/MentionedEditText$Range;->id:Ljava/lang/String;

    .line 128
    .line 129
    const-string v4, "uid"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 136
    .line 137
    iget v0, p4, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 138
    add-int/2addr v0, v1

    .line 139
    .line 140
    const-string v3, "\u200e\u200f"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    iget p4, p4, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    .line 146
    add-int/2addr p4, v1

    .line 147
    .line 148
    add-int/lit8 p4, p4, 0x2

    .line 149
    .line 150
    const-string v0, "\u202c\u202d"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    add-int/lit8 v1, v1, 0x4

    .line 156
    goto :goto_0

    .line 157
    .line 158
    :cond_4
    iget-object p3, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 159
    .line 160
    const-string p4, "mentionedArray"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p4, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 164
    .line 165
    .line 166
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    iput-object p2, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 177
    .line 178
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 185
    const/4 p1, 0x1

    .line 186
    return p1

    .line 187
    .line 188
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 189
    .line 190
    .line 191
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    const p2, 0x7f120258

    .line 196
    .line 197
    .line 198
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 203
    return v1
.end method

.method public sendSticker(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->isSendTooFast()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    const v0, 0x7f120282

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 51
    return p2

    .line 52
    .line 53
    :cond_1
    new-instance p2, Ljava/util/Date;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 57
    move-result-wide v0

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/model/ChatMessage;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 66
    .line 67
    sget-object v1, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 75
    .line 76
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 77
    const/4 p2, 0x3

    .line 78
    .line 79
    iput p2, v0, Lcom/narvii/model/ChatMessage;->type:I

    .line 80
    .line 81
    const/16 p2, 0x71

    .line 82
    .line 83
    iput p2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    .line 87
    move-result p2

    .line 88
    .line 89
    if-eqz p2, :cond_2

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v1, "ndcsticker://"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    const-string v1, "stickerCache"

    .line 118
    .line 119
    .line 120
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getIconUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    if-nez p2, :cond_3

    .line 130
    .line 131
    iget-object p2, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 132
    .line 133
    :cond_3
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->stickerId:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 146
    .line 147
    iget-object p2, v0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 148
    .line 149
    if-nez p2, :cond_4

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 153
    move-result-object p2

    .line 154
    .line 155
    iput-object p2, v0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 156
    .line 157
    :cond_4
    iget-object p2, v0, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 158
    .line 159
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    const-string v1, "sticker"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 180
    const/4 p1, 0x1

    .line 181
    return p1

    .line 182
    :cond_5
    :goto_1
    return p2
.end method

.method public sendVideoMessage(Lcom/narvii/model/Media;)Z
    .locals 6

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 3
    .line 4
    const/16 v1, 0x7b

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x66

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    .line 15
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/model/ChatMessage;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 28
    .line 29
    sget-object v2, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 37
    .line 38
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 39
    const/4 v0, 0x4

    .line 40
    .line 41
    iput v0, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 42
    .line 43
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 46
    .line 47
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 48
    .line 49
    iput v0, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 50
    .line 51
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/model/ChatMessageVideoInfo;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Lcom/narvii/model/ChatMessageVideoInfo;-><init>()V

    .line 65
    .line 66
    iget-object v2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v2, v0, Lcom/narvii/model/ChatMessageVideoInfo;->coverImage:Ljava/lang/String;

    .line 69
    .line 70
    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    .line 71
    .line 72
    const-wide/16 v4, 0x3e8

    .line 73
    div-long/2addr v2, v4

    .line 74
    .line 75
    iput-wide v2, v0, Lcom/narvii/model/ChatMessageVideoInfo;->duration:J

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/narvii/model/ChatMessage;->setVideoInfo(Lcom/narvii/model/ChatMessageVideoInfo;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 90
    const/4 p1, 0x1

    .line 91
    return p1
.end method

.method public sendVoiceMessage(Lcom/narvii/model/Media;JLcom/fasterxml/jackson/databind/node/ObjectNode;)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 3
    .line 4
    const/16 v1, 0x6e

    .line 5
    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    new-instance v0, Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/model/ChatMessage;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 21
    .line 22
    sget-object v2, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 30
    .line 31
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 32
    const/4 v0, 0x2

    .line 33
    .line 34
    iput v0, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 39
    .line 40
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 41
    .line 42
    iput v0, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->getThreadId()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 53
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    cmp-long p1, p2, v2

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 61
    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 69
    .line 70
    :cond_0
    iget-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 71
    long-to-double p2, p2

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 77
    div-double/2addr p2, v2

    .line 78
    .line 79
    const-string v0, "duration"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 83
    .line 84
    :cond_1
    if-eqz p4, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 91
    .line 92
    const-string p2, "attachedObjectInfo"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, p4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setMeAsMessageAuthor(Lcom/narvii/model/ChatMessage;)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->chat:Lcom/narvii/chat/core/ChatService;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 107
    const/4 p1, 0x1

    .line 108
    return p1

    .line 109
    :cond_3
    const/4 p1, 0x0

    .line 110
    return p1
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method
