.class public interface abstract Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.super Ljava/lang/Object;
.source "LiveChannelChangeListener.kt"


# virtual methods
.method public abstract onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
.end method

.method public abstract onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end method

.method public abstract onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation
.end method
