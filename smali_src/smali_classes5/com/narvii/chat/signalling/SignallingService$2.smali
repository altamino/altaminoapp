.class Lcom/narvii/chat/signalling/SignallingService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V
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
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$callback:Lcom/narvii/util/Callback;

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
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$ndcId:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$threadId:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/signalling/SignallingService;->respJoin(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

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
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->b(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$callback:Lcom/narvii/util/Callback;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$2$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$2$1;-><init>(Lcom/narvii/chat/signalling/SignallingService$2;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$callback:Lcom/narvii/util/Callback;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 69
    :cond_3
    :goto_1
    return-void
.end method
