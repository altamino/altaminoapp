.class public interface abstract Lcom/narvii/chat/signalling/SignallingListener;
.super Ljava/lang/Object;
.source "SignallingListener.java"


# virtual methods
.method public abstract onChannelChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
.end method

.method public abstract onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V
.end method

.method public abstract onChannelListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Z)V
.end method

.method public abstract onChannelTypeUpdateSuccess(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
.end method

.method public abstract onError(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V
.end method

.method public abstract onReceiverBusy(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end method

.method public abstract onSignallingPong(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/signalling/ThreadChannelUserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserForceRemoveFromPresenter(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end method

.method public abstract onUserListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingService;",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserRoleChange(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
.end method
