.class public final Lcom/narvii/chat/service/MyChatListService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/service/MyChatListService$Companion;,
        Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyChatListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyChatListService.kt\ncom/narvii/chat/service/MyChatListService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/service/MyChatListService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "MyChatListService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatHelper:Lcom/narvii/chat/util/ChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatService:Lcom/narvii/chat/core/ChatService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private communityId:I

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observers:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/service/MyChatListObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/service/MyChatListService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/service/MyChatListService$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/service/MyChatListService;->Companion:Lcom/narvii/chat/service/MyChatListService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "getContext(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 34
    .line 35
    const-string v0, "chat"

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "getService(...)"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 49
    .line 50
    const-string v0, "account"

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->accountService:Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;-><init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/app/NVContext;)V

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 69
    .line 70
    new-instance v1, Lcom/narvii/chat/service/MyChatListService$receiver$1;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/narvii/chat/service/MyChatListService$receiver$1;-><init>(Lcom/narvii/chat/service/MyChatListService;)V

    .line 74
    .line 75
    iput-object v1, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    .line 77
    const-string v1, "config"

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 87
    move-result v1

    .line 88
    .line 89
    iput v1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    .line 90
    .line 91
    const-string v1, "notification"

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    .line 101
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListService;->dispatchChatListChange$lambda$2(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;Lcom/narvii/chat/service/MyChatListObserver;)V

    return-void
.end method

.method private static final dispatchChatListChange$lambda$2(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p0, p1}, Lcom/narvii/chat/service/MyChatListObserver;->onMyChatListChanged(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/service/MyChatListObserver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/chat/thread/ThreadListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/service/a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/service/a;-><init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public final errorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final errorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 6
    return-void
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object v0
.end method

.method public final getChatRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/chat/service/MyChatListService;->requestTime:J

    return-wide v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public final getCommunityId()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    return v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getErrorMessageValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->getErrorMessageValue()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getObservers()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/service/MyChatListObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public final getReceiver$Amino_bundle()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getRequestTime$Amino_bundle()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/chat/service/MyChatListService;->requestTime:J

    return-wide v0
.end method

.method public final isEnd()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method

.method public final loadNextPage(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 6
    return-void
.end method

.method public final onAttach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->onAttach()V

    .line 6
    return-void
.end method

.method public final onCreate(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "getInstance(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    new-instance v1, Landroid/content/IntentFilter;

    .line 32
    .line 33
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 40
    return-void
.end method

.method public final onDestroy(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "getInstance(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 33
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0
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
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    .line 13
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

.method public final refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method public final removeObserver(Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/service/MyChatListObserver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final resetList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 6
    return-void
.end method

.method public final setCommunityId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    return-void
.end method

.method public final setRequestTime$Amino_bundle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/chat/service/MyChatListService;->requestTime:J

    return-void
.end method
