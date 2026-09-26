.class public final Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatWaitingListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatWaitingListService.kt\ncom/narvii/chat/setting/helper/ChatWaitingListServiceKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n288#2,2:95\n1747#2,3:97\n766#2:100\n857#2,2:101\n1747#2,3:103\n*S KotlinDebug\n*F\n+ 1 ChatWaitingListService.kt\ncom/narvii/chat/setting/helper/ChatWaitingListServiceKt\n*L\n76#1:95,2\n87#1:97,3\n93#1:100\n93#1:101,2\n93#1:103,3\n*E\n"
.end annotation


# direct methods
.method public static synthetic a(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->doJoinCancelIfInWaitingList$lambda$1(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public static final doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V
    .locals 7
    .param p0    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/narvii/pushservice/PushPayload;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v0

    .line 13
    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    return-void

    .line 16
    .line 17
    :cond_1
    const-string v1, "signalling"

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/chat/signalling/SignallingService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    return-void

    .line 31
    .line 32
    :cond_2
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 33
    .line 34
    const-string v3, "account"

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Iterable;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    move-object v5, v4

    .line 66
    .line 67
    check-cast v5, Lcom/narvii/model/User;

    .line 68
    .line 69
    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-object v6, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move-object v6, v0

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_3

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move-object v4, v0

    .line 84
    .line 85
    :goto_2
    check-cast v4, Lcom/narvii/model/User;

    .line 86
    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    iget-object v0, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 90
    .line 91
    :cond_6
    if-nez v0, :cond_7

    .line 92
    .line 93
    const-string v0, ""

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-nez v1, :cond_8

    .line 100
    .line 101
    const-string v1, "rtc"

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    check-cast p0, Lcom/narvii/chat/rtc/RtcService;

    .line 108
    .line 109
    new-instance v1, Lx5/b;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1}, Lx5/b;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 116
    :cond_8
    return-void
.end method

.method private static final doJoinCancelIfInWaitingList$lambda$1(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    return-void
.end method

.method public static final isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z
    .locals 3
    .param p0    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    instance-of v1, p1, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    move-object v1, p1

    .line 28
    .line 29
    check-cast v1, Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Lcom/narvii/model/User;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v2, 0x0

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 68
    :cond_3
    :goto_1
    return v0
.end method

.method public static final isCurrentUserSpeaker(Lcom/narvii/app/NVContext;)Z
    .locals 5
    .param p0    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "rtc"

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    check-cast p0, Lcom/narvii/chat/rtc/RtcService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChannelUserList()Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    if-eqz p0, :cond_5

    .line 33
    .line 34
    check-cast p0, Ljava/lang/Iterable;

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    move-object v4, v3

    .line 55
    .line 56
    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->isSpeaker()Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 70
    move-result p0

    .line 71
    .line 72
    if-eqz p0, :cond_2

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v3, 0x0

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    const/4 v1, 0x1

    .line 107
    :cond_5
    :goto_2
    return v1
.end method
