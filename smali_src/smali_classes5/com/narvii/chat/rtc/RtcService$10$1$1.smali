.class Lcom/narvii/chat/rtc/RtcService$10$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->v(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 19
    .line 20
    iget v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    .line 21
    .line 22
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->o(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1$1;->this$2:Lcom/narvii/chat/rtc/RtcService$10$1;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 47
    .line 48
    iget v2, p1, Lcom/narvii/util/ws/WsError;->code:I

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v0, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->x(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method
