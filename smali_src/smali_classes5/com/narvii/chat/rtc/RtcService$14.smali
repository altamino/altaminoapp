.class Lcom/narvii/chat/rtc/RtcService$14;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$14;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$14;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->renewToken(Ljava/lang/String;)I

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const-string p1, "RtcService"

    .line 29
    .line 30
    const-string v0, "renew agora token error"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void
.end method
