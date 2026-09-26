.class public interface abstract Lcom/narvii/video/interfaces/IEditorAudioPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IEditorAudioPlayer$DefaultImpls;,
        Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;
    }
.end annotation


# virtual methods
.method public abstract addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
    .param p1    # Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentPositionInClip()Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCurrentPositionInTimeLine()J
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract hasPrepared()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract removeAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
    .param p1    # Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setConcatenatingDataSource(Ljava/util/List;Z)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setVolume(F)V
    .param p1    # F
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
