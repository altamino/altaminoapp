.class public interface abstract Lcom/narvii/video/interfaces/IEditorAudioPlayer;
.super Ljava/lang/Object;
.source "IEditorAudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;,
        Lcom/narvii/video/interfaces/IEditorAudioPlayer$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
.end method

.method public abstract getCurrentPositionInClip()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
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
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setConcatenatingDataSource(Ljava/util/List;Z)V
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
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
