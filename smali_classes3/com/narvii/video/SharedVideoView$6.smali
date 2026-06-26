.class Lcom/narvii/video/SharedVideoView$6;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 789
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 791
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$302(Lcom/narvii/video/SharedVideoView;I)I

    .line 792
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$402(Lcom/narvii/video/SharedVideoView;I)I

    .line 793
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 794
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 798
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$2200(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 799
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$2200(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 802
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 803
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/video/SharedVideoView$6;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p2}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
