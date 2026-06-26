.class Lcom/narvii/chat/rtc/RtcService$10;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->joinLiveChannel(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$channelType:I

.field final synthetic val$ndcId:I

.field final synthetic val$role:I

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;II)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$role:I

    iput p5, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$channelType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 920
    instance-of p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p1, :cond_0

    .line 921
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$1200(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$role:I

    new-instance v3, Lcom/narvii/chat/rtc/RtcService$10$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$10$1;-><init>(Lcom/narvii/chat/rtc/RtcService$10;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
