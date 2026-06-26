.class Lcom/narvii/chat/rtc/RtcService$14;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$callback:Lcom/narvii/video/model/ChannelActionCallback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$14;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$14;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5

    .line 1113
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$14;->this$0:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->access$1402(Lcom/narvii/chat/rtc/RtcService;Z)Z

    .line 1114
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$14;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$1600(Lcom/narvii/chat/rtc/RtcService;)V

    .line 1116
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$14;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    if-eqz v0, :cond_0

    .line 1117
    new-instance v3, Lcom/narvii/video/model/ChannelActionResult;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    invoke-interface {v0, v3}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 1120
    :cond_0
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$14;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$900(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1122
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$14;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    if-eqz p1, :cond_1

    .line 1123
    new-instance v0, Lcom/narvii/video/model/ChannelActionResult;

    sget-object v2, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    invoke-direct {v0, v1, v2}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    invoke-interface {p1, v0}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
