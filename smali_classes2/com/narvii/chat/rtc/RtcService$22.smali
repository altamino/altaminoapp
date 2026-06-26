.class Lcom/narvii/chat/rtc/RtcService$22;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchLocalUserStatusChange(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$event:I

.field final synthetic val$user:Lcom/narvii/chat/signalling/ChannelUser;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 1958
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$22;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$22;->val$event:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$22;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$22;->val$user:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V
    .locals 3

    .line 1961
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$22;->val$event:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$22;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$22;->val$user:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;->onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1958
    check-cast p1, Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$22;->call(Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    return-void
.end method
