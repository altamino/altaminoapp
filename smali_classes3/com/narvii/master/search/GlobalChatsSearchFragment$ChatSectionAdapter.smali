.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;
.super Lcom/narvii/chat/thread/MyThreadListAdapter;
.source "GlobalChatsSearchFragment.kt"

# interfaces
.implements Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChatSectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatsSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatsSearchFragment.kt\ncom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

.field private threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field


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

    .line 279
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

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

    .line 317
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCommunityMap$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreResult()Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->threadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->threadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 2

    if-nez p1, :cond_0

    .line 292
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->threadList:Ljava/util/ArrayList;

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    const-string v1, "section.threadList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->threadList:Ljava/util/ArrayList;

    .line 295
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCommunityMap$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 298
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showHighLight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
