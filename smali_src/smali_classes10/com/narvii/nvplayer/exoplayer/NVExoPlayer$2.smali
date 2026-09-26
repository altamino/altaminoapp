.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->o(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->shouldPauseForPageAboveVideo(I)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->o(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    add-int/2addr v1, v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 51
    :cond_1
    return-void
.end method
