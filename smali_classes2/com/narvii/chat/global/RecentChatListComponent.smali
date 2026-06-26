.class public final Lcom/narvii/chat/global/RecentChatListComponent;
.super Landroid/widget/LinearLayout;
.source "RecentChatListComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;,
        Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;,
        Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatListComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatListComponent.kt\ncom/narvii/chat/global/RecentChatListComponent\n*L\n1#1,146:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final CHAT_ROOM_TYPE_GROUP:I

.field private final CHAT_ROOM_TYPE_ONE_ON_ONE:I

.field private final CHAT_ROOM_TYPE_PUBLIC:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private final chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private final communityService:Lcom/narvii/community/CommunityService;

.field private final globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

.field private final recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

.field private final recentChatListBar$delegate:Lkotlin/Lazy;

.field private shownInAdapter:Lcom/narvii/list/NVAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "recentChatListBar"

    const-string v4, "getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/global/RecentChatListComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_GROUP:I

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_PUBLIC:I

    const v0, 0x7f090929

    .line 36
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/global/RecentChatListComponent;->bind(Lcom/narvii/chat/global/RecentChatListComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListBar$delegate:Lkotlin/Lazy;

    .line 37
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 38
    new-instance v0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;)V

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "globalChat"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "community"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->communityService:Lcom/narvii/community/CommunityService;

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0109

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_GROUP:I

    const/4 p2, 0x2

    .line 34
    iput p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_PUBLIC:I

    const p2, 0x7f090929

    .line 36
    invoke-direct {p0, p0, p2}, Lcom/narvii/chat/global/RecentChatListComponent;->bind(Lcom/narvii/chat/global/RecentChatListComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListBar$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 38
    new-instance p2, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;)V

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "globalChat"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "community"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityService;

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->communityService:Lcom/narvii/community/CommunityService;

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0109

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getCHAT_ROOM_TYPE_GROUP$p(Lcom/narvii/chat/global/RecentChatListComponent;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_GROUP:I

    return p0
.end method

.method public static final synthetic access$getCHAT_ROOM_TYPE_ONE_ON_ONE$p(Lcom/narvii/chat/global/RecentChatListComponent;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->CHAT_ROOM_TYPE_ONE_ON_ONE:I

    return p0
.end method

.method public static final synthetic access$getGlobalChatService$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    return-object p0
.end method

.method public static final synthetic access$getNavigateToChatCallback$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    return-object p0
.end method

.method public static final synthetic access$getShownInAdapter$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-object p0
.end method

.method public static final synthetic access$setNavigateToChatCallback$p(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    return-void
.end method

.method public static final synthetic access$setShownInAdapter$p(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method private final bind(Lcom/narvii/chat/global/RecentChatListComponent;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/RecentChatListComponent;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/global/RecentChatListComponent$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$bind$1;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListBar$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/RecentChatListComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent;->getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent;->getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setRecentChats(Ljava/util/ArrayList;Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;)V
    .locals 1
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

    const-string v0, "chats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->navigateToChatCallback:Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    .line 72
    iget-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent;->recentChatListAdapter:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->updateChatList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setShownInAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method
