.class public final Lcom/narvii/chat/global/RecentChatListComponent;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;,
        Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;,
        Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;
    }
.end annotation


# instance fields
.field private final CHAT_ROOM_TYPE_GROUP:I

.field private final CHAT_ROOM_TYPE_ONE_ON_ONE:I

.field private final CHAT_ROOM_TYPE_PUBLIC:I

.field private final chatHelper:Lcom/narvii/chat/util/ChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communityService:Lcom/narvii/community/CommunityService;

.field private final globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentChatListBar$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shownInAdapter:Lcom/narvii/list/NVAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_GROUP:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_PUBLIC:I

    const v0, 0x7f0a0be6

    .line 2
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/global/RecentChatListComponent;->bind(Lcom/narvii/chat/global/RecentChatListComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListBar$delegate:Lw7/m;

    .line 3
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 4
    new-instance v0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;)V

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "globalChat"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "community"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->communityService:Lcom/narvii/community/CommunityService;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011f

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_GROUP:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_PUBLIC:I

    const p2, 0x7f0a0be6

    .line 9
    invoke-direct {p0, p0, p2}, Lcom/narvii/chat/global/RecentChatListComponent;->bind(Lcom/narvii/chat/global/RecentChatListComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListBar$delegate:Lw7/m;

    .line 10
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 11
    new-instance p2, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;)V

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "globalChat"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "community"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityService;

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->communityService:Lcom/narvii/community/CommunityService;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d011f

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getCHAT_ROOM_TYPE_GROUP$p(Lcom/narvii/chat/global/RecentChatListComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_GROUP:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getCHAT_ROOM_TYPE_ONE_ON_ONE$p(Lcom/narvii/chat/global/RecentChatListComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_ONE_ON_ONE:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getGlobalChatService$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNavigateToChatCallback$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getShownInAdapter$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    return-object p0
.end method

.method private final bind(Lcom/narvii/chat/global/RecentChatListComponent;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/RecentChatListComponent;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/global/RecentChatListComponent$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$bind$1;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListBar$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 9
    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent;->getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent;->getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    return-void
.end method

.method public final setRecentChats(Ljava/util/ArrayList;Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;",
            "Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "chats"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->updateChatList(Ljava/util/ArrayList;)V

    .line 13
    return-void
.end method

.method public final setShownInAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method
