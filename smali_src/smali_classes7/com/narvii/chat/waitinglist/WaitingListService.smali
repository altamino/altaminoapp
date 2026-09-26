.class public final Lcom/narvii/chat/waitinglist/WaitingListService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/waitinglist/WaitingListService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/waitinglist/WaitingListService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DONE:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/waitinglist/WaitingListListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final signallingService:Lcom/narvii/chat/signalling/SignallingService;

.field private final ws:Lcom/narvii/util/ws/WsService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/chat/waitinglist/WaitingListService$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->Companion:Lcom/narvii/chat/waitinglist/WaitingListService$Companion;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/util/Tag;

    .line 11
    .line 12
    const-string v1, "done"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
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
    const-string v0, "ws"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "getService(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    .line 24
    .line 25
    const-string v1, "signalling"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/chat/signalling/SignallingService;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 41
    .line 42
    iget-object p1, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService;->onWsMessage$lambda$0(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method

.method public static final synthetic access$getChannelByThread(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService;->onWsMessage$lambda$1(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method

.method public static synthetic c(Le8/l;Le8/l;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback2$lambda$3(Le8/l;Le8/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Le8/l;Le8/l;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback$lambda$2(Le8/l;Le8/l;Ljava/lang/Object;)V

    return-void
.end method

.method private final getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 14
    :cond_0
    return-object v0
.end method

.method private static final onWsMessage$lambda$0(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    return-void
.end method

.method private static final onWsMessage$lambda$1(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$oldlist"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p0, p1, v0}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 13
    return-void
.end method

.method private final wsCallback(Le8/l;Le8/l;)Lcom/narvii/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lcom/narvii/util/ws/WsMessage;",
            "+",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/waitinglist/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/waitinglist/a;-><init>(Le8/l;Le8/l;)V

    .line 6
    return-object v0
.end method

.method private static final wsCallback$lambda$2(Le8/l;Le8/l;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$resp"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p2, Lcom/narvii/util/ws/WsMessage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    check-cast p0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/util/ws/WsMessage;

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    .line 20
    .line 21
    iput-object v0, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private final wsCallback2(Le8/l;Le8/l;)Lcom/narvii/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lcom/narvii/util/ws/WsMessage;",
            "+",
            "Lw7/u<",
            "+",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/waitinglist/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/waitinglist/d;-><init>(Le8/l;Le8/l;)V

    .line 6
    return-object v0
.end method

.method private static final wsCallback2$lambda$3(Le8/l;Le8/l;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$resp"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p2, Lcom/narvii/util/ws/WsMessage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    check-cast p0, Lw7/u;

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/util/ws/WsMessage;

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    .line 20
    .line 21
    iput-object v0, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getListeners()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/waitinglist/WaitingListListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/ws/WsError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 2
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/ws/WsMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 17
    .line 18
    const/16 v0, 0x82

    .line 19
    .line 20
    const-string v1, "threadId"

    .line 21
    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x83

    .line 25
    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    .line 31
    .line 32
    filled-new-array {v1}, [Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 50
    .line 51
    check-cast v1, Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 57
    .line 58
    const-string v1, "userProfileList"

    .line 59
    .line 60
    .line 61
    filled-new-array {v1}, [Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    const-class v1, Lcom/narvii/model/User;

    .line 75
    .line 76
    .line 77
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 81
    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 93
    .line 94
    new-instance v1, Lcom/narvii/chat/waitinglist/c;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, p1, v0}, Lcom/narvii/chat/waitinglist/c;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_3
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 104
    .line 105
    .line 106
    filled-new-array {v1}, [Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    iget-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    iget-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 122
    .line 123
    new-instance v0, Lcom/narvii/chat/waitinglist/b;

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p1}, Lcom/narvii/chat/waitinglist/b;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 130
    :cond_4
    :goto_0
    return-void
.end method

.method public final waitListClean(ILjava/lang/String;Le8/l;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/util/ws/WsRequest;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 11
    .line 12
    const/16 v2, 0x84

    .line 13
    .line 14
    iput v2, v1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const-string v3, "ndcId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 27
    .line 28
    iput-object v2, v1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, p3}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Le8/l;Le8/l;)Lcom/narvii/util/Callback;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, v1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 45
    return-void
.end method

.method public final waitListJoin(ILjava/lang/String;Le8/l;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/util/ws/WsRequest;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 11
    .line 12
    const/16 v2, 0x8a

    .line 13
    .line 14
    iput v2, v1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const-string v3, "ndcId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 27
    .line 28
    iput-object v2, v1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoin$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoin$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, p3}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Le8/l;Le8/l;)Lcom/narvii/util/Callback;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, v1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 45
    return-void
.end method

.method public final waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Le8/l;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v1, "uid"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/util/ws/WsRequest;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 16
    .line 17
    const/16 v3, 0x86

    .line 18
    .line 19
    iput v3, v2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    const-string v4, "ndcId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 35
    .line 36
    iput-object v3, v2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 37
    .line 38
    new-instance p3, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback2(Le8/l;Le8/l;)Lcom/narvii/util/Callback;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, v2, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 53
    return-void
.end method

.method public final waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Le8/l;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v1, "uid"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/util/ws/WsRequest;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 16
    .line 17
    const/16 v3, 0x88

    .line 18
    .line 19
    iput v3, v2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    const-string v4, "ndcId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 35
    .line 36
    iput-object v3, v2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 37
    .line 38
    new-instance p3, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinCancel$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinCancel$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Le8/l;Le8/l;)Lcom/narvii/util/Callback;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, v2, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 53
    return-void
.end method
