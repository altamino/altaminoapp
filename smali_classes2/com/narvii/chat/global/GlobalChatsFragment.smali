.class public final Lcom/narvii/chat/global/GlobalChatsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalChatsFragment.kt"

# interfaces
.implements Lcom/narvii/master/MasterTopOffsetAdapter;
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/master/MasterTopBarAvailable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;,
        Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatsFragment.kt\ncom/narvii/chat/global/GlobalChatsFragment\n*L\n1#1,321:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

.field private needForceUpdateRecentChatList:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGlobalChatService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "globalChatService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getLanguageService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "languageService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setGlobalChatService$p(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    return-void
.end method

.method public static final synthetic access$setLanguageService$p(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 176
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 177
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 178
    new-instance v3, Lcom/narvii/widget/NVListOverlay;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/narvii/widget/NVListOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 179
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    new-instance v0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;-><init>(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 181
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42960000    # 75.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected externalOffset()I
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method protected forceShowListWhenEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GlobalChats"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->needForceUpdateRecentChatList:Z

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/GlobalChatService;->tryUpdateChatThreadUnread(Z)V

    .line 110
    iget-boolean p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->needForceUpdateRecentChatList:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->needForceUpdateRecentChatList:Z

    goto :goto_0

    :cond_0
    const-string p1, "globalChatService"

    .line 109
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f024a

    .line 54
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 55
    new-instance v0, Lcom/narvii/master/MasterShareTabHelper;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterShareTabHelper;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    const-string v0, "globalChat"

    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"globalChat\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    const-string v0, "content_language"

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"content_language\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string v0, "community"

    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"community\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->communityService:Lcom/narvii/community/CommunityService;

    const-string v0, "chat"

    .line 59
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"chat\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 60
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    if-eqz p1, :cond_0

    const-string v0, "itemHeightArray"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0, v0}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterShareTabHelper;->setItemHeightArray(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_1
    const-string p1, "masterShareTabHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_3
    const-string p1, "chatService"

    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-eqz p1, :cond_0

    const p2, 0x7f0f0f48

    const/4 v0, 0x0

    .line 80
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0804cf

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02a9

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 118
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatsFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_0
    const-string v0, "languageService"

    .line 118
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/list/NVAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.list.NVAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onNavigateToChat(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "threadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Recent Global Chats"

    .line 155
    invoke-static {p2, v0}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 157
    const-class v1, Lcom/narvii/chat/ChatFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    .line 158
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "__communityId"

    .line 160
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->communityService:Lcom/narvii/community/CommunityService;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "__community"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p2, "__hideDrawer"

    .line 162
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "__fromGlobalChat"

    .line 163
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "fromRecentChat"

    .line 164
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "Source"

    .line 165
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iput-boolean p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->needForceUpdateRecentChatList:Z

    .line 167
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "communityService"

    .line 161
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 3

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    const-string v0, "globalChatService"

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    return-void

    .line 245
    :cond_3
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Lcom/narvii/chat/util/GlobalChatService;->isThreadUnread(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 248
    :cond_4
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 249
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckTable(Lcom/narvii/chat/util/ChatMessageDto;)V

    .line 250
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-eqz p1, :cond_5

    iget-boolean p2, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->needForceUpdateRecentChatList:Z

    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/GlobalChatService;->tryUpdateChatThreadUnread(Z)V

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "chatService"

    .line 249
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    return-void

    .line 248
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0f48

    if-ne v0, v1, :cond_0

    .line 85
    const-class p1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tab"

    const-string v1, "chat"

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 132
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/GlobalChatService;->tryUpdateChatThreadUnread(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.list.NVAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "globalChatService"

    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/MasterShareTabHelper;->getItemHeightArray()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemHeightArray"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "masterShareTabHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b0321

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 73
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterShareTabHelper;->attachToList(Lcom/narvii/widget/NVListView;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    return-void

    :cond_1
    const-string p1, "languageService"

    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 73
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "masterShareTabHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public resetOffset()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/MasterShareTabHelper;->resetOffsetViewTranslation()V

    goto :goto_0

    :cond_0
    const-string v0, "masterShareTabHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public topOffsetHeight()I
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method
