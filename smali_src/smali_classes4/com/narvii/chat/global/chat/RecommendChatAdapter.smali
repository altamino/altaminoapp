.class public final Lcom/narvii/chat/global/chat/RecommendChatAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;,
        Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ndcId:I

.field private final showStoreBadgeCallback:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updateTime:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;ILe8/l;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "I",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "showStoreBadgeCallback"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ndcId:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->showStoreBadgeCallback:Le8/l;

    .line 15
    const/4 p1, -0x2

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "live-layer/public-chats"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v0, "build(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "RecommendedChatList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    :goto_0
    return v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getNdcId()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ndcId:I

    return v0
.end method

.method public final getShowStoreBadgeCallback()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->showStoreBadgeCallback:Le8/l;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 13
    return-object p1
.end method

.method protected getViewLayoutId()I
    .locals 1

    const v0, 0x7f0d00ca

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Ljava/util/Collection;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 70
    .line 71
    iput-object v0, v2, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 75
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/thread/ThreadListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 3
    iget-object v1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->showStoreBadgeCallback:Le8/l;

    if-eqz p2, :cond_1

    .line 4
    iget-object v2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->showStoreBadge:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method public final refreshWithRateControl()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->updateTime:J

    .line 7
    .line 8
    .line 9
    const v4, 0xea60

    .line 10
    int-to-long v4, v4

    .line 11
    add-long/2addr v2, v4

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->updateTime:J

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 23
    :cond_0
    return-void
.end method
