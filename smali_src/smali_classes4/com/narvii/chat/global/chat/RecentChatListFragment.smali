.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;,
        Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;,
        Lcom/narvii/chat/global/chat/RecentChatListFragment$ExplorChatAdapter;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field public chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private needFetchDataWhenResume:Z

.field private recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getAccountService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGlobalChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 3
    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/chat/global/chat/RecentChatListFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "MoreChats"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    const-class p1, Lcom/narvii/chat/global/GlobalChatsFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/global/chat/RecentChatListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->onViewCreated$lambda$0(Lcom/narvii/chat/global/chat/RecentChatListFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/list/DividerAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/chat/global/chat/RecentChatListFragment$createAdapter$recommendAdapter$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$createAdapter$recommendAdapter$1;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, v3, v2}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;-><init>(Lcom/narvii/app/NVContext;ILe8/l;)V

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/chat/global/chat/RecentChatListFragment$createAdapter$mergeAdapter$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V

    .line 47
    const/4 v3, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v1}, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;-><init>(Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    .line 66
    new-instance p1, Lcom/narvii/chat/global/chat/RecentChatListFragment$ExplorChatAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ExplorChatAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-object v2
.end method

.method protected externalOffset()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0702f4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    mul-int/lit8 v0, v0, -0x1

    .line 18
    return v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "chatHelper"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getChatListAdapter()Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    return-object v0
.end method

.method public final getChatRequestHelper()Lcom/narvii/chat/util/ChatRequestHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "chatRequestHelper"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getNeedFetchDataWhenResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "chats"

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    .line 20
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "globalChat"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/chat/util/GlobalChatService;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 19
    .line 20
    const-string p1, "account"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 32
    .line 33
    const-string p1, "chat"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    const-string p1, "chatService"

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    move-object p1, v1

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 57
    .line 58
    const-string p1, "api"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const-string v2, "requireContext(...)"

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V

    .line 87
    .line 88
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->setChatRequestHelper(Lcom/narvii/chat/util/ChatRequestHelper;)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 97
    .line 98
    if-nez p1, :cond_1

    .line 99
    .line 100
    const-string p1, "globalChatService"

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move-object v1, p1

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-virtual {v1, p0}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "globalChatService"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    move-object v0, v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/GlobalChatService;->removeRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "chatService"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 32
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 2
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "chatMessageDto"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getRecentChatList()Ljava/util/ArrayList;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    .line 22
    :goto_0
    iget-object v1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v0, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 31
    .line 32
    if-ltz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 39
    .line 40
    const-string v0, "chatMessage"

    .line 41
    .line 42
    .line 43
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    .line 47
    :cond_2
    return-void
.end method

.method public onRecentChatListChanged(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public onRedDotChanged(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    .line 11
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
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    const/4 p1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f0d0210

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    const p2, 0x7f0a098e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 41
    .line 42
    new-instance p2, Lcom/narvii/chat/global/chat/m;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/m;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 60
    move-result-object p1

    .line 61
    const/4 p2, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 65
    return-void
.end method

.method public refreshRecommendChat()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->refreshWithRateControl()V

    .line 8
    :cond_0
    return-void
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/util/ChatHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setChatListAdapter(Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatListAdapter:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    return-void
.end method

.method public final setChatRequestHelper(Lcom/narvii/chat/util/ChatRequestHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/util/ChatRequestHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    return-void
.end method

.method public final setNeedFetchDataWhenResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment;->needFetchDataWhenResume:Z

    return-void
.end method
