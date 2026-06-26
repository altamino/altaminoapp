.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;
.super Ljava/lang/Object;
.source "NVExoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->onPlayerStateChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$200(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->shouldPauseForPageAboveVideo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$200(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V

    .line 494
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {v0, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method
