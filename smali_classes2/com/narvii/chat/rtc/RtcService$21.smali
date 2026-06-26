.class Lcom/narvii/chat/rtc/RtcService$21;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchLocalMuteUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1945
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$21;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$21;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V
    .locals 2

    .line 1948
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$21;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$21;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v1}, Lcom/narvii/chat/rtc/RtcService;->access$1900(Lcom/narvii/chat/rtc/RtcService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;->onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1945
    check-cast p1, Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$21;->call(Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    return-void
.end method
