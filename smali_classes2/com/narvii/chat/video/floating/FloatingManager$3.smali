.class Lcom/narvii/chat/video/floating/FloatingManager$3;
.super Ljava/lang/Object;
.source "FloatingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/floating/FloatingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/floating/FloatingManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/floating/FloatingManager;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    iget-object v0, v0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    iget-object v0, v0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    iget-object v2, v2, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
