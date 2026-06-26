.class Lcom/narvii/video/SharedVideoView$4;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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

    .line 751
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5

    const-wide/16 v0, 0x32

    const/4 v2, 0x1

    const/16 v3, 0x2be

    if-ne p2, v3, :cond_0

    .line 753
    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$1900(Lcom/narvii/video/SharedVideoView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 754
    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$2000(Lcom/narvii/video/SharedVideoView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x2bd

    if-ne p2, v3, :cond_1

    .line 756
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v1}, Lcom/narvii/video/SharedVideoView;->access$2000(Lcom/narvii/video/SharedVideoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$1900(Lcom/narvii/video/SharedVideoView;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 758
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0, v2}, Lcom/narvii/video/SharedVideoView;->access$1902(Lcom/narvii/video/SharedVideoView;Z)Z

    .line 759
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v1}, Lcom/narvii/video/SharedVideoView;->access$300(Lcom/narvii/video/SharedVideoView;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    .line 762
    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$1900(Lcom/narvii/video/SharedVideoView;)Z

    move-result v3

    if-nez v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 763
    sget-object v3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v4}, Lcom/narvii/video/SharedVideoView;->access$2000(Lcom/narvii/video/SharedVideoView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 764
    iget-object v3, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v3}, Lcom/narvii/video/SharedVideoView;->access$2000(Lcom/narvii/video/SharedVideoView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 766
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$2100(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 767
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$4;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0}, Lcom/narvii/video/SharedVideoView;->access$2100(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_4
    return v2
.end method
