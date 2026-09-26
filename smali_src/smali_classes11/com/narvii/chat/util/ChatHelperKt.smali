.class public final Lcom/narvii/chat/util/ChatHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getChannelType(Lcom/narvii/model/ChatMessage;)I
    .locals 2
    .param p0    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget p0, p0, Lcom/narvii/model/ChatMessage;->type:I

    .line 7
    .line 8
    const/16 v1, 0x35

    .line 9
    .line 10
    if-eq p0, v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x36

    .line 13
    .line 14
    if-eq p0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x38

    .line 17
    .line 18
    if-eq p0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x39

    .line 21
    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    .line 24
    const/16 v1, 0x72

    .line 25
    .line 26
    if-eq p0, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x73

    .line 29
    .line 30
    if-eq p0, v1, :cond_2

    .line 31
    .line 32
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    return v0

    .line 35
    :pswitch_0
    const/4 p0, 0x3

    .line 36
    return p0

    .line 37
    :pswitch_1
    const/4 p0, 0x4

    .line 38
    return p0

    .line 39
    :pswitch_2
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    const/4 p0, 0x5

    .line 42
    return p0

    .line 43
    :cond_2
    :pswitch_3
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static final getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;
    .locals 0
    .param p0    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final hasUnreadMessage(Lcom/narvii/model/ChatThread;)Z
    .locals 1
    .param p0    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final isAllNullOrEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0
    .param p0    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final isEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1
    .param p0    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_2
    :goto_0
    return v0
.end method

.method public static final isGroupChat(Lcom/narvii/model/ChatThread;)Z
    .locals 0
    .param p0    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->groupChat()Z

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static final isGuest(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0
    .param p0    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/signalling/ChannelUser;->isGuest()Z

    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static final isNewer(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0
    .param p0    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final isPublicChat(Lcom/narvii/model/ChatThread;)Z
    .locals 0
    .param p0    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->publicChat()Z

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static final isPublicOrGroupChat(Lcom/narvii/model/ChatThread;)Z
    .locals 1
    .param p0    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    .line 8
    move-result p0

    .line 9
    or-int/2addr p0, v0

    .line 10
    return p0
.end method

.method public static final isSingleChat(Lcom/narvii/model/ChatThread;)Z
    .locals 0
    .param p0    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static final isSpeaker(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0
    .param p0    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/signalling/ChannelUser;->isSpeaker()Z

    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static final isVideoPlayer(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0
    .param p0    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method
