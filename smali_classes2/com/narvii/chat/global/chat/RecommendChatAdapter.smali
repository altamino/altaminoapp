.class public final Lcom/narvii/chat/global/chat/RecommendChatAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "RecommendChatAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;,
        Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecommendChatAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendChatAdapter.kt\ncom/narvii/chat/global/chat/RecommendChatAdapter\n*L\n1#1,94:1\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private final ndcId:I

.field private updateTime:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput p2, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ndcId:I

    const/4 p1, -0x2

    .line 25
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 36
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "live-layer/public-chats"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "RecommendedChatList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getNdcId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->ndcId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p2, "view"

    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getViewLayoutId()I
    .locals 1

    const v0, 0x7f0b00b4

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 31
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_5

    .line 69
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/narvii/model/ChatThread;

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-nez v3, :cond_5

    if-eqz v2, :cond_1

    .line 70
    check-cast v2, Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    iput-object v0, v2, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 47
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    .line 50
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method public final refreshWithRateControl()V
    .locals 6

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    iget-wide v2, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->updateTime:J

    const v4, 0xea60

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 79
    iput-wide v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->updateTime:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
