.class Lcom/narvii/video/SharedVideoView$3;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    .line 735
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 737
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$302(Lcom/narvii/video/SharedVideoView;I)I

    .line 738
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$402(Lcom/narvii/video/SharedVideoView;I)I

    .line 739
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 740
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 742
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1800(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 743
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1800(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 745
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 746
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$3;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    :cond_2
    return-void
.end method
