.class final Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;
.super Lcom/narvii/chat/global/GlobalChatListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageResponse:Z

.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/GlobalChatsSearchFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/chat/global/GlobalChatListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    const-string p2, "search_key"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->getChatLaunchHelper()Lcom/narvii/chat/global/GlobalChatHelper;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string p2, "Global Chats Search"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->setSource(Ljava/lang/String;)V

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;

    .line 30
    .line 31
    const-class p2, Lcom/narvii/model/ChatThread;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v1, "/chat/thread/explore/search"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v1, "q"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    :cond_1
    const-string v1, "searchId"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x1

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "v"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v1, "language"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 87
    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ChatsSearchResult"

    return-object v0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    :goto_1
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/global/CategoryThreadResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/global/GlobalChatListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V

    iget-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 7
    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method public final setPageResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    return-void
.end method
