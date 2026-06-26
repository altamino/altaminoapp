.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;
.super Ljava/lang/Object;
.source "NVExoPlayer.java"

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

    .line 664
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$ytvUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 677
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$ytvUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$500(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$300(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayError(I)V

    .line 681
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 682
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object p1

    new-instance p2, Lcom/narvii/nvplayer/NVVideoException;

    invoke-direct {p2, p3}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    :cond_1
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 1

    .line 667
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$ytvUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$500(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 670
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$602(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Lcom/narvii/youtube/YoutubeVideoList;)Lcom/narvii/youtube/YoutubeVideoList;

    .line 671
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 672
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$context:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$700(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->val$surface:Landroid/view/Surface;

    invoke-static {p2, p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$800(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V

    return-void
.end method
