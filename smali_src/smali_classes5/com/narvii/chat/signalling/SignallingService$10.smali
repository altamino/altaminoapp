.class Lcom/narvii/chat/signalling/SignallingService$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->getThreadUserList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
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
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$10;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$10;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$ndcId:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$threadId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    move-object v0, v1

    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$10;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 29
    .line 30
    iget v2, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$ndcId:I

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$threadId:Ljava/lang/String;

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, p1}, Lcom/narvii/chat/signalling/SignallingService;->respThreadUserList(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/narvii/chat/signalling/SignallingService;->c()Lcom/narvii/util/Tag;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    iput-object v2, p1, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$callback:Lcom/narvii/util/Callback;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 52
    .line 53
    :cond_1
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$10;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 58
    .line 59
    new-instance v2, Lcom/narvii/chat/signalling/SignallingService$10$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/chat/signalling/SignallingService$10$1;-><init>(Lcom/narvii/chat/signalling/SignallingService$10;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$10;->val$callback:Lcom/narvii/util/Callback;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 74
    :cond_3
    :goto_1
    return-void
.end method
