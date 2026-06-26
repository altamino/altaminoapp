.class Lcom/narvii/chat/rtc/RtcService$12;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$mainSig:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$12;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$mainSig:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$12;->this$0:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->access$1402(Lcom/narvii/chat/rtc/RtcService;Z)Z

    .line 1078
    sget-object v0, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    if-ne p1, v0, :cond_0

    .line 1079
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$12;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$mainSig:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->access$300(Lcom/narvii/chat/rtc/RtcService;IZ)V

    .line 1080
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$12;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->muteAllRemoteStream()V

    :cond_0
    return-void
.end method
