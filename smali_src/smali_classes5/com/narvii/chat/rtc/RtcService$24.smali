.class Lcom/narvii/chat/rtc/RtcService$24;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$24;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$24;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$24;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$24;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$24;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$24;->call(Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    return-void
.end method
