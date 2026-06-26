.class final Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WaitingListService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/waitinglist/WaitingListService;->waitListClean(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
        "Lcom/narvii/chat/signalling/SignallingChannel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaitingListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaitingListService.kt\ncom/narvii/chat/waitinglist/WaitingListService$waitListClean$1\n*L\n1#1,172:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $ndcId:I

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/waitinglist/WaitingListService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->this$0:Lcom/narvii/chat/waitinglist/WaitingListService;

    iput p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->$threadId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->this$0:Lcom/narvii/chat/waitinglist/WaitingListService;

    iget v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->$ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->$threadId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/narvii/chat/waitinglist/WaitingListService;->access$getChannelByThread(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 43
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;->invoke(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    return-object p1
.end method
