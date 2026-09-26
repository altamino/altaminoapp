.class Lcom/narvii/chat/video/floating/FloatingManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager$3;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
