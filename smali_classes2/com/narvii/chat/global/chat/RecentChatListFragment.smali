.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "RecentChatListFragment.kt"

# interfaces
.implements Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;,
        Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;,
        Lcom/narvii/chat/global/chat/RecentChatListFragment$ExplorChatAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatListFragment.kt\ncom/narvii/chat/global/chat/RecentChatListFragment\n*L\n1#1,376:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountService:Lcom/narvii/account/AccountService;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field public chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

.field public chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private needFetchDataWhenResume:Z

.field private recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAccountService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "accountService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "chatService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getGlobalChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "globalChatService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setAccountService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$setChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public static final synthetic access$setGlobalChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 63
    new-instance p1, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 64
    new-instance p1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 67
    new-instance v0, Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V

    .line 68
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v1, Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 71
    iput-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 73
    new-instance v2, Lcom/narvii/chat/global/chat/RecentChatListFragment$createAdapter$mergeAdapter$1;

    invoke-direct {v2, p0, v1, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/chat/global/chat/RecommendChatAdapter;Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x1

    .line 88
    invoke-virtual {v2, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 89
    invoke-virtual {v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance p1, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;

    invoke-direct {p1, v1}, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;-><init>(Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance p1, Lcom/narvii/chat/global/chat/RecentChatListFragment$ExplorChatAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ExplorChatAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v2
.end method

.method protected externalOffset()I
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    mul-int v1, v1, v0

    return v1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatListAdapter()Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    return-object v0
.end method

.method public final getChatRequestHelper()Lcom/narvii/chat/util/ChatRequestHelper;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatRequestHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNeedFetchDataWhenResume()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Recent"

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    .line 132
    iget-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    .line 134
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "globalChat"

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"globalChat\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/util/GlobalChatService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    const-string p1, "account"

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "chat"

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"chat\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 55
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const-string p1, "api"

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getService(\"api\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 57
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 58
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)V

    return-void

    :cond_0
    const-string p1, "globalChatService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_2
    const-string p1, "chatService"

    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/GlobalChatService;->removeRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)Z

    .line 149
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "globalChatService"

    .line 148
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 2

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_2

    .line 370
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getRecentChatList()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_2

    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    const-string v0, "chatMessageDto!!.chatMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_2
    return-void
.end method

.method public onRecentChatListChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    goto :goto_0

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRedDotChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    :cond_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x2

    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 113
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const p1, 0x7f0b01f1

    .line 114
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090724

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 116
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 117
    new-instance p2, Lcom/narvii/chat/global/chat/RecentChatListFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const-string p2, "listView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public refreshRecommendChat()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->refreshWithRateControl()V

    :cond_0
    return-void
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setChatListAdapter(Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    return-void
.end method

.method public final setChatRequestHelper(Lcom/narvii/chat/util/ChatRequestHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    return-void
.end method

.method public final setNeedFetchDataWhenResume(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    return-void
.end method
