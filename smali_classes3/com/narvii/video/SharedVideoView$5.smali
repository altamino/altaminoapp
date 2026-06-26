.class Lcom/narvii/video/SharedVideoView$5;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/SharedVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SharedVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/video/SharedVideoView;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1900(Lcom/narvii/video/SharedVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 777
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 778
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/SharedVideoView;->access$1902(Lcom/narvii/video/SharedVideoView;Z)Z

    .line 779
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/SharedVideoView$5;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v1}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x32

    .line 783
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
