.class Lcom/narvii/chat/rtc/RtcService$10$1$1;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService$10$1;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/rtc/RtcService$10$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService$10$1;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 930
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 931
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$1200(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$1100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 932
    :cond_0
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    iget-object v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    check-cast p1, Lcom/narvii/util/ws/WsError;

    iget v2, p1, Lcom/narvii/util/ws/WsError;->code:I

    invoke-static {v1, v0, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->access$200(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    :cond_1
    :goto_0
    return-void
.end method
