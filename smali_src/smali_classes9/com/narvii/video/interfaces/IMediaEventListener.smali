.class public interface abstract Lcom/narvii/video/interfaces/IMediaEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IMediaEventListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onAudioTrackAllPrepared()V
.end method

.method public abstract onDoNextVideoSeek()V
.end method

.method public abstract onVideoCompleted()V
.end method

.method public abstract onVideoError(Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onVideoPrepared()V
.end method

.method public abstract onVideoWindowIndexChanged(IZ)V
.end method
