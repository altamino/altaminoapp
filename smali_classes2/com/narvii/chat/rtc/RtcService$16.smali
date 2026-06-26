.class Lcom/narvii/chat/rtc/RtcService$16;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->onExtraCallback(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$16;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 8

    .line 1382
    instance-of v0, p1, Lcom/narvii/video/model/ChannelActionResult;

    if-eqz v0, :cond_1

    .line 1383
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    iget-boolean p1, p1, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    if-eqz p1, :cond_0

    .line 1384
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$16;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 1385
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$16;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iget v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    const/4 v6, 0x0

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$1700(Lcom/narvii/chat/rtc/RtcService;)Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/narvii/chat/rtc/RtcService;->access$1800(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    goto :goto_0

    :cond_0
    const-string p1, "RtcService"

    const-string v0, "join agora channel error"

    .line 1387
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
