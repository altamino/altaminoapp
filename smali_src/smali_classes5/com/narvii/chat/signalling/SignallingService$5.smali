.class Lcom/narvii/chat/signalling/SignallingService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->updateThreadChannelType(ILjava/lang/String;ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/signalling/SignallingService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$channelType:I

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
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$channelType:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

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
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$5;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$ndcId:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$threadId:Ljava/lang/String;

    .line 11
    .line 12
    iget v3, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$channelType:I

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/narvii/chat/signalling/SignallingService;->respUpdateChannelType(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/chat/signalling/SignallingService;->c()Lcom/narvii/util/Tag;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, p1, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->b(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 56
    :cond_2
    :goto_0
    return-void
.end method
