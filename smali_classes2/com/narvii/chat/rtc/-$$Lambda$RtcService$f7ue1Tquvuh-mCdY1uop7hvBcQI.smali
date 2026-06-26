.class public final synthetic Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/signalling/SignallingChannel;

.field private final synthetic f$1:Ljava/util/Collection;

.field private final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;->f$0:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p2, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;->f$1:Ljava/util/Collection;

    iput-object p3, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;->f$0:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;->f$1:Ljava/util/Collection;

    iget-object v2, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI;->f$2:Ljava/util/Collection;

    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$dispatchWaitingListChanged$5(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
