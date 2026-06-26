.class final Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$1;
.super Ljava/lang/Object;
.source "WaitingListService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/waitinglist/WaitingListService;->onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/waitinglist/WaitingListListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $c:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$1;->$c:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$1;->$c:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-interface {p1, v0}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$1;->call(Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
