.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;
.super Ljava/lang/Object;
.source "NVExoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field final synthetic val$windowIndex:I


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;I)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iput p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->val$windowIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$200(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->val$windowIndex:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$300(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->val$windowIndex:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V

    .line 273
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$400(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 274
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$200(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->val$windowIndex:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    return-void
.end method
