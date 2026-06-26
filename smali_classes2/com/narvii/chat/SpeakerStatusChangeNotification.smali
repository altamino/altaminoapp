.class public final Lcom/narvii/chat/SpeakerStatusChangeNotification;
.super Lcom/narvii/model/NVObject;
.source "SpeakerStatusChangeNotification.kt"


# instance fields
.field private channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field private isSpeaking:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/chat/SpeakerStatusChangeNotification;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/chat/SpeakerStatusChangeNotification;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
