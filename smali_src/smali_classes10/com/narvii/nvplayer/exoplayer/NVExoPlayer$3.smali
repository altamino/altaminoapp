.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$ytvUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;Landroid/content/Context;Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$ytvUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$context:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$surface:Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$ytvUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->A(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->s(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;

    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayError(I)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/nvplayer/NVVideoException;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p3}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 44
    :cond_1
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$ytvUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->A(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->y(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Lcom/narvii/youtube/YoutubeVideoList;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$context:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->z(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;->val$surface:Landroid/view/Surface;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->B(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V

    .line 34
    return-void
.end method
