.class final Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;
.super Lcom/narvii/chat/global/GlobalChatListAdapter;
.source "GlobalChatsSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatsSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatsSearchFragment.kt\ncom/narvii/master/search/GlobalChatsSearchFragment$Adapter\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;

.field private pageResponse:Z

.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/chat/global/GlobalChatListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "search_key"

    .line 219
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->getChatLaunchHelper()Lcom/narvii/chat/global/GlobalChatHelper;

    move-result-object p1

    const-string p2, "Global Chats Search"

    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->setSource(Ljava/lang/String;)V

    .line 224
    new-instance p1, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;

    const-class p2, Lcom/narvii/model/ChatThread;

    invoke-direct {p1, p0, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    const/4 p1, 0x0

    .line 238
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 239
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    return-object v0

    .line 243
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "/chat/thread/explore/search"

    .line 244
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 245
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    const-string v3, "q"

    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 246
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "searchId"

    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatsSearchResult"

    return-object v0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageResponse()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 266
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public isListShown()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V
    .locals 0

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/global/GlobalChatListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V

    .line 259
    iget-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 261
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 218
    check-cast p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    .line 275
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method public final setPageResponse(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->pageResponse:Z

    return-void
.end method
