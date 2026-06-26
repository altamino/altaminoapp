.class public final Lcom/narvii/chat/util/ChatHelperKt;
.super Ljava/lang/Object;
.source "ChatHelper.kt"


# direct methods
.method public static final getChannelType(Lcom/narvii/model/ChatMessage;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 674
    :cond_0
    iget p0, p0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x35

    if-eq p0, v1, :cond_2

    const/16 v1, 0x36

    if-eq p0, v1, :cond_2

    const/16 v1, 0x38

    if-eq p0, v1, :cond_2

    const/16 v1, 0x39

    if-eq p0, v1, :cond_2

    const/16 v1, 0x72

    if-eq p0, v1, :cond_1

    const/16 v1, 0x73

    if-eq p0, v1, :cond_2

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    :pswitch_3
    const/4 p0, 0x0

    return p0

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

    if-eqz p0, :cond_0

    .line 696
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final hasUnreadMessage(Lcom/narvii/model/ChatThread;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    if-nez p0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isAllNullOrEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 659
    :cond_1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final isGroupChat(Lcom/narvii/model/ChatThread;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isGuest(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 694
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/signalling/ChannelUser;->isGuest()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNewer(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 649
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static final isPublicChat(Lcom/narvii/model/ChatThread;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->publicChat()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPublicOrGroupChat(Lcom/narvii/model/ChatThread;)Z
    .locals 1

    .line 690
    invoke-static {p0}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    invoke-static {p0}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final isSingleChat(Lcom/narvii/model/ChatThread;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSpeaker(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 692
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/signalling/ChannelUser;->isSpeaker()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isVideoPlayer(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 698
    iget-object p0, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
