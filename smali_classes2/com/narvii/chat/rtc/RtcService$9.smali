.class Lcom/narvii/chat/rtc/RtcService$9;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$ndcId:I

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$9;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$9;->val$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$9;->val$threadId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 897
    instance-of p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p1, :cond_0

    .line 898
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$9;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$1200(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingService;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$9;->val$ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$9;->val$threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$9;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->access$1100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/util/Callback;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingService;->getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
