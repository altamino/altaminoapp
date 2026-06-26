.class public interface abstract Lcom/narvii/nvplayer/INVPlayer;
.super Ljava/lang/Object;
.source "INVPlayer.java"


# static fields
.field public static final CACHED_SIZE:J = 0x100000L

.field public static final LOW_RES_CACHED_SIZE:J = 0x7d000L

.field public static final LOW_RES_VIDEO_PREFS_KEY:Ljava/lang/String; = "load_low_res_video"

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "INVPlayer"

.field public static final VIDEO_AUTO_PLAY_PREFS_KEY:Ljava/lang/String; = "video_auto_play"


# virtual methods
.method public abstract addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
.end method

.method public abstract clearVideoSurface()V
.end method

.method public abstract concatenatingQuickSetting(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/nvplayer/NvVideoClip;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlayerState()I
.end method

.method public abstract getPlayingUrl()Ljava/lang/String;
.end method

.method public abstract getPreCachedSize()J
.end method

.method public abstract getTotalDuration()J
.end method

.method public abstract getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;
.end method

.method public abstract getVideoSurface()Landroid/view/Surface;
.end method

.method public abstract isCached(Ljava/lang/String;JJ)Z
.end method

.method public abstract isError()Z
.end method

.method public abstract isLoadLowResVideo()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract lockMute(Z)V
.end method

.method public abstract preload(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
.end method

.method public abstract release()V
.end method

.method public abstract removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract retry()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract seekTo(JZ)V
.end method

.method public abstract seekToWindow(I)V
.end method

.method public abstract setLoop(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setPlayWhenReady(ZZ)V
.end method

.method public abstract setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract size()J
.end method
