.class public interface abstract Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.super Ljava/lang/Object;
.source "IScenePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/interfaces/IScenePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayingListener"
.end annotation


# virtual methods
.method public abstract onPlayingError(Ljava/lang/Exception;)V
.end method

.method public abstract onPlayingPause()V
.end method

.method public abstract onPlayingProgress(JJ)V
.end method

.method public abstract onPlayingStart()V
.end method

.method public abstract onPlayingStop()V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onSceneChanged(Ljava/lang/String;I)V
.end method

.method public abstract onSceneEnd(Ljava/lang/String;I)V
.end method

.method public abstract onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method
