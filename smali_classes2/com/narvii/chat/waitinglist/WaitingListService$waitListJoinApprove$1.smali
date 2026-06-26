.class final Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WaitingListService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/waitinglist/WaitingListService;->waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/narvii/util/ws/WsMessage;",
        "Lkotlin/Pair<",
        "+",
        "Lcom/narvii/chat/signalling/SignallingChannel;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $ndcId:I

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/waitinglist/WaitingListService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->this$0:Lcom/narvii/chat/waitinglist/WaitingListService;

    iput p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->$threadId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->invoke(Lcom/narvii/util/ws/WsMessage;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/narvii/util/ws/WsMessage;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/ws/WsMessage;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->this$0:Lcom/narvii/chat/waitinglist/WaitingListService;

    iget v1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->$ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;->$threadId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/waitinglist/WaitingListService;->access$getChannelByThread(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 61
    iget-object p1, p1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isOnline"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
