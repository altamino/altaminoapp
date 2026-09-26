.class Lcom/narvii/chat/signalling/SignallingService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->sendRemoveFromPresenter(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
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
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$3;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$callback:Lcom/narvii/util/Callback;

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
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$3;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->b(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$3;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$ndcId:I

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$callback:Lcom/narvii/util/Callback;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$callback:Lcom/narvii/util/Callback;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 44
    :cond_2
    :goto_0
    return-void
.end method
