.class public interface abstract Lcom/narvii/video/interfaces/IMediaEventListener;
.super Ljava/lang/Object;
.source "IMediaEventListener.kt"


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
.end method

.method public abstract onVideoPrepared()V
.end method

.method public abstract onVideoWindowIndexChanged(IZ)V
.end method
