.class public final Lcom/narvii/chat/global/chat/AggregationChatFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REFRESH_COMMUNITY_LIST_DURATION:J

.field private static final REMINDER_CHECK_DURATION:J


# instance fields
.field private final INDEX_GLOBAL_CHAT:I

.field private final INDEX_RECENT_CHAT:I

.field public accountService:Lcom/narvii/account/AccountService;

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatContentFrame$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatFragments:Lcom/narvii/util/WeakLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/WeakLruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/chat/global/chat/CommunityChatFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final communityListView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private final receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final recentIndicator$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedNdcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    .line 32
    .line 33
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 34
    .line 35
    .line 36
    const v1, 0xea60

    .line 37
    .line 38
    .line 39
    const v2, 0x493e0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    move v3, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v3, v2

    .line 45
    :goto_0
    int-to-long v3, v3

    .line 46
    .line 47
    sput-wide v3, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v2

    .line 52
    :goto_1
    int-to-long v0, v1

    .line 53
    .line 54
    sput-wide v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REMINDER_CHECK_DURATION:J

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0379

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(I)Lw7/m;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListView$delegate:Lw7/m;

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a0be7

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(I)Lw7/m;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentView$delegate:Lw7/m;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a0cd5

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(I)Lw7/m;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentIndicator$delegate:Lw7/m;

    .line 34
    .line 35
    .line 36
    const v1, 0x7f0a0295

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->bind(I)Lw7/m;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatContentFrame$delegate:Lw7/m;

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/util/WeakLruCache;

    .line 47
    const/4 v1, 0x5

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/narvii/util/WeakLruCache;-><init>(I)V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 53
    .line 54
    sget-object v0, Lcom/narvii/chat/global/chat/AggregationChatFragment$binding$2;->INSTANCE:Lcom/narvii/chat/global/chat/AggregationChatFragment$binding$2;

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->binding$delegate:Lkotlin/properties/d;

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    .line 68
    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/narvii/chat/global/chat/AggregationChatFragment;)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getREFRESH_COMMUNITY_LIST_DURATION$cp()J
    .locals 2

    sget-wide v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$getREMINDER_CHECK_DURATION$cp()J
    .locals 2

    sget-wide v0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->REMINDER_CHECK_DURATION:J

    return-wide v0
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/global/chat/AggregationChatFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$bind$1;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 14
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/chat/global/chat/AggregationChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onViewCreated$lambda$1(Lcom/narvii/chat/global/chat/AggregationChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/global/chat/AggregationChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onViewCreated$lambda$0(Lcom/narvii/chat/global/chat/AggregationChatFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/chat/global/chat/AggregationChatFragment;Landroid/view/View;)V
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
    iget p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    .line 12
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/chat/global/chat/AggregationChatFragment;Landroid/view/View;)V
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
    iget p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    .line 12
    return-void
.end method

.method private final updateGlobalUnreadCount()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    iget-object v3, v3, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->globalNotificationCount:Lcom/narvii/widget/AutoScaleTextView;

    .line 32
    .line 33
    const/16 v4, 0x9

    .line 34
    .line 35
    if-le v0, v4, :cond_0

    .line 36
    .line 37
    const-string v0, "9+"

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->globalNotificationCount:Lcom/narvii/widget/AutoScaleTextView;

    .line 54
    .line 55
    if-lez v2, :cond_1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v1, 0x4

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getChatContentFrame()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatContentFrame$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "chatService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityList:Ljava/util/List;

    return-object v0
.end method

.method public final getCommunityListAdapter()Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    return-object v0
.end method

.method public final getCommunityListView()Lcom/narvii/widget/NVListView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 9
    return-object v0
.end method

.method public final getINDEX_GLOBAL_CHAT()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    return v0
.end method

.method public final getINDEX_RECENT_CHAT()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    return v0
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "myCommunityService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "chats"

    return-object v0
.end method

.method public final getRecentChatFragment()Lcom/narvii/chat/global/chat/RecentChatListFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    return-object v0
.end method

.method public final getRecentIndicator()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentIndicator$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getRecentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getSelectedNdcId()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    return v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f12028d

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    .line 18
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    .line 21
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string p2, "getRoot(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->receiver:Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 11
    return-void
.end method

.method public final onItemSelected(ILcom/narvii/model/Community;)V
    .locals 3
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 17
    .line 18
    if-nez p1, :cond_4

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;-><init>()V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    const-string v2, "ndcId"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    new-instance p1, Lcom/narvii/model/Community;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    .line 72
    .line 73
    iget v2, p2, Lcom/narvii/model/Community;->id:I

    .line 74
    .line 75
    iput v2, p1, Lcom/narvii/model/Community;->id:I

    .line 76
    .line 77
    iget-object v2, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v2, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 86
    .line 87
    iput-object p2, p1, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 p1, 0x0

    .line 90
    .line 91
    :goto_0
    const-string p2, "community"

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    move-object p1, v0

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    const-string v0, "beginTransaction(...)"

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const v0, 0x7f0a0295

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 145
    const/4 v0, 0x1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 149
    .line 150
    instance-of v0, p1, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    move-object v0, p1

    .line 154
    .line 155
    check-cast v0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;->refreshRecommendChat()V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v1

    .line 175
    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 183
    .line 184
    .line 185
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    move-result v2

    .line 187
    .line 188
    if-nez v2, :cond_7

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 192
    move-result v2

    .line 193
    .line 194
    if-nez v2, :cond_7

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 198
    .line 199
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 200
    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 204
    const/4 v2, 0x0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 208
    goto :goto_2

    .line 209
    .line 210
    .line 211
    :cond_8
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->m()V

    .line 212
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 5
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/MyCommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    .line 4
    const/4 p3, 0x0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p3

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_7

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/util/LruCache;->snapshot()Ljava/util/Map;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-string v2, "snapshot(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 63
    .line 64
    if-nez v3, :cond_2

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    check-cast v2, Ljava/util/Collection;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-nez v2, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Ljava/lang/Integer;

    .line 109
    .line 110
    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 111
    .line 112
    if-nez v0, :cond_5

    .line 113
    goto :goto_4

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 117
    move-result v2

    .line 118
    .line 119
    if-ne v2, v1, :cond_6

    .line 120
    .line 121
    iget v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0, p3}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    check-cast v1, Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 149
    .line 150
    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatFragments:Lcom/narvii/util/WeakLruCache;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    goto :goto_3

    .line 155
    .line 156
    :cond_7
    if-eqz p2, :cond_8

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    instance-of p1, p1, Lcom/narvii/master/MasterTabFragment;

    .line 163
    .line 164
    if-eqz p1, :cond_8

    .line 165
    .line 166
    iget-boolean p1, p2, Lcom/narvii/community/MyCommunityListResponse;->showStoreBadge:Z

    .line 167
    .line 168
    if-eqz p1, :cond_8

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    const-string p2, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->setStoreBadged()V

    .line 183
    :cond_8
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    .line 4
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/CommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateGlobalUnreadCount()V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0600a1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    :cond_0
    const-string p2, "myCommunityList"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const-string v0, "getService(...)"

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast p2, Lcom/narvii/community/MyCommunityListService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V

    .line 45
    .line 46
    const-string p2, "chat"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->setChatService(Lcom/narvii/chat/core/ChatService;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 66
    .line 67
    const-string p2, "account"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->setAccountService(Lcom/narvii/account/AccountService;)V

    .line 80
    .line 81
    new-instance p2, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getCommunityListView()Lcom/narvii/widget/NVListView;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 103
    .line 104
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 105
    .line 106
    if-eqz p2, :cond_1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->onAttach()V

    .line 110
    .line 111
    :cond_1
    new-instance p2, Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 112
    .line 113
    .line 114
    invoke-direct {p2}, Lcom/narvii/chat/global/chat/RecentChatListFragment;-><init>()V

    .line 115
    .line 116
    iput-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const v1, 0x7f0a0295

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getRecentView()Landroid/view/View;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    new-instance v0, Lcom/narvii/chat/global/chat/a;

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/a;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 159
    move-result p2

    .line 160
    const/4 v0, 0x0

    .line 161
    .line 162
    if-eqz p2, :cond_2

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, v0}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 170
    .line 171
    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 173
    move-result-object p2

    .line 174
    .line 175
    iget-object p2, p2, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 176
    .line 177
    iget-object p2, p2, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->rootGlobalLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 178
    .line 179
    new-instance v1, Lcom/narvii/chat/global/chat/b;

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/chat/b;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    const p2, 0x7f0a0853

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    move-result-object p2

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    instance-of v1, v1, Lcom/narvii/master/MasterTabFragment;

    .line 199
    .line 200
    const/16 v2, 0x8

    .line 201
    .line 202
    if-eqz v1, :cond_3

    .line 203
    move v1, v0

    .line 204
    goto :goto_0

    .line 205
    :cond_3
    move v1, v2

    .line 206
    .line 207
    .line 208
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    const p2, 0x7f0a01f8

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 219
    move-result-object p2

    .line 220
    .line 221
    instance-of p2, p2, Lcom/narvii/master/MasterTabFragment;

    .line 222
    .line 223
    if-eqz p2, :cond_4

    .line 224
    move p2, v0

    .line 225
    goto :goto_1

    .line 226
    :cond_4
    move p2, v2

    .line 227
    .line 228
    .line 229
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 236
    .line 237
    iget-object p1, p1, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->rootGlobalLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 241
    move-result-object p2

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 245
    move-result p2

    .line 246
    .line 247
    if-eqz p2, :cond_5

    .line 248
    goto :goto_2

    .line 249
    :cond_5
    move v0, v2

    .line 250
    .line 251
    .line 252
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateGlobalUnreadCount()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->updateLeftNav()V

    .line 259
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setChatService(Lcom/narvii/chat/core/ChatService;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public final setCommunityList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityList:Ljava/util/List;

    return-void
.end method

.method public final setCommunityListAdapter(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setRecentChatFragment(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/global/chat/RecentChatListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->recentChatFragment:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    return-void
.end method

.method public final setSelectedNdcId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    return-void
.end method

.method public final setStoreBadged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/master/MasterTabFragment;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->setStoreBadged()V

    .line 18
    :cond_1
    return-void
.end method

.method public final updateLeftNav()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getRecentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    .line 9
    .line 10
    .line 11
    const v3, 0x10ffffff

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v4

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getRecentIndicator()Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_RECENT_CHAT:I

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    move v1, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v5

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->globalSelectedIndicator:Landroid/widget/ImageView;

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 49
    .line 50
    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    .line 51
    .line 52
    if-ne v1, v2, :cond_2

    .line 53
    move v5, v4

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->rootGlobalLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 65
    .line 66
    iget v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->selectedNdcId:I

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->INDEX_GLOBAL_CHAT:I

    .line 69
    .line 70
    if-ne v1, v2, :cond_3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v3, v4

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment;->communityListAdapter:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 83
    :cond_4
    return-void
.end method
