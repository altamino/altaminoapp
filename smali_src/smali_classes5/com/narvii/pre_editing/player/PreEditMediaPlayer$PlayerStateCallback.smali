.class public interface abstract Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onBufferingEnd()V
.end method

.method public abstract onBufferingStart()V
.end method

.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onPlayPauseStateChanged(Z)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onProgressUpdate(J)V
.end method
