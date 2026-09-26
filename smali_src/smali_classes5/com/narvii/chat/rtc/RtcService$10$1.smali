.class Lcom/narvii/chat/rtc/RtcService$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->v(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 22
    .line 23
    iget v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    .line 24
    .line 25
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 26
    .line 27
    iget v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$channelType:I

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/chat/rtc/RtcService$10$1$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$10$1$1;-><init>(Lcom/narvii/chat/rtc/RtcService$10$1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadChannelType(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->v(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 47
    .line 48
    iget v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    .line 49
    .line 50
    iget-object v2, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->o(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$10$1;->this$1:Lcom/narvii/chat/rtc/RtcService$10;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 71
    .line 72
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 73
    .line 74
    iget v2, p1, Lcom/narvii/util/ws/WsError;->code:I

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->x(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    .line 78
    :cond_2
    :goto_0
    return-void
.end method
