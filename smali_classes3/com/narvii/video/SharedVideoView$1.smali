.class Lcom/narvii/video/SharedVideoView$1;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 663
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 665
    iget-object p2, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/narvii/video/SharedVideoView;->access$002(Lcom/narvii/video/SharedVideoView;I)I

    .line 666
    iget-object p2, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/narvii/video/SharedVideoView;->access$102(Lcom/narvii/video/SharedVideoView;I)I

    .line 667
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$200(Lcom/narvii/video/SharedVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$000(Lcom/narvii/video/SharedVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$100(Lcom/narvii/video/SharedVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 668
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$200(Lcom/narvii/video/SharedVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p2}, Lcom/narvii/video/SharedVideoView;->access$000(Lcom/narvii/video/SharedVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p3}, Lcom/narvii/video/SharedVideoView;->access$100(Lcom/narvii/video/SharedVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 669
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$1;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method
