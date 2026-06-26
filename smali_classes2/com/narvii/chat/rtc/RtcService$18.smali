.class Lcom/narvii/chat/rtc/RtcService$18;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->onRequestToken()V
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

    .line 1418
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$18;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1421
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$18;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->renewToken(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "RtcService"

    const-string v0, "renew agora token error"

    .line 1424
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
