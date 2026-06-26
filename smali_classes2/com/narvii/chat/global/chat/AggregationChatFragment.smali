.class public final Lcom/narvii/chat/global/chat/AggregationChatFragment;
.super Lcom/narvii/app/NVFragment;
.source "AggregationChatFragment.kt"

# interfaces
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/master/MasterTopBarAvailable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;,
        Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAggregationChatFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregationChatFragment.kt\ncom/narvii/chat/global/chat/AggregationChatFragment\n*L\n1#1,420:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

.field private static final REFRESH_COMMUNITY_LIST_DURATION:J

.field private static final REMINDER_CHECK_DURATION:J


# instance fields
.field private final INDEX_GLOBAL_CHAT:I

.field private final INDEX_RECENT_CHAT:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field private final chatContentFrame$delegate:Lkotlin/Lazy;

.field private final chatFragments:Lcom/narvii/util/WeakLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/WeakLruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/chat/global/chat/CommunityChatFragment;",
            ">;"
        }
    .end annotation
.end field

.field public chatService:Lcom/narvii/chat/core/ChatService;

.field private communityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

.field private final communityListView$delegate:Lkotlin/Lazy;

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private final receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

.field private recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

.field private final recentIndicator$delegate:Lkotlin/Lazy;

.field private final recentView$delegate:Lkotlin/Lazy;

.field private selectedNdcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "communityListView"

    const-string v4, "getCommunityListView()Lcom/narvii/widget/NVListView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "recentView"

    const-string v4, "getRecentView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "recentIndicator"

    const-string v4, "getRecentIndicator()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "chatContentFrame"

    const-string v4, "getChatContentFrame()Landroid/widget/FrameLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    .line 81
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const v1, 0xea60

    const v2, 0x493e0

    if-eqz v0, :cond_0

    const v0, 0xea60

    goto :goto_0

    :cond_0
    const v0, 0x493e0

    :goto_0
    int-to-long v3, v0

    sput-wide v3, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 82
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x493e0

    :goto_1
    int-to-long v0, v1

    sput-wide v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REMINDER_CHECK_DURATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    const v0, 0x7f0902b3

    .line 54
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListView$delegate:Lkotlin/Lazy;

    const v0, 0x7f09092a

    .line 55
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentView$delegate:Lkotlin/Lazy;

    const v0, 0x7f090a0e

    .line 56
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentIndicator$delegate:Lkotlin/Lazy;

    const v0, 0x7f0901de

    .line 57
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatContentFrame$delegate:Lkotlin/Lazy;

    .line 59
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    iput v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 63
    new-instance v0, Lcom/narvii/util/WeakLruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/narvii/util/WeakLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 67
    new-instance v0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    return-void
.end method

.method public static final synthetic access$getREFRESH_COMMUNITY_LIST_DURATION$cp()J
    .locals 2

    .line 43
    sget-wide v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$getREMINDER_CHECK_DURATION$cp()J
    .locals 2

    .line 43
    sget-wide v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REMINDER_CHECK_DURATION:J

    return-wide v0
.end method

.method private final bind(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/chat/AggregationChatFragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 164
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/global/chat/AggregationChatFragment$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment$bind$1;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatContentFrame()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatContentFrame$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getChatFragments()Lcom/narvii/util/WeakLruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/WeakLruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/chat/global/chat/CommunityChatFragment;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCommunityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityList:Ljava/util/List;

    return-object v0
.end method

.method public final getCommunityListAdapter()Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    return-object v0
.end method

.method public final getCommunityListView()Lcom/narvii/widget/NVListView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    return-object v0
.end method

.method public final getINDEX_GLOBAL_CHAT()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    return v0
.end method

.method public final getINDEX_RECENT_CHAT()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    return v0
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myCommunityService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Chats"

    return-object v0
.end method

.method public final getRecentChatFragment()Lcom/narvii/chat/global/chat/RecentChatListFragment;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    return-object v0
.end method

.method public final getRecentIndicator()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentIndicator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getRecentView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getSelectedNdcId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    return v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f024a

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b027a

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 161
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_0
    const-string v0, "myCommunityService"

    .line 160
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onItemSelected(ILcom/narvii/model/Community;)V
    .locals 4

    .line 309
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 312
    :cond_0
    iput p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 313
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    .line 315
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 316
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    if-nez p1, :cond_4

    .line 318
    new-instance p1, Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-direct {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 319
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    goto :goto_1

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    if-nez v0, :cond_2

    .line 324
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;-><init>()V

    .line 325
    iget-object v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ndcId"

    .line 328
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    .line 331
    new-instance p1, Lcom/narvii/model/Community;

    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    .line 332
    iget v3, p2, Lcom/narvii/model/Community;->id:I

    iput v3, p1, Lcom/narvii/model/Community;->id:I

    .line 333
    iget-object v3, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    iput-object v3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 334
    iget-object v3, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    iput-object v3, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 335
    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p1, v1

    .line 337
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "community"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object p1, v0

    .line 340
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 341
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "childFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f0901de

    if-eqz p1, :cond_5

    .line 342
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_6
    :goto_2
    if-eqz p1, :cond_b

    .line 344
    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 345
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 346
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 348
    :cond_7
    instance-of v0, p1, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;

    if-eqz v0, :cond_8

    .line 349
    move-object v0, p1

    check-cast v0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;

    invoke-interface {v0}, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;->refreshRecommendChat()V

    .line 351
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 352
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_9

    const-string v3, "ff"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_9

    .line 353
    invoke-virtual {p2, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 354
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_9

    .line 355
    check-cast v2, Lcom/narvii/app/NVFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    goto :goto_3

    .line 359
    :cond_a
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void

    .line 344
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_7

    .line 369
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    const-string v1, "chatFragments.snapshot()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/global/chat/CommunityChatFragment;

    if-nez v2, :cond_2

    goto :goto_2

    .line 371
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 374
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 380
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 381
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 382
    iget p3, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    invoke-virtual {p0, p3, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    goto :goto_3

    .line 385
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {v0, p3}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 386
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 387
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {v0, p3}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 393
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateGlobalUnreadCount()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06007d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const-string p2, "myCommunityList"

    .line 116
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getService(\"myCommunityList\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/community/MyCommunityListService;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    const-string p2, "chat"

    .line 117
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getService(\"chat\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/chat/core/ChatService;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 118
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const-string v0, "chatService"

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const-string p2, "account"

    .line 119
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "getService(\"account\")"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 121
    new-instance p2, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    invoke-direct {p2, p0, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 122
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getCommunityListView()Lcom/narvii/widget/NVListView;

    move-result-object p2

    iget-object v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    invoke-virtual {p2, v2}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 124
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->onAttach()V

    .line 126
    :cond_1
    new-instance p2, Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-direct {p2}, Lcom/narvii/chat/global/chat/RecentChatListFragment;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v2, 0x7f0901de

    .line 128
    iget-object v3, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    if-eqz v3, :cond_9

    invoke-virtual {p2, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 129
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 131
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getRecentView()Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v2, "accountService"

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 136
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v3}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_3
    :goto_0
    sget p2, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$2;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0906c5

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById<View>(\u2026d.master_top_placeholder)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    const/16 v4, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09015c

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById<View>(R.id.bottom_place_holder)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    sget p2, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.global_layout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateGlobalUnreadCount()V

    .line 147
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    return-void

    .line 145
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_a
    const-string p1, "myCommunityService"

    .line 123
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setChatService(Lcom/narvii/chat/core/ChatService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public final setCommunityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityList:Ljava/util/List;

    return-void
.end method

.method public final setCommunityListAdapter(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setRecentChatFragment(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    return-void
.end method

.method public final setSelectedNdcId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    return-void
.end method

.method public final updateGlobalUnreadCount()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const/4 v1, 0x0

    const-string v2, "chatService"

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v0

    .line 153
    iget-object v4, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v1

    .line 154
    sget v2, Lcom/narvii/amino/R$id;->global_notification_count:I

    invoke-virtual {p0, v2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/AutoScaleTextView;

    if-eqz v2, :cond_1

    const/16 v4, 0x9

    if-le v0, v4, :cond_0

    const-string v0, "9+"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_1
    sget v0, Lcom/narvii/amino/R$id;->global_notification_count:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoScaleTextView;

    if-eqz v0, :cond_3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    .line 153
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateLeftNav()V
    .locals 6

    .line 398
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getRecentView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    const v3, 0x10ffffff

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const v1, 0x10ffffff

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 399
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getRecentIndicator()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    const/16 v5, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    sget v0, Lcom/narvii/amino/R$id;->global_selected_indicator:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "global_selected_indicator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    if-ne v1, v2, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    sget v0, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 402
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
