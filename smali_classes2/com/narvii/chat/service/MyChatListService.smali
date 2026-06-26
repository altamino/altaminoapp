.class public final Lcom/narvii/chat/service/MyChatListService;
.super Ljava/lang/Object;
.source "MyChatListService.kt"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyChatListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyChatListService.kt\ncom/narvii/chat/service/MyChatListService\n*L\n1#1,279:1\n*E\n"
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private final adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

.field private final chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private final chatService:Lcom/narvii/chat/core/ChatService;

.field private communityId:I

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final observers:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/service/MyChatListObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private requestTime:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    .line 40
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 41
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 42
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "chat"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"chat\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->accountService:Lcom/narvii/account/AccountService;

    .line 44
    new-instance p1, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;-><init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    .line 48
    new-instance p1, Lcom/narvii/chat/service/MyChatListService$receiver$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/service/MyChatListService$receiver$1;-><init>(Lcom/narvii/chat/service/MyChatListService;)V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const-string v0, "configService"

    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    .line 60
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 61
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;-><init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final errorMessage()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final errorRetry()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    return-void
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object v0
.end method

.method public final getChatRequestTime()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/narvii/chat/service/MyChatListService;->requestTime:J

    return-wide v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public final getCommunityId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    return v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getErrorMessageValue()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->getErrorMessageValue()Ljava/lang/String;

    move-result-object v0

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

    .line 40
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public final getReceiver$Amino_bundle()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getRequestTime$Amino_bundle()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/narvii/chat/service/MyChatListService;->requestTime:J

    return-wide v0
.end method

.method public final isEnd()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

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

    .line 98
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final loadNextPage(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    return-void
.end method

.method public final onAttach()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->onAttach()V

    return-void
.end method

.method public final onCreate(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    const-string v0, "LocalBroadcastManager.getInstance(ctx?.context!!)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 67
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public final onDestroy(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    const-string v0, "LocalBroadcastManager.getInstance(ctx?.context!!)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 73
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public final removeObserver(Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->observers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final resetList()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService;->adapter:Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method public final setCommunityId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/narvii/chat/service/MyChatListService;->communityId:I

    return-void
.end method

.method public final setRequestTime$Amino_bundle(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/narvii/chat/service/MyChatListService;->requestTime:J

    return-void
.end method
