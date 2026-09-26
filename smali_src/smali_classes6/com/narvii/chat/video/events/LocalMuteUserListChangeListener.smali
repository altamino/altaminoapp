.class public interface abstract Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
