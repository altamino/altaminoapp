.class final Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;
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

.field final synthetic $oldlist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;->$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;->$oldlist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/waitinglist/WaitingListListener;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;->$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;->$oldlist:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/waitinglist/WaitingListListener;->onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;->call(Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
