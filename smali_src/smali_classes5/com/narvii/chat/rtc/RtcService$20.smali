.class Lcom/narvii/chat/rtc/RtcService$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
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

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$20;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$reason:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v1, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$reason:I

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/LiveChannelChangeListener;->onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/video/events/LiveChannelChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$20;->call(Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    return-void
.end method
