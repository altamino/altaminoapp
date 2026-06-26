.class public Lcom/narvii/chat/video/ChatLogEventHelper;
.super Ljava/lang/Object;
.source "ChatLogEventHelper.java"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/narvii/chat/video/ChatLogEventHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public static getChatProperty(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "public"

    goto :goto_0

    :cond_1
    const-string p0, "group"

    goto :goto_0

    :cond_2
    const-string p0, "1v1"

    :goto_0
    return-object p0
.end method

.method public static getChatProperty(Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 23
    iget p0, p0, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {p0}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatProperty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChatType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "textChat"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "screeningRoom"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "videoChat"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "voiceChat"

    :goto_0
    return-object p0
.end method

.method public static getCurrentChatType(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "rtc"

    .line 48
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/chat/rtc/RtcService;

    .line 49
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 51
    iget p0, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {p0}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public logChat(ILcom/narvii/model/ChatThread;Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/chat/video/ChatLogEventHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    invoke-static {p2}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatProperty(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "chatProperty"

    invoke-virtual {p3, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string p3, "ChatRoom"

    invoke-virtual {p2, p3}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 81
    invoke-static {p1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "chatType"

    invoke-virtual {p2, p3, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logQuitChat(ILcom/narvii/model/ChatThread;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/narvii/logging/ActSemantic;->quitChat:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;->logChat(ILcom/narvii/model/ChatThread;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method
