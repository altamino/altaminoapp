.class public final Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "pagingConfiguration"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->getModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/thread/ThreadListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 3
    iget p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->allItemCount:I

    invoke-static {p1, p3}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;I)V

    .line 4
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 6
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    iget-object v1, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 7
    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v2, "threadId"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 8
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 10
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_2
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 12
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getCommunityMapping$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method
