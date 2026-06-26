.class Lcom/narvii/chat/signalling/SignallingService$3;
.super Ljava/lang/Object;
.source "SignallingService.java"

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

    .line 199
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$3;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$threadId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 202
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$3;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    invoke-static {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->access$100(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$3;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    .line 207
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$3;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
