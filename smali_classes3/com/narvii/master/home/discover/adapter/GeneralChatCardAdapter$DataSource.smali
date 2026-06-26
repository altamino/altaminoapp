.class public final Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "GeneralChatCardAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "nvContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagingConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->getModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 3

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 107
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    iget p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->allItemCount:I

    invoke-static {p1, p3}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;I)V

    .line 112
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    if-eqz p3, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 114
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    iget-object v1, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayList;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v2, "chat.threadId"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 127
    :cond_2
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getCommunityMapping$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 97
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;"
        }
    .end annotation

    .line 103
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method
