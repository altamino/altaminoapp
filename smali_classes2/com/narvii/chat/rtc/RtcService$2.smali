.class Lcom/narvii/chat/rtc/RtcService$2;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchJoinAgoraSuccessed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$2;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$2;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$2;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;->onChannelStarted(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$2;->call(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V

    return-void
.end method
