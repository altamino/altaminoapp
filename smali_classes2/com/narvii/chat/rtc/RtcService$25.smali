.class Lcom/narvii/chat/rtc/RtcService$25;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchChannelStatusChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/LiveChannelChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 2036
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$25;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$25;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 1

    .line 2039
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$25;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-interface {p1, v0}, Lcom/narvii/chat/video/events/LiveChannelChangeListener;->onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2036
    check-cast p1, Lcom/narvii/chat/video/events/LiveChannelChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$25;->call(Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    return-void
.end method
