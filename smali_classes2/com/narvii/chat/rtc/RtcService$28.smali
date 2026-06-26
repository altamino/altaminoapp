.class Lcom/narvii/chat/rtc/RtcService$28;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserWrapperChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 2079
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$28;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$28;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$28;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V
    .locals 2

    .line 2082
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$28;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$28;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2079
    check-cast p1, Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$28;->call(Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    return-void
.end method
