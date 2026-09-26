.class Lcom/narvii/chat/signalling/SignallingService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/signalling/SignallingService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$joinRole:I

.field final synthetic val$ndcId:I

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$4;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$joinRole:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
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
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$4;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$ndcId:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$threadId:Ljava/lang/String;

    .line 11
    .line 12
    iget v3, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$joinRole:I

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/narvii/chat/signalling/SignallingService;->respUpdateJoinRole(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$4;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->b(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$callback:Lcom/narvii/util/Callback;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$4;->val$callback:Lcom/narvii/util/Callback;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 46
    :cond_2
    :goto_0
    return-void
.end method
