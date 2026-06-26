.class public final Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;
.super Ljava/lang/Object;
.source "ChatWaitingListService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatWaitingListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatWaitingListService.kt\ncom/narvii/chat/setting/helper/ChatWaitingListServiceKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n240#2,2:95\n1495#2,3:97\n673#2:100\n746#2,2:101\n1495#2,3:103\n*E\n*S KotlinDebug\n*F\n+ 1 ChatWaitingListService.kt\ncom/narvii/chat/setting/helper/ChatWaitingListServiceKt\n*L\n76#1,2:95\n87#1,3:97\n93#1:100\n93#1,2:101\n93#1,3:103\n*E\n"
.end annotation


# direct methods
.method public static final doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V
    .locals 6

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string/jumbo v0, "signalling"

    .line 72
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/SignallingService;

    .line 73
    invoke-virtual {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    iget v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const-string v2, "account"

    .line 75
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    invoke-virtual {v2, v1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v2

    .line 76
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/narvii/model/User;

    .line 76
    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_1
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 96
    :goto_0
    check-cast v3, Lcom/narvii/model/User;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 79
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "rtc"

    .line 80
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/chat/rtc/RtcService;

    .line 81
    sget-object v2, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;->INSTANCE:Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/narvii/chat/rtc/RtcService;->waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public static final isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z
    .locals 3
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

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    .line 86
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ctx.getService<AccountService>(\"account\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/narvii/account/AccountService;

    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 97
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 87
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public static final isCurrentUserSpeaker(Lcom/narvii/app/NVContext;)Z
    .locals 7

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    .line 91
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService<AccountService>(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const-string/jumbo v1, "rtc"

    .line 92
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/chat/rtc/RtcService;

    .line 93
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChannelUserList()Ljava/util/Collection;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/narvii/chat/signalling/ChannelUser;

    const-string v6, "it"

    .line 93
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/narvii/chat/signalling/ChannelUser;->isSpeaker()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    .line 104
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 93
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p0, 0x1

    :goto_2
    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1
.end method
