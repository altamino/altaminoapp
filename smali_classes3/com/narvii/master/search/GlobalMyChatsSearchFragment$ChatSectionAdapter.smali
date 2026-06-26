.class public final Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;
.super Lcom/narvii/chat/thread/MyThreadListAdapter;
.source "GlobalMyChatsSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalMyChatsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChatSectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalMyChatsSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalMyChatsSearchFragment.kt\ncom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter\n*L\n1#1,132:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Lcom/narvii/app/NVContext;)V
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

    .line 92
    iput-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/chat/thread/MyThreadListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public communityMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getCommunityMap$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 95
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "chat/thread/search"

    .line 97
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "ApiRequest.Builder()\n   \u2026thLocalAsDefault).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instantSearchListener.keyword"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 113
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v3, "instantSearchListener.keyword"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
