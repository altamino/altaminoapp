.class Lcom/narvii/chat/rtc/RtcService$10$1;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService$10;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/rtc/RtcService$10;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService$10;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 924
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_1

    .line 925
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 926
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 927
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$1200(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    iget v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$channelType:I

    new-instance v3, Lcom/narvii/chat/rtc/RtcService$10$1$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$10$1$1;-><init>(Lcom/narvii/chat/rtc/RtcService$10$1;)V

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadChannelType(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 938
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$1200(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$1100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 940
    :cond_1
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget-object v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    check-cast p1, Lcom/narvii/util/ws/WsError;

    iget v2, p1, Lcom/narvii/util/ws/WsError;->code:I

    invoke-static {v1, v0, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->access$200(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    :cond_2
    :goto_0
    return-void
.end method
