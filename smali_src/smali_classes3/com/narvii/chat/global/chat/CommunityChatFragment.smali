.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$Companion;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorChatAdapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorerGlobalChatAdapter;
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

.field public static final Companion:Lcom/narvii/chat/global/chat/CommunityChatFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CommunityChatFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field public adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field public chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field public chatService:Lcom/narvii/chat/core/ChatService;

.field private communityIconView:Lcom/narvii/widget/CommunityIconView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private communityLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private communityTitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private ndcId:I

.field private needRefreshWhenResume:Z

.field private popupWindow:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pushService:Lcom/narvii/pushservice/PushService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/chat/global/chat/CommunityChatFragment;

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
    sput-object v0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->Companion:Lcom/narvii/chat/global/chat/CommunityChatFragment$Companion;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$binding$2;->INSTANCE:Lcom/narvii/chat/global/chat/CommunityChatFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    .line 19
    return-void
.end method

.method public static final synthetic access$isAnnouncementMsg(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/CommunityChatFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->needRefreshWhenResume:Z

    .line 3
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/chat/global/chat/CommunityChatFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;

    .line 14
    return-object v0
.end method

.method private final isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->msgType:I

    .line 3
    .line 4
    const/16 v0, 0x79

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/model/Community;Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string v0, "CommunityBar"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 27
    .line 28
    new-instance p2, Lcom/narvii/community/CommunityLaunchHelper;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 32
    const/4 p1, 0x0

    .line 33
    .line 34
    iput-boolean p1, p2, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    .line 35
    .line 36
    iget p1, p0, Lcom/narvii/model/Community;->id:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, p0}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;)V

    .line 40
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
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
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
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
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 2

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
    const-class p1, Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "ndcId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    .line 34
    const-string v1, "__communityId"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
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
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;->setting:Lcom/narvii/widget/TintButton;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/widget/TintButton;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->show()V

    .line 22
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

.method public static synthetic t(Lcom/narvii/model/Community;Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated$lambda$0(Lcom/narvii/model/Community;Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated$lambda$2(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated$lambda$3(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated$lambda$4(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated$lambda$1(Lcom/narvii/chat/global/chat/CommunityChatFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p1, "ndcId"

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    const/4 v2, 0x2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 53
    .line 54
    iget v3, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 55
    .line 56
    new-instance v4, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$recommendAdapter$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$recommendAdapter$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, v3, v4}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;-><init>(Lcom/narvii/app/NVContext;ILe8/l;)V

    .line 63
    .line 64
    iput-object v2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 65
    .line 66
    new-instance v3, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, p0, v2}, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;-><init>(Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    new-instance p1, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorerGlobalChatAdapter;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorerGlobalChatAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_1
    new-instance p1, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorChatAdapter;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorChatAdapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    :goto_0
    return-object v3
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

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->accountService:Lcom/narvii/account/AccountService;

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

.method public final getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "adapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

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

.method public final getChatRequestHelper()Lcom/narvii/chat/util/ChatRequestHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

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

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

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

.method public final getCommunityIconView()Lcom/narvii/widget/CommunityIconView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    return-object v0
.end method

.method public final getCommunityLayout()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getCommunityTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMyChatManagePopUp()Lcom/narvii/chat/thread/MyChatManagePopUp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-object v0
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

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

.method public final getNdcId()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    if-nez v0, :cond_0

    const-string v0, "global_chat"

    return-object v0

    :cond_0
    const-string v0, "community_chat"

    return-object v0
.end method

.method public final getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->popupWindow:Landroid/widget/PopupWindow;

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 15
    .line 16
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->needRefreshWhenResume:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const/16 v0, 0x100

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 39
    :cond_2
    :goto_0
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
    const-string p1, "myCommunityList"

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
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V

    .line 20
    .line 21
    const-string p1, "ndcId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "requireContext(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V

    .line 45
    .line 46
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setChatRequestHelper(Lcom/narvii/chat/util/ChatRequestHelper;)V

    .line 53
    .line 54
    const-string p1, "chat"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setChatService(Lcom/narvii/chat/core/ChatService;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1, p0}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 76
    .line 77
    const-string p1, "account"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setAccountService(Lcom/narvii/account/AccountService;)V

    .line 90
    .line 91
    const-string p1, "push"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 100
    .line 101
    new-instance p1, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setAdapter(Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;)V

    .line 108
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
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;->getRoot()Landroid/widget/LinearLayout;

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 13
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 17
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 1
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
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 22
    .line 23
    const-string v0, "chatMessage"

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    .line 17
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
    const/4 p2, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a036b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a038a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    const p2, 0x7f0a0371

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    .line 55
    .line 56
    const-string p1, "community"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-class p2, Lcom/narvii/model/Community;

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    check-cast p1, Lcom/narvii/model/Community;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 71
    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 76
    .line 77
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    .line 78
    .line 79
    if-nez p2, :cond_1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    :goto_1
    iget-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    new-instance v0, Lcom/narvii/chat/global/chat/h;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, p1, p0}, Lcom/narvii/chat/global/chat/h;-><init>(Lcom/narvii/model/Community;Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    :cond_3
    iget p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 104
    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    .line 108
    const p1, 0x7f0d020d

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    const p2, 0x7f0a098e

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    new-instance p2, Lcom/narvii/chat/global/chat/i;

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/i;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :cond_4
    const p1, 0x7f0d020b

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    const p2, 0x7f0a04e9

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    if-eqz p2, :cond_5

    .line 147
    .line 148
    new-instance v0, Lcom/narvii/chat/global/chat/j;

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/j;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    const p2, 0x7f0a0543

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    new-instance p2, Lcom/narvii/chat/global/chat/k;

    .line 166
    .line 167
    .line 168
    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/k;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;->setting:Lcom/narvii/widget/TintButton;

    .line 178
    .line 179
    new-instance p2, Lcom/narvii/chat/global/chat/l;

    .line 180
    .line 181
    .line 182
    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/l;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method public refreshRecommendChat()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

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

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setAdapter(Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

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

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

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

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

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

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public final setCommunityIconView(Lcom/narvii/widget/CommunityIconView;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/CommunityIconView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    return-void
.end method

.method public final setCommunityLayout(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    return-void
.end method

.method public final setCommunityTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setMyChatManagePopUp(Lcom/narvii/chat/thread/MyChatManagePopUp;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/thread/MyChatManagePopUp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

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

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setNdcId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    return-void
.end method

.method public final setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method
