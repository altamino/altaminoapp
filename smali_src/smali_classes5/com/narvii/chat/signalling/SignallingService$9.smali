.class Lcom/narvii/chat/signalling/SignallingService$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/signalling/SignallingService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$ndcId:I

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$9;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$9;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$ndcId:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$threadId:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/signalling/SignallingService;->respLeave(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/chat/signalling/SignallingService;->c()Lcom/narvii/util/Tag;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iput-object v1, p1, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$callback:Lcom/narvii/util/Callback;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$9;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$9$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$9$1;-><init>(Lcom/narvii/chat/signalling/SignallingService$9;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$9;->val$callback:Lcom/narvii/util/Callback;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 50
    :cond_2
    :goto_0
    return-void
.end method
