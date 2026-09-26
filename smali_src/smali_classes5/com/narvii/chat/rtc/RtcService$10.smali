.class Lcom/narvii/chat/rtc/RtcService$10;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$role:I

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$channelType:I

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
    instance-of p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$10;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->v(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$ndcId:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$threadId:Ljava/lang/String;

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/chat/rtc/RtcService$10;->val$role:I

    .line 17
    .line 18
    new-instance v3, Lcom/narvii/chat/rtc/RtcService$10$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/narvii/chat/rtc/RtcService$10$1;-><init>(Lcom/narvii/chat/rtc/RtcService$10;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/chat/signalling/SignallingService;->updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 25
    :cond_0
    return-void
.end method
