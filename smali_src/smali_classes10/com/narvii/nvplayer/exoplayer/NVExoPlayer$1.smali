.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->val$windowIndex:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->o(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->val$windowIndex:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->t()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lt v1, v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->s(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->w(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->o(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->val$windowIndex:I

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 59
    return-void
.end method
