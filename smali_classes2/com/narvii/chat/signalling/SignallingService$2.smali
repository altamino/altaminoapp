.class Lcom/narvii/chat/signalling/SignallingService$2;
.super Ljava/lang/Object;
.source "SignallingService.java"

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

    .line 144
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$threadId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 147
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$threadId:Ljava/lang/String;

    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/signalling/SignallingService;->respJoin(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/narvii/chat/signalling/SignallingService;->access$000()Lcom/narvii/util/Tag;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    invoke-static {v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->access$100(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    move-result-object p1

    .line 151
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 153
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 159
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$2$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$2$1;-><init>(Lcom/narvii/chat/signalling/SignallingService$2;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 165
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$2;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 168
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
