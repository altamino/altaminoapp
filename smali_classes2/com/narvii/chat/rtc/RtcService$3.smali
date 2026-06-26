.class Lcom/narvii/chat/rtc/RtcService$3;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$callback:Lcom/narvii/video/model/ChannelActionCallback;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$enableLocalVideo:Z

.field final synthetic val$muteVideo:Z

.field final synthetic val$tooManyPresenterResult:Lcom/narvii/video/model/ChannelActionResult;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/video/model/ChannelActionCallback;Lcom/narvii/video/model/ChannelActionResult;ZZ)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$tooManyPresenterResult:Lcom/narvii/video/model/ChannelActionResult;

    iput-boolean p5, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$muteVideo:Z

    iput-boolean p6, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$enableLocalVideo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5

    .line 299
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    if-eqz v0, :cond_1

    .line 300
    check-cast p1, Lcom/narvii/util/ws/WsError;

    invoke-virtual {p1}, Lcom/narvii/util/ws/WsError;->code()I

    move-result p1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    const/16 v0, 0x74

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_5

    .line 302
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const v1, 0x7f0f01ca

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/narvii/util/ws/WsError;

    invoke-direct {v1, p1, v0}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v0, v2, p1, v1}, Lcom/narvii/chat/rtc/RtcService;->access$200(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    .line 305
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    if-eqz p1, :cond_5

    .line 306
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$tooManyPresenterResult:Lcom/narvii/video/model/ChannelActionResult;

    invoke-interface {p1, v0}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    goto :goto_1

    .line 309
    :cond_1
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_5

    .line 310
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 311
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$muteVideo:Z

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0, v3, v1}, Lcom/narvii/chat/rtc/RtcService;->access$300(Lcom/narvii/chat/rtc/RtcService;IZ)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    .line 315
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0, v3}, Lcom/narvii/chat/rtc/RtcService;->access$400(Lcom/narvii/chat/rtc/RtcService;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    iget-boolean v3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$enableLocalVideo:Z

    iget-boolean v4, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$muteVideo:Z

    invoke-virtual {v0, v3, v4}, Lcom/narvii/chat/video/RtcChatManager;->requestToBeBroadcast(ZZ)V

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    if-eqz v0, :cond_5

    .line 322
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne p1, v2, :cond_4

    const/4 v1, 0x1

    .line 323
    :cond_4
    new-instance p1, Lcom/narvii/video/model/ChannelActionResult;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 324
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    invoke-interface {v0, p1}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method
