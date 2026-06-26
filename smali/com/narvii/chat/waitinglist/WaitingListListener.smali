.class public interface abstract Lcom/narvii/chat/waitinglist/WaitingListListener;
.super Ljava/lang/Object;
.source "WaitingListListener.java"


# virtual methods
.method public abstract onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end method

.method public abstract onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation
.end method
