.class Lcom/narvii/chat/signalling/SignallingService$5;
.super Ljava/lang/Object;
.source "SignallingService.java"

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

    .line 305
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iput p2, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$threadId:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$channelType:I

    iput-object p5, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 308
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$5;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$threadId:Ljava/lang/String;

    iget v3, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$channelType:I

    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/narvii/chat/signalling/SignallingService;->respUpdateChannelType(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/narvii/chat/signalling/SignallingService;->access$000()Lcom/narvii/util/Tag;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    invoke-static {v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->access$100(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$5;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_2

    .line 321
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
