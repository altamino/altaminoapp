.class public final synthetic Lcom/narvii/chat/rtc/-$$Lambda$RtcService$eJVfsh8jsAX4ojSu6JIg9eJ69ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$eJVfsh8jsAX4ojSu6JIg9eJ69ks;->f$0:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$eJVfsh8jsAX4ojSu6JIg9eJ69ks;->f$0:Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$dispatchWaitingListApprove$4(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
