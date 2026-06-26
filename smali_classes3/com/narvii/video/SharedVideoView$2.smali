.class Lcom/narvii/video/SharedVideoView$2;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 674
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .line 676
    sget-boolean v0, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    const-string v1, "videoplayer"

    if-eqz v0, :cond_1

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared(), mpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v2}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v2}, Lcom/narvii/video/SharedVideoView;->access$400(Lcom/narvii/video/SharedVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v2}, Lcom/narvii/video/SharedVideoView;->access$200(Lcom/narvii/video/SharedVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$500(Lcom/narvii/video/SharedVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$600(Lcom/narvii/video/SharedVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin play video  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v2}, Lcom/narvii/video/SharedVideoView;->access$700(Lcom/narvii/video/SharedVideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with time spend "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v4}, Lcom/narvii/video/SharedVideoView;->access$800(Lcom/narvii/video/SharedVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/narvii/video/SharedVideoView;->access$302(Lcom/narvii/video/SharedVideoView;I)I

    .line 684
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/SharedVideoView;->access$1102(Lcom/narvii/video/SharedVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/narvii/video/SharedVideoView;->access$1002(Lcom/narvii/video/SharedVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/narvii/video/SharedVideoView;->access$902(Lcom/narvii/video/SharedVideoView;Z)Z

    .line 686
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1200(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1200(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v2}, Lcom/narvii/video/SharedVideoView;->access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/narvii/video/SharedVideoView;->access$002(Lcom/narvii/video/SharedVideoView;I)I

    .line 693
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/video/SharedVideoView;->access$102(Lcom/narvii/video/SharedVideoView;I)I

    .line 695
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1500(Lcom/narvii/video/SharedVideoView;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 697
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-virtual {v0, p1}, Lcom/narvii/video/SharedVideoView;->seekTo(I)V

    .line 699
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$200(Lcom/narvii/video/SharedVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$000(Lcom/narvii/video/SharedVideoView;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$100(Lcom/narvii/video/SharedVideoView;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 701
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$200(Lcom/narvii/video/SharedVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v4}, Lcom/narvii/video/SharedVideoView;->access$000(Lcom/narvii/video/SharedVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v5}, Lcom/narvii/video/SharedVideoView;->access$100(Lcom/narvii/video/SharedVideoView;)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 702
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$500(Lcom/narvii/video/SharedVideoView;)I

    move-result v0

    iget-object v4, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v4}, Lcom/narvii/video/SharedVideoView;->access$000(Lcom/narvii/video/SharedVideoView;)I

    move-result v4

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$600(Lcom/narvii/video/SharedVideoView;)I

    move-result v0

    iget-object v4, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v4}, Lcom/narvii/video/SharedVideoView;->access$100(Lcom/narvii/video/SharedVideoView;)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 706
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$400(Lcom/narvii/video/SharedVideoView;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 707
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-virtual {p1}, Lcom/narvii/video/SharedVideoView;->start()V

    .line 709
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 710
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-virtual {v0}, Lcom/narvii/video/SharedVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    .line 713
    invoke-virtual {p1}, Lcom/narvii/video/SharedVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_9

    .line 714
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 716
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_2

    .line 723
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$400(Lcom/narvii/video/SharedVideoView;)I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 724
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-virtual {p1}, Lcom/narvii/video/SharedVideoView;->start()V

    :cond_8
    :goto_1
    const/4 v3, 0x1

    .line 728
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1, v1}, Lcom/narvii/video/SharedVideoView;->access$1602(Lcom/narvii/video/SharedVideoView;Z)Z

    if-nez v3, :cond_a

    .line 729
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 730
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$2;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    :cond_a
    return-void
.end method
